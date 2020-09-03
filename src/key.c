#include <xc.h>
#include "stdio.h"
#include "key.h"
#include "delay.h"
#include "i2c.h"
uint8_t key_rst, key1_rst_l;
void Key_Init(void)
{	
    TRISBbits.TRISB6 = 1;
	
}

void Key_Scan(void)
{	
	if(key_rst == 1)
	{
		key_rst=0;
        printf("Build DataTime:%s %s", __DATE__, __TIME__);
	}	
		
}
