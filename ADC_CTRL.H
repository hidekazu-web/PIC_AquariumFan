#ifndef ADC_CTRL_H
#define ADC_CTRL_H

#include <htc.h>

void Adc_init(void);
unsigned char Get_Adc(void);

union ADC_DATA_UNI{
	char	BYTE[2];
	int		WORD;
};

extern volatile union ADC_DATA_UNI	ADC_DATA_BUF;	
extern volatile int					Adc_Data;
extern volatile unsigned char		AdcDataGetFlag;
extern volatile int					Adc_data;
extern volatile unsigned char		ConvertStep;
extern int							Adc_Buf[];
extern unsigned char 				Adc_point;

#endif
