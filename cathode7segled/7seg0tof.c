#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void main()
{
	TRISD=0;
	while(1)
	{
		PORTD=0b00111111;//  0th hx value(oxc0)
		__delay_ms(500);

		PORTD=0b00000110;// 1th hx value(0xf9)
		__delay_ms(500);

		PORTD=0b01011011;// 2th hx value(0xa4)
		__delay_ms(500);

		PORTD=0b01001111;// 3th hx value(0xb0)
		__delay_ms(500);

 		PORTD=0b01100110;// 4th hx value(0x99)
		__delay_ms(500);
		
		PORTD=0b01101101;// 5th hx value(0x92)
		__delay_ms(500);

		PORTD=0b01111101;// 6th hx value(0x82)
		__delay_ms(500);
	
		PORTD=0b00000111;// 7th hx value(0xf8)
		__delay_ms(500);
		
		PORTD=0b01111111;
		__delay_ms(500);// 8th hx value(0x80)

		PORTD=0b01101111;// 9th hx value(0x90)
		__delay_ms(500);
	 	
		PORTD=0b01110111;// Ath hx value(0x11)
		__delay_ms(500);

		PORTD=0b01111111;// Bth hx value(0x80)
		__delay_ms(500);
	
		PORTD=0b00111001;// Cth hx value(0xc6)
		__delay_ms(500);
	
		PORTD=0b00111111;// Dth hx value(0xc0)
		__delay_ms(500);
	
		PORTD=0b01111001;// Eth hx value(0x86)
		__delay_ms(500);

		PORTD=0b01110001;// Fth hx value(0x8d)
		__delay_ms(500);
	}
}
