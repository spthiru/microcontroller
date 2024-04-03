 #include <htc.h>
 #define _XTAL_FREQ 20000000
 __CONFIG(0x1f7a);
 
 void uart_tx()
 {
	 TRISC = 0;
     TRISD = 0; 
	
		
		// initialization
		
	       //act as asynchronous CSRC bit don't care
	        //select bit TX9
		     TX9 = 0;
		     //USART mode select bit
		     SYNC = 0;
		     
		     //high baudrate select bit
		     BRGH = 0;
		     SPEN = 1;
		     
		//start transmit 
		//enable TXEN bit
		  TXEN = 1;
		  
		//Baudrate value
		  SPBRG = 31;
		 
		//load value 
		TXREG ='m' ;
			
		//wait untill fully loaded data TMRT bit
		while(TRMT != 1);
		
		 
		//interrupt flag set
		 while(TXIF != 0);
 }
 int main()
 {
	 while(1)
	 {
	   uart_tx();
	 }  
 }