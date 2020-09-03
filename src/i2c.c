#include<p24Fxxxx.h>
#include"i2c.h"
#include"delay.h"
#define STA311B_ADDR_WR 0x40  
#define STA311B_ADDR_RD 0x41

void I2C_Init()
{
	//I2C1CONbits.I2CEN=1;//
	//I2C1BRG=0x4f;//100KHZ 
    I2C3CONbits.I2CEN = 1;
    I2C3CONbits.ACKEN = 1;
    I2C3BRG = 0x9D;//100KHZ  Fcy=16Mhz	
}
void I2C_Start()
{	
	I2C3CONbits.SEN=1; 
 	while(I2C3CONbits.SEN);  //Wait till Start sequence is completed
 	IFS5bits.MI2C3IF=0;
}

void I2C_RStart()
{	
	I2C3CONbits.RSEN=1; 
 	while(I2C3CONbits.RSEN);  //Wait till Start sequence is completed
 	IFS5bits.MI2C3IF=0;
}
void I2C_Stop()
{	
	I2C3CONbits.PEN=1; //停止I2C总线，硬件自动清零
	while(I2C3CONbits.PEN);  //Wait till Stop sequence is completed
 	IFS5bits.MI2C3IF=0;
}

void I2C_WriteByte(unsigned char dat)
{
	
	I2C3TRN=dat;
	while(I2C3STATbits.TBF);//Wait for send complete 
	while(!IFS5bits.MI2C3IF); //Wait for ninth clock cycle
    IFS5bits.MI2C3IF=0; //Clear interrupt flag
 
}

unsigned char I2C_ReadByte()
{
 	unsigned char temp;
 	I2C3CONbits.RCEN=1;
 	while(!I2C3STATbits.RBF);//接收完成，标志置位
 	temp=I2C3RCV;//读取接收的数据
	return temp;
}

void I2C_Read_Ack()
{	  
	while(I2C3STATbits.ACKSTAT);// 等待器件应答，器件无应答置1

}

void I2C_Send_Ack()
{
	  
	I2C3CONbits.ACKDT=1;
	I2C3CONbits.ACKEN=1;
}
void I2C_Start_Wait(uint8_t addr)
{
    I2C_Start();
    I2C_WriteByte(addr);
}
void I2C_WriteChar(unsigned int addr,unsigned char dat)
{
  I2C_Start();
  I2C_WriteByte(STA311B_ADDR_WR);
  I2C_Read_Ack();
  I2C_WriteByte(addr); 
  I2C_Read_Ack();
  I2C_WriteByte(dat);
  I2C_Read_Ack();
  I2C_Stop();
}

void I2C_WriteString(unsigned int addr,unsigned char *dat)
{
	 while(*dat!='\0')
     {
	 	 I2C_WriteChar(addr,*dat);
	 	 addr++;
	 	 dat++; 
	 	 delay_ms(30);  
	 } 
	
}
unsigned char I2C_ReadChar(unsigned int addr)
{  unsigned char temp;
  I2C_Start();
  I2C_WriteByte(STA311B_ADDR_WR);
  I2C_Read_Ack();
  I2C_WriteByte(addr);
  I2C_Read_Ack();
  I2C_RStart(); //
  I2C_WriteByte(STA311B_ADDR_RD);
  I2C_Read_Ack();
  temp=I2C_ReadByte();
  //I2C_Send_Ack();
  I2C_Stop();
  return temp;
}
