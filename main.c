#include <htc.h>
#include <string.h>
#include "ADC_CTRL.H"
#include "hw_init.h"
#include "Measure.h"
#include "vfd_ctrl.h"
#include "vfd_data.h"
#include "interrupt_ctrl.h"


//__CONFIG(UNPROTECT & CCPRB0 & DEBUGDIS & LVPDIS & BOREN & MCLRDIS & PWRTEN & WDTDIS & INTIO);
//__CONFIG(FCMEN & IESOEN);
//__CONFIG(CP_OFF & CCPRB0 & DEBUG_OFF & LVP_OFF & BOREN_OFF & MCLRE_OFF & PWRTE_ON & WDTE_OFF & INTIO);
//__CONFIG(FCMEN & IESOEN);

__CONFIG(FOSC_INTOSCIO & WDTE_OFF & PWRTE_ON & MCLRE_OFF & BOREN_OFF & IESO_OFF & LVP_OFF);


#define FAN RB0
#define ON  1
#define OFF 0

static unsigned char Rly_str[2][17] = {
	"FAN           ON",
	"FAN          OFF"
};	


void main(void);

double Temp;

void main(void)
{
	unsigned char i;
	double sum;

	hw_init();
	int_init();
	vfd_data_init();
	vfd_init();
	
	Temp = 0.0;
	
	GIE		= 1;

	while(1){
		//Measure();
		if(AdcDataGetFlag)
		{
			AdcDataGetFlag = 0;
			Adc_Buf[Adc_point++] = Adc_Data&0x03FF;
			if(Adc_point >= 10) Adc_point = 0;
			sum = 0.0;
			for(i = 0; i < 10; i++)sum += (double)Adc_Buf[i];
			Adc_data = (int)(sum / 10.0);
			
			//1.5ŽF45countA45.5ŽF950count
			//ŒX‚«0.04861878count/Ž
			Temp = 0.04861878*((double)(Adc_data-45))+1.5;
			
			//RLY
			//28Ž:ON  26Ž:OFF
			if(Temp > 28.0)
			{
				FAN = ON;
				strcpy(Downside_Data, Rly_str[0]);
			}
			if(Temp < 26.0)
			{
				FAN = OFF;
				strcpy(Downside_Data, Rly_str[1]);
			}
		}
		
		//vfd_ctrl();
		//InttoAscii(Adc_data, Upside_Data);
		{
			strcpy(Upside_Data,	"Temp            ");
			DoubletoAscii(Temp, Upside_Data);
			Upside_Data[14] = 0xDF; //"K"
			Upside_Data[15] = 'C';
		}
		strcpy(Vfd_Data, Upside_Data);
		strcat(Vfd_Data, Downside_Data);
	
		vfd_write(HOME);
		for(i = 0; i < 32; i++) vfd_write(Vfd_Data[i]);
	}

}