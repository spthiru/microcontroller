#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void main()
{
	TRISD=0;
	while(1)
	{
		PORTD=0b11000000;//  0th hx value(oxc0)
		__delay_ms(500);

		PORTD=0b11111001;// 1th hx value(0xf9)
		__delay_ms(500);

		PORTD=0b10100100;// 2th hx value(0xa4)
		__delay_ms(500);

		PORTD=0b10110000;// 3th hx value(0xb0)
		__delay_ms(500);

 		PORTD=0b10011001;// 4th hx value(0x99)
		__delay_ms(500);
		
		PORTD=0b10010010;// 5th hx value(0x92)
		__delay_ms(500);

		PORTD=0b10000010;// 6th hx value(0x82)
		__delay_ms(500);
	
		PORTD=0b11111000;// 7th hx value(0xf8)
		__delay_ms(500);
		
		PORTD=0b10000000;
		__delay_ms(500);// 8th hx value(0x80)

		PORTD=0b10010000;// 9th hx value(0x90)
		__delay_ms(500);
	 	
		PORTD=0b10001000;// Ath hx value(0x11)
		__delay_ms(500);

		PORTD=0b10000000;// Bth hx value(0x80)
		__delay_ms(500);
	
		PORTD=0b11000110;// Cth hx value(0xc6)
		__delay_ms(500);
	
		PORTD=0b11000000;// Dth hx value(0xc0)
		__delay_ms(500);
	
		PORTD=0b10000110;// Eth hx value(0x86)
		__delay_ms(500);

		PORTD=0b10001110;// Fth hx value(0x8d)
		__delay_ms(500);
	}
}