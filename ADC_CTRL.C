/* インクルード */
#include <htc.h>
#include "ADC_CTRL.H"

/* 定数定義 */

/* プロトタイプ宣言 */
void Adc_init(void);
unsigned char Get_Adc(void);

/* 変数宣言 */
volatile union ADC_DATA_UNI	ADC_DATA_BUF;
volatile int					Adc_Data;
volatile unsigned char		AdcDataGetFlag;
volatile int					Adc_data;
volatile unsigned char		ConvertStep;
int							Adc_Buf[10];
unsigned char 				Adc_point;

/***************************************************************/
/* サブルーチン */
void Adc_init(void)
{
	unsigned char i;
	
	ANSEL	= 0x01;//1:Analog Port 0:Digital Port
	ADCON1	= 0xC0;
	ADCON0	= 0x80;
	ADON = 1;
	
	ADC_DATA_BUF.WORD	= 0;
	Adc_Data			= 0;
	AdcDataGetFlag	= 0;
	Adc_data			= 0;
	for(i = 0; i < 10; i++) Adc_Buf[i] = 0;
	Adc_point = 0;
	
	ConvertStep = 0;
	GO_nDONE = 0;
}	

