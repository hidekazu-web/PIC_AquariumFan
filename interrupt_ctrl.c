#include <htc.h>

#include "interrupt_ctrl.h"
#include "ADC_CTRL.H"


void int_init(void);	//割り込み処理内で使用する変数などの初期化---
void t0_int(void);		//timer0割り込み---
void rx_int(void);		//受信割り込み---
void tx_int(void);		//送信割り込み---

volatile unsigned char T05_Counter;
volatile unsigned int T1_Counter;
volatile union TimeCycle_Union Cycle_Unit;

//割り込み処理内で使用する変数などの初期化-----
void int_init(void)
{
	TMR0 = 0;
	
	T05_Counter = 0;
	T1_Counter = 0;
	Cycle_Unit.Byte = 0x00;
}


//割り込みメイン-------------------------------------------
/*static*/ void interrupt int_ctrl(void)
{
	if(TMR0IF)
	{
		TMR0IF = 0;
		TMR0 = 0;
		//2.048mSごとに割り込み---
		T05_Counter++;
		if(T05_Counter > 244)
		{
			T05_Counter = 0;
			Cycle_Unit.Bit.t05 = 1;
		}
		T1_Counter++;
		if(T1_Counter > 488)
		{
			T1_Counter = 0;
			Cycle_Unit.Bit.t1 = 1;
			ConvertStep = 1;
		}
		switch(ConvertStep)
		{
			case 4://変換完了
				Adc_Data = ADC_DATA_BUF.WORD;
				AdcDataGetFlag = 1;
				ConvertStep = 0;
				break;
			case 2://変換開始
				GO_nDONE = 1;
				ConvertStep = 3;
				break;
			case 1://充電
				ConvertStep = 2;
				break;
			case 3://変換待ち
			case 0://待機
			default:
				break;
		}
	}
	
	if(ADIF)
	{//AD変換完了割り込み
		ADIF = 0;
		if(GO_nDONE == 0)
		{
			ADC_DATA_BUF.BYTE[1] = ADRESH;
			ADC_DATA_BUF.BYTE[0] = ADRESL;
			ConvertStep = 4;
		}
	}
}
