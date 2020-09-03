/*
 * File:   sta311b.c
 * Author: 101367
 *
 * Created on 2019年9月11日, 下午4:00
 */


#include "xc.h"
#include "sta311b.h"
#include "i2c.h"
void sta311b_init()
{
    //config reg
    I2C_WriteChar(0x00,0x83);//sample 32k 44.1k 48k
    I2C_WriteChar(0x01,0x00);//serial in
    I2C_WriteChar(0x02,0x00); //serial out 32fs
    I2C_WriteChar(0x03,0xFE);//
    I2C_WriteChar(0x04,0x00);//
    I2C_WriteChar(0x05,0x03);// PWM speed
    I2C_WriteChar(0x06,0x04);// no clock out
    I2C_WriteChar(0x07,0xFE);//
    I2C_WriteChar(0x08,0x00);//
    //
    I2C_WriteChar(0x13,0x50);// 
    I2C_WriteChar(0x14,0x50);// 
    I2C_WriteChar(0x1B,0x32);// SDI_34 mapping out1,2
    I2C_WriteChar(0x0D,0x5F);// volume
    I2C_WriteChar(0x1f,0x10);//EQ mode preset 0.5db steps
    //gain and limiting
    I2C_WriteChar(0x2f, 0x6a);
    I2C_WriteChar(0x30, 0x69);
    I2C_WriteChar(0x31, 0x6a);
    I2C_WriteChar(0x32, 0x69);
    I2C_WriteChar(0x07, 0x7e);//software mute enable  zero crossing
    //auto-Mode Bass Management
    I2C_WriteChar(0x22, 0xA0); //preset
    
    //IO config
    I2C_WriteChar(0x32, 0x69);
    // PWM out timeing
    I2C_WriteChar(0x33, 0x40);
    I2C_WriteChar(0x34, 0x62);
    I2C_WriteChar(0x35, 0x51);
    I2C_WriteChar(0x36, 0x73);
    //map i2s output 3 and 4
    I2C_WriteChar(0x38, 0x10);
}

//ch从0-7，val 0-255 vol 0db- -128db
void sta311b_set_volume(uint8_t ch,uint8_t val) {
    if(val >= 0xff){val = 0xff;}
    if(val <= 0x00){val = 0x00;}
    I2C_WriteChar(0x0B + ch, 0xff - val);
    I2C_WriteChar(0x0C + ch, 0xff - val);
}
//ch 0-3
void sta311b_select_chahnel(uint8_t ch){
    if(ch > 3){ch = 3;}
    switch(ch)
    {
        case 0:I2C_WriteChar(0x1B, 0x10);break; //SDI_1_2
        case 1:I2C_WriteChar(0x1C, 0x32);break; //SDI_3_4
        case 2:I2C_WriteChar(0x1D, 0x54);break; //SDI_5_6
        case 3:I2C_WriteChar(0x1E, 0x76);break; //SDI_7_8
        default:break;
    }
}