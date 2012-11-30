#ifndef UART_H
#define UART_H

#include <inttypes.h>
#include "../helper/macros.h"





void uart_init();
uint8_t uart_rx_len();
uint8_t uart_rx_pop();
uint8_t uart_rx_peek(uint8_t *buffer, uint8_t len);
uint8_t uart_rx_peek_head();
uint8_t uart_rx_peek_tail();

void uart_tx_push(uint8_t data);
void uart_tx_write(void *data, uint8_t len);
void uart_tx_write_str(char *data);

void uart_tx_clear();
void uart_rx_clear();

#endif
