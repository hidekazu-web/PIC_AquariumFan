#include <pic.h>

long Power(long data, unsigned char num);					//ŠKæŠÖ”

long Power(long data, unsigned char num)
//ŠKæŠÖ”
{
	unsigned char i;
	long result;
	
	result = 1;
	
	for (i = 0; i < num; i++) {
		result *= data;
	}
	return result;
}
