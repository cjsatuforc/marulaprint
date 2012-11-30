

#include <avr/interrupt.h>
#include <util/delay.h>
#include "mosfet.h"

ISR(BADISR_vect) {
	cli();

	uint8_t i;

	mosfet_off(0);
	mosfet_off(1);
	mosfet_off(2);
	mosfet_off(3);


	while(1) {
	 for(i=0;i<4;i++) {
		 mosfet_on(i);
		 _delay_ms(200);
	 }

	 for(i=3;i>=0;i--) {
		 mosfet_off(i);
		 _delay_ms(200);
	 }



	}
}
