#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void delay(void);
void main()
{
	TRISD=0;
	while(1)
	{
		PORTD=0x01;
		delay();
		PORTD=0;
		delay();
	}
}
void delay()
{
	OPTION_REG=0x07;
	TMR0=0x02;
	TMR0IE=1;
	while(TMR0IF==1);
	TMR0IE=0;
	TMR0IF=0;
}