#ifndef MACROS_H
#define MACROS_H

#include <avr/interrupt.h>

#define NOP() 				__asm__ __volatile__("nop")
#define INTERRUPTS_ON()		sei()
#define INTERRUPTS_OFF()	cli()
#define MASK(PIN) 			(1 << PIN)
#define DDR(x)				(*(&x - 1))





#endif
