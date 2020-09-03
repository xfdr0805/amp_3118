#include<p24FJ64GA004.h>
#include"spi.h"


void SPI1_Init()
{		
	RPINR20bits.SDI1R=5;//RP5->MISO
	RPOR3bits.RP7R=7;//RP7->MOSI	
	RPOR3bits.RP6R=8;//RP6
	
	TRISBbits.TRISB7=0;//
	TRISBbits.TRISB6=0;//
	TRISBbits.TRISB5=1;//
	TRISAbits.TRISA9=0;//SD_CS

	SPI1CON1bits.DISSCK=0;//使能内部时钟
	SPI1CON1bits.DISSDO=0;//使能数据输出	
	SPI1CON1bits.MODE16=0;//1:16位宽，0：8位宽
	SPI1CON1bits.SMP=1;//1:未尾采样输入，0：中间采样输入
	SPI1CON1bits.CKE=0;
	SPI1CON1bits.CKP=1;//1：空闲时高电平，0：空闲时为低电平
	SPI1CON1bits.MSTEN=1;//SPI主模式
	//SPI1CON1bits.PPRE=0;//125KHZ
	//SPI1CON1bits.SPRE=6;
	IEC0bits.SPI1IE=0;//禁止中断
	
}
//SPI 速度设置函数
void SPIx_SetSpeed(unsigned char SpeedSet)
{
	switch(SpeedSet)
	{
		case 0: //SPI1STATbits.SPIEN=0;//使能SPI模块	
				SPI1CON1bits.PPRE=0;//125KHZ
				SPI1CON1bits.SPRE=6;
			    break;
		case 1: //SPI1STATbits.SPIEN=0;//使能SPI模块
				SPI1CON1bits.PPRE=3;//3,8MHZ 2,2MHZ 1,500K
				SPI1CON1bits.SPRE=6;				
			    break;
	}		 

	SPI1STATbits.SPIEN=1;//使能SPI模块  
} 
//SPIx 读写一个字节
//TxData:要写入的字节
//返回值:读取到的字节
unsigned char SPIx_ReadWriteByte(unsigned char TxData)
{					  		 
	SPI1BUF=TxData;
	while(SPI1STATbits.SPITBF);
	while(!SPI1STATbits.SPIRBF);//等待接收缓冲区满					    
	return SPI1BUF;          //返回收到的数据				    
}
