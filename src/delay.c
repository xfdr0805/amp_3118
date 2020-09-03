#include <p24Fxxxx.h>
#include"delay.h"

void delay_init(void) { // Set up timer 1 for microsecond delay function
    T4CON = 0x0018; // Timer off, 32-bit, 1:8 prescale, gating off 0.5us
    T5CON = 0x0018; // Timer off, 32-bit, 1:8 prescale, gating off 0.5us
}
void delay_ms(uint32_t ms) {
    delay_us(ms*1000);
}
//·ÖÆµ±È1£º8 16Mhz/8=2Mhz=0.5us
void delay_us(uint32_t us) {
    TMR4 = 0;
    TMR5 = 0;
    PR4 = ((uint16_t)us) * 2 -1; // lsb 
    PR5 = ((uint16_t)(us>>16)) * 2; // msb
    IFS1bits.T5IF = 0;
    T4CONbits.TON = 1;
    while (!IFS1bits.T5IF); // Wait here for timeout
    T4CONbits.TON = 0;
}
