

#include "tick.h"
#include "../helper/macros.h"
#include "../config.h"

#include <avr/interrupt.h>
#include <util/atomic.h>


void system_clock_init(void);
void stepper_clock_init(void);

/* ------------------------------------------------------------------
 * System clock tick
 * ------------------------------------------------------------------ */
ISR(TICK_SYSTEM_VECT) {

}

/* ------------------------------------------------------------------
 * Initialise the system ticking
 * ------------------------------------------------------------------ */
void tick_init(void) {
	// set up the timer counter control register
	system_clock_init();
	stepper_clock_init();
}

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
void system_clock_init(void) {

	TICK_SYSTEM_TCCR |= (1 << CS02) | (1 << CS00);		// prescale 1024
	TIMSK0 |= (1 << TOIE0);								// overflow interrupt
	TCNT0 = 0;



	// start an atomic operation
	//ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
	//{
		// Enable the System Clock
	//	TICK_TIMER |= MASK(TICK_SYSTEM_REG);
	//}
}

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
void stepper_clock_init(void) {

}
