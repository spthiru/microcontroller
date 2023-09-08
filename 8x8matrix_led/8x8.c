#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void main()
{
	TRISD=0;//Output mode set D port
	TRISC=0;//Output mode set C port
	while(1)
	{
	/*	for(int i=0;i<9;i++)
		{
			PORTD=0xff<<i;
			PORTC=0xff<<i;
			__delay_ms(100);
			PORTD=0;
			PORTC=0;
			
			PORTD=0xff>>i;
			PORTC=0xff>>i;
			__delay_ms(100);
			PORTD=0;
			PORTC=0;
			__delay_ms(50);
		}
		__delay_ms(200);
		for(int i=0;i<9;i++)
		{
			PORTD=0Xff<<i;
			PORTC=0x01<<i;
			__delay_ms(100);
			PORTD=0;
			PORTC=0;
			__delay_ms(100);
	}
	__delay_ms(500);*/
		for(int i=0;i<500;i++)
		{	
			PORTD=0x02;
			PORTC=0x03C;
			__delay_ms(1);
			
			
			PORTD=0x04;
			PORTC=0x04;
			__delay_ms(1);
			
			
			PORTD=0x08;
			PORTC=0x3C;
			__delay_ms(1);
			
			
			PORTD=0x10;
			PORTC=0x20;
			__delay_ms(1);
			
			
			PORTD=0x20;
			PORTC=0x3C;
			__delay_ms(1);
			
		}
		for(int i=0;i<1000;i++)
		{
			PORTD=0x02;
			PORTC=0x1c;
			__delay_ms(1);
			
			PORTD=0x04;
			PORTC=0x24;
			__delay_ms(1);
			
			PORTD=0x08;
			PORTC=0x24;
			__delay_ms(1);
		
			PORTD=0x10;
			PORTC=0x1c;
			__delay_ms(1);
			
			PORTD=0x20;
			PORTC=0x04;
			__delay_ms(1);
				
		}
		for(int i=0;i<500;i++)
		{
			PORTD=0x02;
			PORTC=0x3e;
			__delay_ms(1);
			
			PORTD=0x04;
			PORTC=0x08;
			__delay_ms(1);
			
			PORTD=0x08;
			PORTC=0x08;
			__delay_ms(1);
		
			PORTD=0x10;
			PORTC=0x08;
			__delay_ms(1);
			
			PORTD=0x20;
			PORTC=0x08;
			__delay_ms(1);
			
		}
		for(int i=0;i<500;i++)
		{
			PORTD=0x02;
			PORTC=0x00;
			__delay_ms(1);
			
			PORTD=0x04;
			PORTC=0x24;
			__delay_ms(1);
			
			PORTD=0x08;
			PORTC=0x24;
			__delay_ms(1);
		
			PORTD=0x10;
			PORTC=0x3c;
			__delay_ms(1);
			
			PORTD=0x20;
			PORTC=0x24;
			__delay_ms(1);
			
			PORTD=0x40;
			PORTC=0x24;
			__delay_ms(1);
		}
		for(int i=0;i<500;i++)
		{
			PORTD=0x02;
			PORTC=0x1c;
			__delay_ms(1);
			
			PORTD=0x04;
			PORTC=0x24;
			__delay_ms(1);
			
			PORTD=0x08;
			PORTC=0x24;
			__delay_ms(1);
		
			PORTD=0x10;
			PORTC=0x1c;
			__delay_ms(1);
			
			PORTD=0x20;
			PORTC=0x04;
			__delay_ms(1);
		}
		for(int i=0;i<500;i++)
		{
			
			PORTD=0x01;//row
			PORTC=0x01;//column
			__delay_ms(1);
			
			
			PORTD=0x02;//row
			PORTC=0x02;//column
			__delay_ms(1);
			
				PORTD=0x04;//row
			PORTC=0x04;//column
			__delay_ms(1);
			
				PORTD=0x08;//row
			PORTC=0x08;//column
			__delay_ms(1);
			
				PORTD=0x10;//row
			PORTC=0x10;//column
			__delay_ms(1);
			
			
				PORTD=0x20;//row
			PORTC=0x20;//column
			__delay_ms(1);
			
				PORTD=0x40;//row
			PORTC=0x40;//column
			__delay_ms(1);
			
				PORTD=0x80;//row
			PORTC=0x80;//column
			__delay_ms(1);
		}
	}
}