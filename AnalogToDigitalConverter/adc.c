#include <htc.h>
#define _XTAL_FREQ 20000000
 __CONFIG(0x1f7a);
 
void gpio_config(void)
 {
	 //selection of TRIS b0 pin set as input mode
	 TRISA = 0xff; 
	 TRISC = 0x00;
     TRISD = 0x00; 
     //TRISB = 0x00;
 }
 void uart_init()
{
	TRISC6 = 1; 	// High for 25 pin RC6/Tx/CK
	TRISC7 = 0; 	// LOW for 26 pin RC7/Rx/DT
	TXSTA  = 0x00; 	// TX status & control Reg(add 98H)
	RCSTA  = 0x00; 	// RC status & control Reg(add 18H)
	SPBRG  = 31; 	// Badu rate set 9600 bit for second
	TXEN   = 1;		// TX enable bit
	SPEN   = 1; 	// Serial flag bit
	TXIF   = 0;		// TX interrupt flage bit
	RCIF   = 0; 	// RC interrupt flage bit
}
 void adc_config(void)
 {
	 //config analog pins/voltage reference
	 PCFG0 = 0;
	 PCFG1 = 0;
	 PCFG2 = 0;
	 PCFG3 = 0;
	 
	 //set 	ADFM as 1 
	 ADFM = 1;
	 
	
	 //CHS2:CHS0: Analog Channel Select bits
	 CHS0 = 0;
	 CHS1 = 0;
	 CHS2 = 0;
	 
	 //ADCS1:ADCS0: A/D Conversion Clock Select bits (ADCON0 bits in bold)FOSC/32 
	 ADCS0 = 0;
	 ADCS1 = 1;
	 
	 //ADCS2: A/D Conversion Clock Select bit (ADCON1 bits in shaded area and in bold)
	 ADCS2 = 0;
	 
	 
	 //ADON: A/D On bit
	 ADON = 1;
 }

 void uart_tx( char  data)
 {
	 
	 TXREG = data; // Transmit buffer
	while(TXIF == 0); // condition checking
	TXIF = 0; // clear the flage bit		 
 }
 int main()
 {
	  unsigned int val;
	  int i = 0, mod = 0, div, m = 100,k = 2;
	  int ans[];
	 gpio_config();
	 adc_config();
	while(1)
	 {
		 //acquisition time
	     __delay_us(20);
	 
	     //set GO_DONE 1
	     GO_DONE = 1;
	 
     	 //wait
	     while(GO_DONE == 0);
	 
	     //read ADRESL register 
	     //store the result to val
	     val=((ADRESH<<8)|(ADRESL));
	     
        uart_init();
        
        uart_tx(((val/100)%10)+48);
        __delay_ms(100);
        
        uart_tx(((val/10)%10)+48);
        __delay_ms(100);
        
        uart_tx((val%10)+48);
        __delay_ms(100);
	   
	     //clear interrupt
	     ADIF = 0;
		
		uart_tx('\n');
		__delay_ms(100);
		
		uart_tx('\r');
		__delay_ms(100);
		}
 }