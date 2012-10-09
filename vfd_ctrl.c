#include <htc.h>
#include <string.h>
#include "ADC_CTRL.H"
#include "vfd_data.h"
#include "interrupt_ctrl.h"
#include "sub.h"

#define	SDATA	RB2
#define	SCK		RB5
#define	SBUSY	RB3

//プロトタイプ宣言----------------------------------------
void vfd_init(void);
void vfd_ctrl(void);
void vfd_data_transmit(void);
void vfd_write(unsigned char data);

void InttoAscii(int data, unsigned char * ascii);
void DoubletoAscii(double data, unsigned char * ascii);

//変数宣言--------------------------------------------

//-----------------------------------------------------
void vfd_init(void)
{
	unsigned char i, busy_flag;
	
	busy_flag = 0;
	while(SBUSY);		//初期起動時SBUSY処理待ち---
	while(busy_flag == 0){	//頭だし----
		SDATA = 1;
		SCK = 1;
		for(i = 0; i < 100; i++)if(SBUSY == 1) busy_flag = 1;
		SCK = 0;
		for(i = 0; i < 100; i++)if(SBUSY == 1) busy_flag = 1;
	}
	SDATA = 0;
	vfd_write(0x20);
	for(i = 0; i < 32; i++) vfd_write(0x20);
	vfd_write(HOME);
	
	strcpy(Upside_Data,	"                ");
	strcpy(Downside_Data,	"                ");
}

//----------------------------------------------------
/*
void vfd_ctrl(void)
{
	InttoAscii(Adc_data, Upside_Data);
	strcpy(Vfd_Data, Upside_Data);
	strcat(Vfd_Data, Downside_Data);
	
	vfd_data_transmit();
}

void vfd_data_transmit(void)
{
	unsigned char i;
	unsigned char vfd_data[33];
	
	vfd_write(HOME);
	for(i = 0; i < 32; i++) vfd_write(Vfd_Data[i]);
}
*/	
void vfd_write(unsigned char data)
{
	unsigned char i, txdata;
	
	txdata = data;
	while(SBUSY);
	for(i = 0; i < 8; i++)
	{
		SCK = 0;
		SDATA = (txdata & 0x01);
		SCK = 1;
		txdata = txdata >> 1;
	}
}

//-----------------------
void InttoAscii(int data, unsigned char * ascii)
{
	unsigned char i, dec, flg, databuf;

	for(i = 0; i < 10; i++);
	if(data < 0)
	{
		ascii[i++] = '-'; //0x2D
		data *= -1;
	}
	
	dec = 5;
	flg = 0;
	while(i < 16)
	{
		databuf = (unsigned char)(data / Power(10, dec));
		data %= Power(10, dec);
		if(databuf != 0)
		{
			ascii[i] = 0x30 + databuf;
			flg = 1;
		} else {
			if(flg)	ascii[i] = '0'; //0x30
			else
			{
				if(i != 15) ascii[i] = ' '; //0x20
				else        ascii[i] = '0'; //0x30
			}
		}
		i++;
		dec--;
	}
}

void DoubletoAscii(double data, unsigned char * ascii)
{
	unsigned char i, dec, flg, databuf;
	int            int_data;
	
	for(i = 0; i < 8; i++);
	if(data < 0)
	{
		ascii[i++] = '-'; //0x2D
		data *= -1;
	}
	
	int_data = (int)(data * 100.0 + 0.5);
	dec = 4;
	flg = 0;
	while(i < 14)
	{
		databuf = (unsigned char)(int_data / Power(10, dec));
		int_data %= Power(10, dec);
		if(i == 11) ascii[i++] = '.';
		if(databuf != 0)
		{
			ascii[i] = 0x30 + databuf;
			flg = 1;
		} else {
			if(flg)	ascii[i] = '0'; //0x30
			else
			{
				if(i != 10) ascii[i] = ' '; //0x20
				else
				{
					ascii[i++] = '0'; //0x30
					ascii[i]   = '.';
					flg = 1;
				}
			}
		}
		i++;
		dec--;
	}
}

