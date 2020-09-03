/*------------------------------------------------------------------------/
/  UART control module for PIC24F                          (C)ChaN, 2010
/-------------------------------------------------------------------------/
/
/  Copyright (C) 2010, ChaN, all right reserved.
/
/ * This software is a free software and there is NO WARRANTY.
/ * No restriction on use. You can use, modify and redistribute it for
/   personal, non-profit or commercial products UNDER YOUR RESPONSIBILITY.
/ * Redistributions of source code must retain the above copyright notice.
/
/-------------------------------------------------------------------------*/
#include <xc.h>
#include "uart.h"
#define _DI()		__asm__ volatile("disi #0x3FFF")
#define _EI()		__asm__ volatile("disi #0")


static volatile int TxRun;		/* Tx running flag */
struct RxTx TxFifo, RxFifo;

/* Initialize UART module */
//Fcy = 16Mhz  
void Uart1_Init() 
{
    RPOR11bits.RP22R = 3; //TX引脚分配给RP22
    RPINR18bits.U1RXR = 23; //RP22引脚分配给RX
    U1MODEbits.UARTEN = 1; //使能UART1
    U1MODEbits.BRGH = 1; //高波特率
    U1BRG = 33; //115200
    U1STAbits.UTXISEL0 = 0;
    U1STAbits.UTXISEL1 = 0; //每发送一个字节产生一次中断
    U1STAbits.URXISEL = 0; //每发送一个字节产生一次中断
    //SRbits.IPL=3;
    IPC3bits.U1TXIP = 4;
    IPC2bits.U1RXIP = 4;
    IEC0bits.U1TXIE = 1; //允许中断
    IEC0bits.U1RXIE = 1; //允许中断
    U1STAbits.UTXEN = 1; //使能发送
    IFS0bits.U1TXIF = 0; //发送中断标志清零
    IFS0bits.U1RXIF = 0;
}
/* UART1 Rx interrupt ISR */
void __attribute__((interrupt, auto_psv)) _U1RXInterrupt (void)
{
	unsigned char d;
	int i;
    IFS0bits.U1RXIF = 0; /* Clear Rx interrupt flag */
	d = (unsigned char)U1RXREG;			/* Get received data */
	i = RxFifo.ct;				/* Number of bytes in the FIFO */
	if (i < BUFFER_SIZE) {		/* Skip if FIFO is full */
		RxFifo.ct = ++i;/*先加1后再参与运算*/
		i = RxFifo.wi;
		RxFifo.buff[i++] = d;/*先参与运算再加1 Store data into the FIFO */
		RxFifo.wi = i % BUFFER_SIZE;	/* Next write ptr */
	}
}



/* UART1 Tx interrupt ISR */

void __attribute__((interrupt, auto_psv)) _U1TXInterrupt (void)
{
	int i;
    IFS0bits.U1TXIF = 0; /* Clear Tx interrupt flag */
	i = TxFifo.ct;		/* Number of data in the FIFO */
	if (i) {			/* If any data is available, pop a byte and send it. */
		TxFifo.ct = --i;
		i = TxFifo.ri;
		U1TXREG = TxFifo.buff[i++];		/* Send a byte */
		TxFifo.ri = i % BUFFER_SIZE;	/* Next read ptr */
	} else {			/* No data in the Tx FIFO */
		TxRun = 0;		/* Stop transmission sequense */
	}
}
/* Get a byte from Rx FIFO */

unsigned char uart_getc (void)
{
	unsigned char d;
	int i;
	while (!RxFifo.ct) ;		/* Wait while Rx FIFO empty */
	i = RxFifo.ri;				/* Get a byte from Rx FIFO */
	d = RxFifo.buff[i++];
	RxFifo.ri = i % BUFFER_SIZE;
	_DI();
	RxFifo.ct--;
	_EI();

	return d;
}



/* Put a byte into Tx FIFO */

void uart_putc (unsigned char d)
{
	int i;


	while (TxFifo.ct >= BUFFER_SIZE) ;	/* Wait while Tx FIFO is full */

	i = TxFifo.wi;		/* Put a data into the Tx FIFO */
	TxFifo.buff[i++] = d;
	TxFifo.wi = i % BUFFER_SIZE;
	_DI();
	TxFifo.ct++;
	if (!TxRun) {		/* If transmission sequense is not running, start the tx sequense */
		TxRun = 1;
		_U1TXIF = 1;	/* Force trigger Tx interrupt */
	}
	_EI();
}






