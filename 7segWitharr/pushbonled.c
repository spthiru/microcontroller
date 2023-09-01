#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void main()
{
	TRISB0=0;
	TRISD0=1;
	RB0=0;
	while(1)
	{
		if(RD0==0)
		{
			RB0=1;
			__delay_ms(300);
			RB0=0;
			__delay_ms(200);
		}
	}
}