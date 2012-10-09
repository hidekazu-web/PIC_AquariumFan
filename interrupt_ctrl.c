#include <htc.h>

#include "interrupt_ctrl.h"
#include "ADC_CTRL.H"


void int_init(void);	//���荞�ݏ������Ŏg�p����ϐ��Ȃǂ̏�����---
void t0_int(void);		//timer0���荞��---
void rx_int(void);		//��M���荞��---
void tx_int(void);		//���M���荞��---

volatile unsigned char T05_Counter;
volatile unsigned int T1_Counter;
volatile union TimeCycle_Union Cycle_Unit;

//���荞�ݏ������Ŏg�p����ϐ��Ȃǂ̏�����-----
void int_init(void)
{
	TMR0 = 0;
	
	T05_Counter = 0;
	T1_Counter = 0;
	Cycle_Unit.Byte = 0x00;
}


//���荞�݃��C��-------------------------------------------
/*static*/ void interrupt int_ctrl(void)
{
	if(TMR0IF)
	{
		TMR0IF = 0;
		TMR0 = 0;
		//2.048mS���ƂɊ��荞��---
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
			case 4://�ϊ�����
				Adc_Data = ADC_DATA_BUF.WORD;
				AdcDataGetFlag = 1;
				ConvertStep = 0;
				break;
			case 2://�ϊ��J�n
				GO_nDONE = 1;
				ConvertStep = 3;
				break;
			case 1://�[�d
				ConvertStep = 2;
				break;
			case 3://�ϊ��҂�
			case 0://�ҋ@
			default:
				break;
		}
	}
	
	if(ADIF)
	{//AD�ϊ��������荞��
		ADIF = 0;
		if(GO_nDONE == 0)
		{
			ADC_DATA_BUF.BYTE[1] = ADRESH;
			ADC_DATA_BUF.BYTE[0] = ADRESL;
			ConvertStep = 4;
		}
	}
}
