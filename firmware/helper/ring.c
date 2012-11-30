#include "ring.h"
#include <string.h>
#include <stdlib.h>

/* ------------------------------------------------------------------
 * Initialize an already allocated ring buffer
 * ------------------------------------------------------------------ */
uint8_t ring_init(ring_t *ring, ring_buffer_t buffer, ring_size_t size) {
	if((size > 2) && (ring != 0x0) && (buffer != 0x0)) {
		ring->buffer = buffer;
		ring->size = size;
		return ring_clear(ring);
	} else {
		return 0;
	}
}

/* ------------------------------------------------------------------
 * Empty the ring buffer
 * ------------------------------------------------------------------ */
uint8_t ring_clear(ring_t *ring) {
	if(ring != 0x0) {
		ring->head = 0;
		ring->tail = 0;
		ring->count = 0;
		memset((void*)ring->buffer, 0x0, ring->size);
		return 1;
	} else {
		return 0;
	}
}

/* ------------------------------------------------------------------
 * Push data into the buffer
 * ------------------------------------------------------------------ */
uint8_t ring_push(ring_t *ring, uint8_t data) {
	ring_index_t idx = ring->head + 1;

	if(ring->head >= ring->size - 1) {
		idx = 0;
	}

	if(idx != ring->tail) {
		ring->buffer[idx] = data;
		ring->head = idx;
		ring->count++;
		return 1;
	}
	return 0;
}

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
uint8_t ring_pop(ring_t *ring) {
	uint8_t result = 0x0;
	if(ring->head != ring->tail) {
		result = ring->buffer[ring->tail];
		ring_index_t idx = ring->tail + 1;
		if(ring->tail >= ring->size -1) {
			idx = 0;
		}

		ring->tail = idx;
		ring->count--;
	}
	return result;
}

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
uint8_t ring_peek(ring_t *ring, uint8_t *buffer, uint8_t count) {
	ring_index_t idx;
	uint8_t total = 0;
	if(ring != 0x0 && buffer != 0x0) {
		idx = ring->tail;
		while(count && idx != ring->head) {
			*buffer++ = ring->buffer[idx++];
			if(idx >= ring->size) {
				idx = 0;
			}
			count--;
			total++;
		}
	}
	return total;
}

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
uint8_t ring_peek_tail(ring_t *ring) {
	if(ring != 0x0) {
		if(ring->count > 0) {
			return ring->buffer[ring->tail - 1];
		} else {
			return 0;
		}
	} else {
		return 0;
	}
}

/* ------------------------------------------------------------------
 *
 * ------------------------------------------------------------------ */
uint8_t ring_peek_head(ring_t *ring) {
	if(ring != 0x0) {
		if(ring->count > 0) {
			return ring->buffer[ring->head + 1];
		} else {
			return 0;
		}
	} else {
		return 0;
	}
}

/* ------------------------------------------------------------------
 * Is buffer more than 3/4 full?
 * ------------------------------------------------------------------ */
uint8_t ring_highwater(ring_t *ring) {
	 return(ring->count >= (uint8_t)(((uint16_t)(ring->size) * 3)/4));
}

/* ------------------------------------------------------------------
 * Is buffer less than 1/4 full?
 * ------------------------------------------------------------------ */
uint8_t ring_lowwater(ring_t *ring) {
    return(ring->count <= (ring->size / 4));
}

/* ------------------------------------------------------------------
 * Is there a line in the ring buffer? A line ends with \r\n or just \n
 * Just look for the trailing \n
 * ------------------------------------------------------------------ */
uint8_t ring_has_line(ring_t *ring) {
	ring_index_t idx;

	// TODO check count is not zero

	if(ring != 0x0) {
		idx = ring->tail;
		while(idx != ring->head) {
			if(ring->buffer[idx] == '\n') {
				return 1;
			}
			idx++;

			if(idx >= ring->size) {
				idx = 0;
			}
		}
	} else {
		return 0;
	}

}

/* ------------------------------------------------------------------
 * Pop a line out of the ring buffer. Do not return the \r or \n
 * ------------------------------------------------------------------ */
uint8_t ring_pop_line(ring_t *ring, ring_buffer_t buffer, ring_size_t size) {

}
