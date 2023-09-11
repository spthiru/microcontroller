#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void delay();
void main()
{
	TRISD=0;
	while(1)
	{
		RD0=1;
		delay();
		RD0=0;
		delay();	
	}
}
void delay()
{
	T1CKPS1=1;
	T1CKPS0=1;
	TMR1CS=0;
	TMR1H=0x0B;
	TMR1L=0xDC;
	TMR1ON=1;    
	while(!TMR1IF);
	TMR1IF=0;
	TMR1ON=0;
	
}