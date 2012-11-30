
#include "mosfet.h"
#include "../config.h"
#include "../helper/macros.h"

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
void mosfets_init(void) {

    // make MOSFET pins output
	MOSFET0_DATA_DIRECTION_REG |= ( 1U << MOSFET0);
	MOSFET1_DATA_DIRECTION_REG |= ( 1U << MOSFET1);
	MOSFET2_DATA_DIRECTION_REG |= ( 1U << MOSFET2);
	MOSFET3_DATA_DIRECTION_REG |= ( 1U << MOSFET3);

	// turn off all MOSFETs
	MOSFET0_PORT_REG &= ~(1U << MOSFET0);
	MOSFET1_PORT_REG &= ~(1U << MOSFET1);
	MOSFET2_PORT_REG &= ~(1U << MOSFET2);
	MOSFET3_PORT_REG &= ~(1U << MOSFET3);

}

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
void mosfet_on(uint8_t no) {
	switch (no) {
		case 0: MOSFET0_PORT_REG |= (1U << MOSFET0);  break;
		case 1: MOSFET1_PORT_REG |= (1U << MOSFET1);  break;
		case 2: MOSFET2_PORT_REG |= (1U << MOSFET2);  break;
		case 3: MOSFET3_PORT_REG |= (1U << MOSFET3);  break;
	}
}

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
void mosfet_off(uint8_t no) {
	switch (no) {
	case 0: MOSFET0_PORT_REG &= ~(1U << MOSFET0);  break;
	case 1: MOSFET1_PORT_REG &= ~(1U << MOSFET1);  break;
	case 2: MOSFET2_PORT_REG &= ~(1U << MOSFET2);  break;
	case 3: MOSFET3_PORT_REG &= ~(1U << MOSFET3);  break;
	}
}
