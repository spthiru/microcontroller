#include <htc.h>
#define _XTAL_FREQ 20000000
#define rs RC0
#define rw RC1
#define en RC2
void lcd_command(unsigned char );
void lcd_data(unsigned char);
void delay();
void main()
{
	TRISD=0;	
	TRISC0=0;
	TRISC1=0;
	TRISC2=0;
	PORTD=0x00;
	
	lcd_command(0x0f);
	lcd_command(0x38);
	lcd_command(0x80);
	lcd_data('s');
	lcd_data('c');
	lcd_data('h');
	lcd_data('o');
	lcd_data('o');
	lcd_data('l');
	lcd_data(' ');
	lcd_data('o');
	lcd_data('f');
	lcd_data(' ');
	lcd_data('l');
	lcd_data('i');
	lcd_data('n');
	lcd_data('u');
	lcd_data('x');
	lcd_data(' ');
}	
void lcd_command(unsigned char data)
{
	rs = 0;
	rw = 0;
	en = 1;
	PORTD=data;
	delay();
	en=0;
	
}
void lcd_data(unsigned char data)
{
	rs = 1;
	rw = 0;
	en = 1;
	PORTD= data;
	delay();
	en=0;
}
void delay()
{
	TMR1CS=0;
	T1CKPS1=1;
	T1CKPS0=1;
	TMR1H=0x0b;
	TMR1L=0xbc;
	TMR1ON=1;
	while(!TMR1IF);
	TMR1IF=0;
	TMR1ON=1;
}