/*
 * File:   adc.c
 * Author: 101367
 *
 * Created on 2019年9月12日, 上午9:30
 */


#include "xc.h"
int count;
int *ADC16Ptr;
void adc_init()
{
    AD1PCFG = 0x5aFF;   // AN8,10, 13,15 as analog, all other pins are digital
    AD1CON1 = 0x00E0;   // SSRC bit = 111 implies internal counter
                         // ends sampling and starts converting.
    AD1CHS = 0x0008;    // Connect RB15/AN15 as CH0 input..
                       
    AD1CSSL = 0;
    AD1CON3 = 0x0F00;   // Sample time = 15Tad, Tad = Tcy
    AD1CON2 = 0x003c;   // Set AD1IF after every 2 samples
    AD1CON1bits.ADON = 1; // turn ADC ON
}
uint16_t get_adc_value(uint8_t ch)
{
    //Sampling and Converting a Single Channel Multiple Times
    AD1CHS = ch;
    int ADCValue = 0; // clear value
    ADC16Ptr = &ADC1BUF0; // initialize ADC1BUF pointer
    IFS0bits.AD1IF = 0; // clear ADC interrupt flag
    AD1CON1bits.ASAM = 1; // auto start sampling for 31Tad
    // then go to conversion
    while (!IFS0bits.AD1IF) {
    }; // conversion done?
    AD1CON1bits.ASAM = 0; // yes then stop sample/convert
    for (count = 0; count < 16; count++) // average the 16 ADC value
    {
        ADCValue = ADCValue + *ADC16Ptr++;
    }
    ADCValue = ADCValue >> 4;
    return ADCValue;
}