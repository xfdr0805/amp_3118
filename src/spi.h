#ifndef __SPI_H__
#define __SPI_H__

#define SD_CS LATAbits.LATA9//SD_CS

void SPI1_Init();
// SPI总线速度设置 
#define LOW_SPEED   0
#define HIGH_SPEED   1

						  	    													  
void SPIx_Init(void);			 //初始化SPI口
void SPIx_SetSpeed(unsigned char SpeedSet); //设置SPI速度   
unsigned char SPIx_ReadWriteByte(unsigned char TxData);//SPI总线读写一个字节

#endif
