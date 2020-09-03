/*
2019.09.09
 * 1.CPU晶振8Mhz PLLx4为32Mhz Fcy为16Mhz 
 * 2.串口波特率115200 N 8 1
 * 3.添加git到github
 */
// CONFIG3
#pragma config WPFP = WPFP511           // Write Protection Flash Page Segment Boundary (Highest Page (same as page 170))
#pragma config WPDIS = WPDIS            // Segment Write Protection Disable bit (Segmented code protection disabled)
#pragma config WPCFG = WPCFGDIS         // Configuration Word Code Page Protection Select bit (Last page(at the top of program memory) and Flash configuration words are not protected)
#pragma config WPEND = WPENDMEM         // Segment Write Protection End Page Select bit (Write Protect from WPFP to the last page of memory)

// CONFIG2
#pragma config POSCMOD = HS             // Primary Oscillator Select (XT oscillator mode selected)
#pragma config IOL1WAY = ON             // IOLOCK One-Way Set Enable bit (Write RP Registers Once)
#pragma config OSCIOFNC = OFF           // Primary Oscillator Output Function (OSCO functions as CLKO (FOSC/2))
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor (Both Clock Switching and Fail-safe Clock Monitor are disabled)
#pragma config FNOSC = PRIPLL              // Oscillator Select (Primary oscillator (XT, HS, EC))
#pragma config IESO = OFF               // Internal External Switch Over Mode (IESO mode (Two-speed start-up)disabled)

// CONFIG1
#pragma config WDTPS = PS32768          // Watchdog Timer Postscaler (1:32,768)
#pragma config FWPSA = PR128            // WDT Prescaler (Prescaler ratio of 1:128)
#pragma config WINDIS = OFF             // Watchdog Timer Window (Standard Watchdog Timer is enabled,(Windowed-mode is disabled))
#pragma config FWDTEN = ON              // Watchdog Timer Enable (Watchdog Timer is enabled)
#pragma config ICS = PGx1               // Comm Channel Select (Emulator functions are shared with PGEC1/PGED1)
#pragma config GWRP = OFF               // General Code Segment Write Protect (Writes to program memory are allowed)
#pragma config GCP = OFF                // General Code Segment Code Protect (Code protection is disabled)
#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG port is disabled).RD0 //LED1
#include <xc.h>
#include "delay.h"
#include "stdio.h"
#include "uart.h"
#include "adc.h"
#include "key.h"
#include "string.h"
#include "i2c.h"
#include "timer.h"
#include "sta311b.h"
#include "irmp.h"
#include "u8g2.h"
#include "u8x8.h"
#include <libpic30.h> int _C30_UART = 1 ; //printf 使用uart1
        
#define ADC_PWDN     LATGbits.LATG8 
#define AMP_PWDN     LATBbits.LATB4 
#define LED1         LATDbits.LATD0 //LED1
#define LED2         LATDbits.LATD1 //LED2
#define DSP_PWDN     LATDbits.LATD9 
#define DSP_RST      LATDbits.LATD8 
#define MCLK_ON      LATDbits.LATD7 
#define TW_MUTE      LATCbits.LATC14 
#define DAC_MUTE     LATDbits.LATD5 
#define AMP_FAULT    LATBbits.LATB3
#define AMP_STDBY    LATDbits.LATD6
#define DC_LVL       LATDbits.LATD4

//遥控器代码定义 使用3114遥控器
uint8_t command = 0;
uint8_t last_command = 0;
uint32_t remote_code = 0xff00;
uint8_t volume_up_code = 0x46;
uint8_t volume_down_code = 0x16;
uint8_t volume_mute_code = 0x06;
uint8_t power_code = 0x18;
uint8_t source_code = 0x4;
uint8_t bt_pre_code = 0x47;
uint8_t bt_next_code = 0x15;
uint8_t bt_pause_code = 0x55;
uint8_t opt1_code = 0x14;
uint8_t opt2_code = 0x10;
uint8_t coax1_code = 0x17;
uint8_t coax2_code = 0x40;
uint8_t bt_code = 0x042;
uint8_t mute_code = 0x04;

#define SSD1306_ADDR  0x78
#define MAX_VOLUME 100
#define MAX_MENU 10
u8g2_t u8g2;

void gpio_init(void);
void INT1_Init(void);
void INT2_Init(void);
IRMP_DATA irmp_data;
uint16_t adc = 0;
extern uint8_t time_flag_1s;
//uint8_t volume = 50;//默认音量  0 - 99
uint8_t master_volume = 50;
// uint8_t trebel_volume = 50;
// uint8_t middle_volume = 50;
// uint8_t bass_volume = 50;
uint8_t page_index = 0;
uint8_t input_index = 0;
uint8_t last_index = 0;
char * menu[] = {"RCA-1", "Optical-2", "Coaxial-1", "Coaxial-2", "Bluetooth", "SmartConfig", "IR Decode", "Device Info", "About", "Exit"};
//maps the value from v_ interval to r_ interval
int16_t map(int16_t value, int16_t v_min, int16_t v_max, int16_t r_min, int16_t r_max) {
    if (v_min == v_max) return r_min;
    int16_t round = (v_max - v_min) >> 1;
    return ((value - v_min) * (r_max - r_min) + round) / (v_max - v_min) + r_min;
}

uint8_t u8x8_pic24f_delay(u8x8_t * u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr) {
    switch (msg) {
        case U8X8_MSG_DELAY_NANO: // delay arg_int * 1 nano second
            break;
        case U8X8_MSG_DELAY_100NANO: // delay arg_int * 100 nano seconds
            break;
        case U8X8_MSG_DELAY_10MICRO: // delay arg_int * 10 micro seconds
            while (arg_int--) delay_us(10);
            break;
        case U8X8_MSG_DELAY_MILLI: // delay arg_int * 1 milli second
            while (arg_int--) delay_ms(1);
            break;
        default:
            return 0;
    }

    return 1;
}
uint8_t u8x8_byte_pic24f_hw_i2c(u8x8_t *u8x8, uint8_t msg, uint8_t arg_int, void *arg_ptr){
    uint8_t *data;
    switch (msg) {
        case U8X8_MSG_BYTE_SEND:
            data = (uint8_t *) arg_ptr;
            while (arg_int--)
                I2C_WriteByte(*data++);
            break;
        case U8X8_MSG_BYTE_INIT:
            //I2C_Init();
            break;
        case U8X8_MSG_BYTE_SET_DC:
            /* ignored for i2c */
            break;
        case U8X8_MSG_BYTE_START_TRANSFER:
            I2C_Start_Wait(u8x8_GetI2CAddress(u8x8));
            break;
        case U8X8_MSG_BYTE_END_TRANSFER:
            I2C_Stop();
            break;
        default:
            return 0;
    }
    return 1;
}

void draw_page(uint8_t index) {
    uint8_t i = 0;
    uint8_t temp[32];
    switch (index) {
        case 0: // show main page
            u8g2_ClearBuffer(&u8g2);
            u8g2_DrawStr(&u8g2,0,14, menu[input_index]);
            u8g2_DrawHLine(&u8g2, 0, 18, 128);
            u8g2_SetFont(&u8g2, u8g2_font_10x20_mr);
            if (master_volume == 0) {
                u8g2_DrawStr(&u8g2, 32, 40, "Mute        ");
            } else {
                
                sprintf(temp,"VOL %d", master_volume);
                u8g2_DrawStr(&u8g2, 16, 40, temp);
                //u8g2_DrawStr(&u8g2, 32, 40, "Mute");
            }
            u8g2_SetFont(&u8g2,u8g2_font_open_iconic_play_1x_t);
            u8g2_DrawGlyph(&u8g2,3, 60, 0x0050);
            u8g2_DrawBox(&u8g2, 14, 50, master_volume, 12);
            u8g2_DrawGlyph(&u8g2, 120, 60, 0x004F);
            u8g2_SendBuffer(&u8g2);
            u8g2_SetFont(&u8g2, u8g2_font_7x14_mr);
            sta311b_set_volume(0, map(master_volume, 0, 100, 0, 255));
            break;
        case 1: //show menu page
            u8g2_ClearBuffer(&u8g2);

            if (input_index >= 4) {
                if (input_index > MAX_MENU) {
                    input_index = MAX_MENU;
                }
                for (i = 0; i < 4; i++) {
                    u8g2_SetFontMode(&u8g2, 1);
                    u8g2_SetDrawColor(&u8g2, 2); //font mode 1 and transparent	2	    XOR
                    u8g2_DrawStr(&u8g2,32, 14 * (i + 1), menu[i + 1 + input_index - 4]);
                    
                }
                u8g2_DrawBox(&u8g2, 0, 14 * 3 + 2, 128, 14);
            } else {
                for (i = 0; i < 4; i++) {
                    if (input_index == i) {
                        u8g2_DrawBox(&u8g2, 0, (14 * i) + 2, 128, 14);
                    }
                    u8g2_SetFontMode(&u8g2, 1);
                    u8g2_SetDrawColor(&u8g2, 2); //font mode 1 and transparent	2	    XOR
                    u8g2_DrawStr(&u8g2, 32, 14 * (i + 1), menu[i]);
                    
                }
            }
            u8g2_SendBuffer(&u8g2);
            break;
        case 2: // show smartconfig page
            u8g2_ClearBuffer(&u8g2);
            u8g2_DrawStr(&u8g2, 0, 40, "Wifi Smartconfig...");
            u8g2_SendBuffer(&u8g2);
            break;
        case 3: // show IR Decode
            u8g2_ClearBuffer(&u8g2);
            u8g2_DrawStr(&u8g2, 30, 14,"IR Decoder");
            u8g2_DrawStr(&u8g2, 0, 28, "Address:0x00");
            u8g2_DrawStr(&u8g2, 56, 28, "command:0x00");
            u8g2_SendBuffer(&u8g2);
            break;
        case 4: // show DeviceInfo page
//            u8g2.clearBuffer();
//            u8g2.setFont(u8g2_font_t0_12_mr);
//            u8g2.setCursor(0, 10);
//            u8g2.print("IP:");
//            u8g2.setCursor(0, 20);
//            u8g2.print(WiFi.localIP().toString());
//            u8g2.setCursor(0, 30);
//            u8g2.print("MAC:");
//            u8g2.setCursor(0, 40);
//            u8g2.print(WiFi.macAddress());
//            u8g2.setCursor(0, 50);
//            u8g2.print("SSID:");
//            u8g2.setCursor(0, 60);
//            u8g2.print(WiFi.SSID());
//            u8g2.sendBuffer();
//            u8g2.setFont(u8g2_font_7x14_mr);
            break;
        case 5: // show DeviceInfo page
            u8g2_ClearBuffer(&u8g2);
            //u8g2_SetFont(&u8g2, u8g2_font_t0_12_mr);
            u8g2_DrawStr(&u8g2, 46, 14, "About");
            u8g2_DrawStr(&u8g2, 0, 28, "code ver : 1.0.0");
            u8g2_DrawStr(&u8g2, 0, 56, "webpage ver:1.0.0");
            //u8g2.printf("%s %s", __DATE__, __TIME__);
            //u8g2.sendBuffer();
            u8g2_SetFont(&u8g2, u8g2_font_7x14_mr);
            break;
    }
}

uint8_t checkRange(uint8_t max_value, uint8_t dat) {
    if (dat >= max_value) {
        dat = max_value - 1;
    } else if (dat <= 0) {
        dat = 1;
    }
    return dat;
}
int main(void)
{	//AD1PCFG=0xffff;//不用ADC全部做IO口
	//SPI1_Init();
    
    delay_init();
    adc_init();
    gpio_init();
	Timer1_Init();
	Timer2_Init();
	Uart1_Init();
    irmp_init();
    
    printf("Build DataTime:%s %s\r\n",__DATE__,__TIME__);
	//INT1_Init();
	I2C_Init();
	Key_Init();
	sta311b_init();
    sta311b_set_volume(0, map(master_volume, 0, 100, 0, 255));//初始化默认音量50
    u8g2_Setup_sh1106_i2c_128x64_noname_f(&u8g2, U8G2_R0, u8x8_byte_pic24f_hw_i2c, u8x8_pic24f_delay);
    u8g2_SetI2CAddress(&u8g2, SSD1306_ADDR);
    u8g2_InitDisplay(&u8g2);
    u8g2_SetPowerSave(&u8g2, 0);
    
    u8g2_ClearBuffer(&u8g2);
    u8g2_SetFont(&u8g2, u8g2_font_7x14_mr);
    u8g2_SetFontRefHeightText(&u8g2);
//    u8g2_DrawStr(&u8g2, 0, 14, "PIC24FJ256GA106");
//    u8g2_DrawStr(&u8g2, 0, 30, "hardware i2c");
//    u8g2_DrawStr(&u8g2, 0, 46, "ABCDEFG");
//    u8g2_DrawCircle(&u8g2,24,24,24,U8G2_DRAW_ALL);
//    u8g2_DrawLine(&u8g2,0,60,128,60);
//    u8g2_DrawFilledEllipse(&u8g2,60, 42, 15, 10, U8G2_DRAW_ALL);
//    u8g2_SendBuffer(&u8g2);
    draw_page(0);
	while(1)
	{
		
		Key_Scan();
        if(time_flag_1s == 1)
        {
            time_flag_1s = 0;
            LED1 = !LED1;
//            printf("STA311B 0x01 data:%02X\r\n", I2C_ReadChar(0x01));
//            printf("STA311B 0x02 data:%02X\r\n", I2C_ReadChar(0x02));
//            printf("STA311B 0x07 data:%02X\r\n", I2C_ReadChar(0x07));
//            printf("TEMP_SENSE:%d\r\n", get_adc_value(8));
//            printf("A_SENSE:%2.2f mv\r\n", 3.3 * (get_adc_value(10) / 1024.0));
//            printf("DC_SENSE:%2.1f V\r\n", 12 * 3.3 * (get_adc_value(13) / 1024.0));
//            printf("8V_SENSE:%2.1f V\r\n", 3.01 * 3.3 * (get_adc_value(15) / 1024.0));
        }
        if (irmp_get_data(&irmp_data)) {
            printf("protol:%d addr=0x%04x cmd=0x%04x repeat=0x%02x (", irmp_data.protocol, irmp_data.address, irmp_data.command, irmp_data.flags);
            printf(irmp_protocol_names[irmp_data.protocol]);
            printf(")\r\n");
            if (input_index == 6) {
                //                        u8g2.clearBuffer();
                //                        u8g2.setCursor(30, 14);
                //                        u8g2.print("IR Decoder");
                //                        u8g2.setCursor(0, 28);
                //                        u8g2.printf("Address:0x%04X", results.address);
                //                        u8g2.setCursor(0, 42);
                //                        u8g2.printf("command:0x%02X", results.command);
                //                        u8g2.sendBuffer();
                //                        //DEBUG_PRINT(resultToHumanReadableBasic(&results).c_str());
                //                        DEBUG_PRINT(resultToSourceCode(&results).c_str());
                //                        //"%02X"，是以0补齐2位数，如果超过2位就显示实际的数，字母数值大写，如果换为x，字母数值就小写。
                //                        DEBUG_PRINT("Address:0x%04X Command:0x%02X\n", results.address, results.command);
                //return;
            }
            command = irmp_data.command; 
            printf("Command:0x%02X\n", command);
//            if (remote_code != irmp_data.address) {
//                return 0;
//            }
            if (irmp_data.flags == 0) {
                if (command == volume_up_code) {
                    master_volume = checkRange(MAX_VOLUME, master_volume);
                    master_volume++;
                } else if (command == volume_down_code) {
                    master_volume = checkRange(MAX_VOLUME, master_volume);
                    master_volume--;
                } else if (command == volume_mute_code) {
                } else if (command == bt_next_code) { 
                    if (input_index <= 5) {
                        input_index = 1;
                    }
                    input_index--;
                    last_index = input_index;
                } else if (command == bt_pre_code) {
                    input_index++;
                    if (input_index >= 5) {
                        input_index = 0;
                    }
                    last_index = input_index;
                } else if (command == bt_pause_code) {
                    page_index++;
                    if (page_index == 2) //按一下进入菜单，再按一下退出菜单
                    {
                        if (input_index < 5) //前边5路信号源
                        {
                            page_index = 0; //Main Page
                            last_index = input_index;
                            //select_input(last_index);
                            printf("select input index:%d\r\n", last_index);
                        } else if (input_index == 5) {
                            page_index = 2;
                        } else if (input_index == 6) {
                            page_index = 3;
                        } else if (input_index == 7) {
                            page_index = 4;
                        } else if (input_index == 8) {
                            page_index = 5;
                        } else if (input_index == 9) {
                            page_index = 0;
                            input_index = last_index;
                        }
                    } else if (page_index >= 3) //再按一下返回
                    {
                        page_index = 1;
                    }
                } else if (command == source_code) {
                    input_index++;
                    if (input_index >= 5) {
                        input_index = 0;
                    }
                    last_index = input_index;
                    printf("select input index:%d\r\n", last_index);
                    //select_input(last_index);
                } else if (command == opt1_code) {
                    input_index = 0;
                } else if (command == opt2_code) {
                    input_index = 1;
                } else if (command == coax1_code) {
                    input_index = 2;
                } else if (command == coax2_code) {
                    input_index = 3;
                } else if (command == power_code) {
                } else if (command == volume_up_code) {
                } else {
                }
            
            }else{
                if (command == volume_up_code) {
                    master_volume = checkRange(MAX_VOLUME, master_volume);
                    master_volume++;
                } else if (command == volume_down_code) {
                    master_volume = checkRange(MAX_VOLUME, master_volume);
                    master_volume--;
                } 
            }   
            draw_page(page_index);
        }
        ClrWdt();//喂狗  
	}
}

void gpio_init(void) {
    TRISDbits.TRISD0 = 0; //LED1
    TRISDbits.TRISD1 = 0;//LED2
    TRISDbits.TRISD9 = 0;//DSP_PWN
    TRISDbits.TRISD4  = 0;//DC_LVL
    TRISDbits.TRISD5  = 0;//DAC_MUTE
    TRISDbits.TRISD8 = 0;//DSP_RST
    TRISDbits.TRISD7 = 0;//MCLK_ON
    TRISCbits.TRISC14 = 0;//TW_MUTE
    TRISBbits.TRISB4 = 0;//AMP_PWN
    TRISGbits.TRISG8 = 0;//ADC_PWN
    TRISBbits.TRISB3 = 1;//AMP_FAULT
    TRISDbits.TRISD6 = 0;//PWR_STDBY
    MCLK_ON = 1;//XTAL ON
    DSP_RST = 1;//DSP RESET
    DSP_PWDN = 1; //STA311B
    ADC_PWDN = 1; //PCM1803
    AMP_PWDN = 1;//功放IC
    DAC_MUTE = 0; //PCM1781
    TW_MUTE = 1; //LM3886 mute off
    AMP_STDBY = 1;
    delay_ms(500);
    DC_LVL = 1;
}
void power_off()
{
    MCLK_ON = 0; //XTAL
    DSP_RST = 0;
    DSP_PWDN = 0; //STA311B
    ADC_PWDN = 0; //PCM1803
    AMP_PWDN = 0; //功放IC
    DAC_MUTE = 1; //PCM1781
    TW_MUTE = 0; //LM3886 mute off
    AMP_STDBY = 0;
}
void INT1_Init(void)
{
	RPINR0bits.INT1R=13;//中断1分配给RP13引脚
	TRISBbits.TRISB13=1;//引脚设为输入
	INTCON2bits.INT1EP=1;//下降沿中断
	IFS1bits.INT1IF=0;//清除中断标志
	IPC5bits.INT1IP=4;//优先级为4
	IEC1bits.INT1IE=1;//允许中断
}
void INT2_Init(void)
{
	//RPINR1bits.INT2R=9;//中断1分配给RP13引脚
	//TRISBbits.TRISB9=1;//引脚设为输入
	//INTCON2bits.INT2EP=1;//下降沿中断
	//IFS1bits.INT2IF=0;//清除中断标志
	//IPC7bits.INT2IP=4;//优先级为4
	//IEC1bits.INT2IE=1;//允许中断
}

/*void  __attribute__((interrupt, auto_psv)) _INT1Interrupt(void)//1中断
{	
	IFS1bits.INT1IF=0;//清除中断标志	
	
}	
void  __attribute__((interrupt, auto_psv)) _INT2Interrupt(void)//1中断
{	
	IFS1bits.INT2IF=0;//清除中断标志
		
}*/
/*void  __attribute__((interrupt, auto_psv)) _IC1Interrupt(void)//输入捕捉1中断
{	T2CONbits.TON=0;///启动Timer1
	IFS0bits.IC1IF=0;//清中断标志
	FREQ_W[0]=IC1BUF;
	FREQ_W[1]=IC1BUF;
	Pulse_Time=(FREQ_W[1]-FREQ_W[0])/2+(T2_OverFlag-T2_OverFlag_up)*25000;  //0.5us	
	TMR2=0;
	T2_OverFlag_up=T2_OverFlag;//更新上一时刻溢出的值
	T2CONbits.TON=1;///启动Timer2
}*/
