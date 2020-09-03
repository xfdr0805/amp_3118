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

	SPI1CON1bits.DISSCK=0;//ʹ���ڲ�ʱ��
	SPI1CON1bits.DISSDO=0;//ʹ���������	
	SPI1CON1bits.MODE16=0;//1:16λ��0��8λ��
	SPI1CON1bits.SMP=1;//1:δβ�������룬0���м��������
	SPI1CON1bits.CKE=0;
	SPI1CON1bits.CKP=1;//1������ʱ�ߵ�ƽ��0������ʱΪ�͵�ƽ
	SPI1CON1bits.MSTEN=1;//SPI��ģʽ
	//SPI1CON1bits.PPRE=0;//125KHZ
	//SPI1CON1bits.SPRE=6;
	IEC0bits.SPI1IE=0;//��ֹ�ж�
	
}
//SPI �ٶ����ú���
void SPIx_SetSpeed(unsigned char SpeedSet)
{
	switch(SpeedSet)
	{
		case 0: //SPI1STATbits.SPIEN=0;//ʹ��SPIģ��	
				SPI1CON1bits.PPRE=0;//125KHZ
				SPI1CON1bits.SPRE=6;
			    break;
		case 1: //SPI1STATbits.SPIEN=0;//ʹ��SPIģ��
				SPI1CON1bits.PPRE=3;//3,8MHZ 2,2MHZ 1,500K
				SPI1CON1bits.SPRE=6;				
			    break;
	}		 

	SPI1STATbits.SPIEN=1;//ʹ��SPIģ��  
} 
//SPIx ��дһ���ֽ�
//TxData:Ҫд����ֽ�
//����ֵ:��ȡ�����ֽ�
unsigned char SPIx_ReadWriteByte(unsigned char TxData)
{					  		 
	SPI1BUF=TxData;
	while(SPI1STATbits.SPITBF);
	while(!SPI1STATbits.SPIRBF);//�ȴ����ջ�������					    
	return SPI1BUF;          //�����յ�������				    
}
