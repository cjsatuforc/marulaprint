/*
 * Each distinct hardware platform has its own config.h. This is config.h
 * for the Marulaprint Rev 1 hardware platform
 */

#ifndef CONFIG_H
#define CONFIG_H

#include <avr/io.h>
#define F_CPU 											20000000UL			// Frequency of crystal - must define here
#include <util/delay.h>
#include "helper/macros.h"

// ---------- TIMERS ----------
#define TICK_TIMER 										TIMSK0				// which timer is used for timing
#define TICK_SYSTEM_PRESCALE							1024
#define TICK_STEP_PRESCALE								1024
#define TICK_SYSTEM_TCCR								TCCR0B
#define TICK_STEP_TCCR									TCCR0A
#define TICK_SYSTEM_REG									OCIE0B				// which register is system clock derived from
#define TICK_STEP_REG									OCIE0A				// which register is step clock derived from
#define TICK_SYSTEM_VECT								TIMER0_COMPB_vect	// interrupt vector for the system tick
#define TICK_STEP_VECT									TIMER0_COMPA_vect	// interrupt vector for the step tick

// ---------- MOSFETs ------------
#define MOSFET0											4
#define MOSFET0_PORT_REG								PORTD
#define MOSFET0_DATA_DIRECTION_REG						DDRD

#define MOSFET1											5
#define MOSFET1_PORT_REG								PORTD
#define MOSFET1_DATA_DIREC/home/guy/workspaceTION_REG						DDRD

#define MOSFET2											6
#define MOSFET2_PORT_REG								PORTD
#define MOSFET2_DATA_DIRECTION_REG						DDRD

#define MOSFET3											7
#define MOSFET3_PORT_REG								PORTD
#define MOSFET3_DATA_DIRECTION_REG						DDRD

// ------ HEATERS (mosfet alias) --------
#define FAN												0
#define HOTBED											1
#define HOTEND1											2
#define HOTEND2											3


// ------------ UART -----------
#define UART_BAUD_RATE			   						38400 //9600 //38400 //115200
//#define UART_DOUBLE_SPEED
#define UART_TX_COMPLETE_VECT							USART0_TX_vect
#define UART_TX_DATA_REG_EMPTY							USART0_UDRE_vect
#define UART_RX_COMPLETE_VECT							USART0_RX_vect

// Registers
#define UART_CONTROL_STATUS_REG_A						UCSR0A
#define UART_CONTROL_STATUS_REG_B						UCSR0B
#define UART_CONTROL_STATUS_REG_C						UCSR0C
#define UART_BAUD_RATE_HIGH								UBRR0H
#define UART_BAUD_RATE_LOW								UBRR0L

// Bits
#define UART_ENABLE_TRANSMITTER							TXEN0
#define UART_ENABLE_RECEIVER							RXEN0
#define UART_READY_TO_TRANSMIT							UDRE0
#define UART_TRANSMIT_COMPLETE							TXC0
#define UART_RECEIVE_COMPLETE							RXC0
#define UART_DATA_REG									UDR0
#define UART_STOP_BIT_SELECT							USBS0

#define UART_CHARACTER_SIZE_0 							UCSZ00
#define UART_CHARACTER_SIZE_1 							UCSZ01
#define UART_CHARACTER_SIZE_2 							UCSZ02
#define UART_MODE_SELECT_0 								UMSEL00
#define UART_MODE_SELECT_1								UMSEL01
//#define UART_DOUBLE_SPEED 								U2X0
#define UART_FRAME_ERROR 								FE0
#define UART_DATA_OVER_RUN 								DOR0
#define UART_PARITY_ERROR 								UPE0
#define UART_PARITY_MODE_0 								UPM00
#define UART_PARITY_MODE_1 								UPM01
#define UART_MULTI_PROCESSOR_COMMUNICATION_MODE 		MPCM0
#define UART_TX_COMPLETE_INTERRUPT_ENABLE 				TXCIE0
#define UART_RX_COMPLETE_INTERRUPT_ENABLE 				RXCIE0
#define UART_DATA_REGISTER_EMPTY_INTERRUPT_ENABLE 		UDRIE0
#define UART_RX_DATA_BIT_8 								RXB80
#define UART_TX_DATA_BIT_8 								TXB80


// ------------ MOTORS -----------

// ------------ ADC -----------
#define ADC0											0
#define ADC0_PORT_REG									PORTA
#define ADC_MUX 										ADMUX

/*
 * PRR PRR0  			-- clear adc bit in power reduction register
 * ADCSRA ADCSRB		-- set adc frequency
 * DIDR0 DIDR1			-- start first conversion leave rest to ISR
 *
 */

#define x

#define ADC1											1
#define ADC1_PORT_REG									PORTA

#define ADC2											2
#define ADC1_PORT_REG									PORTA



#endif
