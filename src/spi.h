#ifndef __SPI_H__
#define __SPI_H__

#define SD_CS LATAbits.LATA9//SD_CS

void SPI1_Init();
// SPI�����ٶ����� 
#define LOW_SPEED   0
#define HIGH_SPEED   1

						  	    													  
void SPIx_Init(void);			 //��ʼ��SPI��
void SPIx_SetSpeed(unsigned char SpeedSet); //����SPI�ٶ�   
unsigned char SPIx_ReadWriteByte(unsigned char TxData);//SPI���߶�дһ���ֽ�

#endif
