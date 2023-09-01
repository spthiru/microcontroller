#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void main()
{
	TRISD=0;
	TRISB=0;
	int arr[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90};
	while(1)
	{
		for(int i=0;i<10;i++)
		{
		 PORTB=arr[i];
		 for(int j=0;j<10;j++)
		 {
			PORTD=arr[j];
			__delay_ms(1000);
	     }
			__delay_ms(500);
			PORTB=0;
		}
	}
}