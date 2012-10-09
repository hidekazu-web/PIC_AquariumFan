#include <htc.h>
#include <string.h>

#include "vfd_data.h"

void vfd_data_init(void);

unsigned char Upside_Data[17];
unsigned char Downside_Data[17];
unsigned char Vfd_Data[33];

void vfd_data_init(void)
{
	unsigned char i;
	strcpy(Upside_Data,	"   Now Loading  ");
	strcpy(Downside_Data,	"0123456789ABCDEF");
}		
