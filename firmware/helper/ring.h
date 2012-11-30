/*
 * A ring buffer implementation
 */

#ifndef RING_H
#define RING_H

#include <stdint.h>

typedef uint16_t ring_index_t;
typedef uint8_t *ring_buffer_t;
typedef uint8_t ring_count_t;
typedef uint8_t ring_size_t;


typedef struct {
	ring_buffer_t buffer;
	ring_size_t size;
	ring_index_t head;
	ring_index_t tail;
	ring_count_t count;
} ring_t;


uint8_t ring_init(ring_t *ring, ring_buffer_t buffer, ring_size_t size);
uint8_t ring_clear(ring_t *ring);
uint8_t ring_push(ring_t *ring, uint8_t data);
uint8_t ring_pop(ring_t *ring);
uint8_t ring_peek(ring_t *ring, uint8_t *buffer, uint8_t count);
uint8_t ring_peek_tail(ring_t *ring);
uint8_t ring_peek_head(ring_t *ring);

uint8_t ring_highwater(ring_t *ring);
uint8_t ring_lowwater(ring_t *ring);

uint8_t ring_has_line(ring_t *ring);
uint8_t ring_pop_line(ring_t *ring, ring_buffer_t buffer, ring_size_t size);


#endif
