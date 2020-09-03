/*
 * File:   timer.c
 * Author: 101367
 *
 * Created on 2019��9��10��, ����11:24
 */
#include <p24Fxxxx.h>
#include <xc.h>
#include "key.h"
#include "irmp.h"
uint16_t cnt1,t,tt;
uint8_t time_flag_1s = 0;
//10ms��ʱ��
void Timer1_Init(void) {

    T1CON = 0x0010; //1:8 0.5us
    TMR1 = 0;
    PR1 = 1999;//1ms
    IEC0bits.T1IE = 1; //����TImer2�ж�
    IPC0bits.T1IP = 4; //TImer2���ȼ�Ϊ4
    IFS0bits.T1IF = 1; // Reset interrupt flag
    T1CONbits.TON = 1;
    
}

void __attribute__((interrupt, auto_psv)) _T1Interrupt(void) {
    IFS0bits.T1IF = 0;
    //10ms��ʱ������
    tt++;
    if(tt >= 1000)
    {
        tt = 0;
        time_flag_1s = 1;
    }
    if (KEY1 == 0) {
        cnt1++;
        if (cnt1 >= 200) {
            if (cnt1 == 200) key1_rst_l = 1; //2s����
            cnt1 = 201;

        }
    } else {
        if (cnt1 > 2 && cnt1 < 200) {
            key_rst = 1; //�̰�
            cnt1 = 0;

        }
        cnt1 = 0;
    }

}
//ң�����ж�
void Timer2_Init(void) {
    TMR2 = 0;
    //PR2=0xffff;//32/8/2MHZ=0.5uS
    PR2 = 132; // 66us
    T2CON = 0x0010; //����Timer2��ʱ��������ʱ��Ԥ��Ƶ��1��8
    IFS0bits.T2IF = 0; //��TImer1�жϱ�־
    IEC0bits.T2IE = 1; //����TImer2�ж�
    IPC1bits.T2IP = 1; //TImer2���ȼ�Ϊ4
    T2CONbits.TON = 1; ///����Timer2

}
void __attribute__((interrupt, auto_psv)) _T2Interrupt(void) {
    IFS0bits.T2IF = 0; 
    irmp_ISR(); //The Interrupt period time must be set to 66 ?s (15 kHz).
}