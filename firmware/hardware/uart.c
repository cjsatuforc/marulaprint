
#include "uart.h"
#include "../config.h"
#include "../helper/macros.h"
#include "../helper/ring.h"

#include "mosfet.h"

#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/atomic.h>

#define BAUD UART_BAUD_RATE

#include <util/setbaud.h>

/*
20 Mhz

Bit Rate  UBRR  % of error
-------   ------  ----------
300     4166  0.0
600     2082  0.0
1200    1041  0.0
2400    520   0.0
4800    259   0.2
9600    129   0.2
14400   86    0.2
19200   64    0.2
28800   42    0.9
38400   32    1.4
57600   21    1.4
76800   15    1.7
115200    10    1.4
230400    4   7.8


UBRR=((f_clk/(BaudRate*16))-1)

*/

//#define BAUD_RATE_PRESCALE   (((F_CPU/(UART_BAUD_RATE * 16UL))) - 1)
#define BAUD UART_BAUD_RATE

#define RX_BUFFER_LENGTH 64
#define TX_BUFFER_LENGTH 64

ring_t rx;
ring_t tx;

uint8_t rxbuffer[RX_BUFFER_LENGTH];
uint8_t txbuffer[TX_BUFFER_LENGTH];

volatile uint8_t tx_ready_flag;
volatile uint8_t rx_read_flag;

volatile uint8_t id = -1;


volatile char led = -1;


/* ------------------------------------------------------------------
 * Initialise the UART
 * ------------------------------------------------------------------ */
void uart_init() {
	INTERRUPTS_OFF();

	// setup ring buffers
	ring_init(&rx, rxbuffer, RX_BUFFER_LENGTH);
	ring_init(&tx, txbuffer, TX_BUFFER_LENGTH);

	// baud rate
	UART_BAUD_RATE_LOW 	= UBRRL_VALUE;
	UART_BAUD_RATE_HIGH = UBRRH_VALUE;

	// double speed?
#ifdef UART_DOUBLE_SPEED
	UART_CONTROL_STATUS_REG_A |= MASK(U2X0);
#else
	UART_CONTROL_STATUS_REG_A &= ~(MASK(U2X0));
#endif

	// mode: async 8N1
	UART_CONTROL_STATUS_REG_C = MASK(UART_CHARACTER_SIZE_0) | MASK(UART_CHARACTER_SIZE_1);

	// enable TX/RX
	UART_CONTROL_STATUS_REG_B = MASK(UART_ENABLE_TRANSMITTER) | MASK(UART_ENABLE_RECEIVER);

	// enable data register empty interrupt
	UART_CONTROL_STATUS_REG_B |= MASK(UART_DATA_REGISTER_EMPTY_INTERRUPT_ENABLE);

	// enable RX complete interrupt
	UART_CONTROL_STATUS_REG_B |= MASK(UART_RECEIVE_COMPLETE);

	INTERRUPTS_ON();
}

/* ------------------------------------------------------------------
 * Data register is empty. Send next char or disable interrupt.
 * ------------------------------------------------------------------ */
ISR(UART_TX_DATA_REG_EMPTY) {
	uint8_t data = ring_pop(&tx);
	if(data != 0x0) {
		UART_DATA_REG = data;
	} else {
		UART_CONTROL_STATUS_REG_B &= ~(MASK(UART_DATA_REGISTER_EMPTY_INTERRUPT_ENABLE));
	}
}

/* ------------------------------------------------------------------
 * Receive a character on the UART
 * ------------------------------------------------------------------ */
ISR(UART_RX_COMPLETE_VECT) {
	uint8_t c = UDR0;
	ring_push(&rx, c);
}


/* ------------------------------------------------------------------
 * Return the lenght of the rx buffer
 * ------------------------------------------------------------------ */
uint8_t uart_rx_len() {
	return rx.count;
}

/* ------------------------------------------------------------------
 * Pop a character off the rx buffer
 * ------------------------------------------------------------------ */
uint8_t uart_rx_pop() {
	return ring_pop(&rx);
}

/* ------------------------------------------------------------------
 * Peek at the rx buffer
 * ------------------------------------------------------------------ */
uint8_t uart_rx_peek(uint8_t *buffer, uint8_t len) {
	return ring_peek(&rx,buffer,len);
}

/* ------------------------------------------------------------------
 * Peek at the rx buffer head
 * ------------------------------------------------------------------ */
uint8_t uart_rx_peek_head() {
	return ring_peek_head(&rx);
}

/* ------------------------------------------------------------------
 * Peek at the rx buffer tail
 * ------------------------------------------------------------------ */
uint8_t uart_rx_peek_tail() {
	return ring_peek_tail(&rx);
}

/* ------------------------------------------------------------------
 * Push a character onto the tx buffer
 * ------------------------------------------------------------------ */
void uart_tx_push(uint8_t data) {
	ring_push(&tx, data);
	UART_CONTROL_STATUS_REG_B |= MASK(UDRIE0);
}

/* ------------------------------------------------------------------
 * Push data onto the tx buffer
 * ------------------------------------------------------------------ */
void uart_tx_write(void *data, uint8_t len) {
	uint8_t i;
	uint8_t *ptr = (uint8_t*)data;
	for(i=0;i<len;i++) {
		uart_tx_push(*ptr++);
	}
}

/* ------------------------------------------------------------------
 * Push a null terminated string onto the tx buffer
 * ------------------------------------------------------------------ */
void uart_tx_write_str(char *data) {
	while(*data != 0x0) {
		uart_tx_push(*data++);
	}
}

/* ------------------------------------------------------------------
 * Drop the content of the tx buffer
 * ------------------------------------------------------------------ */
void uart_tx_clear() {
	ring_clear(&tx);
}

/* ------------------------------------------------------------------
 * Drop the content of the rx buffer
 * ------------------------------------------------------------------ */
void uart_rx_clear() {
	ring_clear(&rx);
}
