
#include "config.h"
#include "helper/macros.h"

#include "hardware/mosfet.h"
#include "hardware/steppers.h"
#include "hardware/tick.h"
#include "hardware/uart.h"

#include <avr/interrupt.h>
#include <stdio.h>



/* ------------------------------------------------------------------
 * Entry Point
 * ------------------------------------------------------------------ */
int main(void) {

	uint32_t i = 0;
	char buffer[64];
	uint8_t c;

	mosfets_init();
	uart_init();

	//steppers_init();
	//tick_init();


	sei();

	// // turn on global interrupts
	uart_tx_write_str("START\r\n");
	uart_tx_write_str("Echo back server running\r\n");


	while(1) {

		uart_tx_push('\r');
		uart_tx_push('\n');

		uart_tx_write_str("Add Text:\r\n");
		_delay_ms(4000);


		uart_tx_write_str("Text:\r\n");

		c = uart_rx_pop();
		while(c != 0x0) {
			uart_tx_push(c);
		}
		uart_tx_write_str("\r\n");

	}
}
