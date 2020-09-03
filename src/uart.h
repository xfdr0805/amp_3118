#ifndef __MY_UART_H__
#define __MY_UART_H__
#define BUFFER_SIZE 128
void Uart1_Init();
void uart_putc (unsigned char d);
unsigned char uart_getc (void);
struct RxTx{
	int		ri, wi, ct;			/* Read index, Write index, Data counter */
	char	buff[BUFFER_SIZE];	/* FIFO buffer */
};
extern struct RxTx TxFifo, RxFifo;
#endif
