#ifndef __I2C_H__
#define __I2C_H__
void I2C_Init();
void I2C_Start();
void I2C_Stop();
void I2C_Read_Ack();
void I2C_Send_Ack();
void I2C_WriteChar(unsigned int addr,unsigned char dat);
void I2C_WriteByte(unsigned char dat);
unsigned char I2C_ReadByte();
unsigned char I2C_ReadChar(unsigned int addr);
void I2C_Start_Wait(uint8_t addr);
void I2C_WriteString(unsigned int addr,unsigned char *dat);
#endif
