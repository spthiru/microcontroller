#include <htc.h>
#define _XTAL_FREQ 20000000
__CONFIG(0x1f7a);

void i2c_wait(void)
{
	//WAIT PROCCESS BUF FULL/EMPTY
	while(SSPSTAT & 0x04 || SSPSTAT & 0x01);
}
void i2c_init(void)
{
	//SYNCRONUS SERIAL ENABLE BIT
    SSPEN = 1;
    //SYNCRONOUS SERIAL PORT MODE SELECT BIT (0X08)
    SSPM0 = 0; /* Master mode,clock = Fosc/(4*(SSPADD+1))*/
    SSPM1 = 0;
    SSPM2 = 0;
    SSPM3 = 1;
    //SSPADD BAUD RATE SET
    SSPADD = 0X3F; //STANDARD i2c CLOCK RATE
}
void gpio_config(void)
{
	//INPUT/OUTPUT MODE SET
	TRISC3 = 1; //PORTC SET OUPUT MODE
	TRISC4 = 1; //PORTC SET OUPUT MODE
}
void i2c_start(void)
{
	//START BIT 
	SEN = 1;
	i2c_wait();
	//DATA INIT
	SSPBUF = 0x42; //CHAR A DATA SENDING TO SSPBUF REG
}
void i2c_stop(void)
{
	//STOP BIT
	PEN = 1;
}
int main()
{
	gpio_config(); 
	i2c_init();
	short int val1,val2;
	while(1)
	{
	  i2c_start();
	  i2c_stop();
	  __delay_ms(100);
	}  
}	