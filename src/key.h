#ifndef __KEY_H__
#define	__KEY_H__
#define KEY1    LATBbits.LATB8
extern uint8_t key_rst,key1_rst_l;
void Key_Init(void);
void  Key_Scan(void);

#endif
