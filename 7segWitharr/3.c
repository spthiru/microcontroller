#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void main()
{
	TRISB=0;
	TRISD=0;
	int arr[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90};
	while(1)
	{	
		RD0=1;
		RD1=1;
		RD2=1;
		RD3=1;
		for(int i=0;i<10;i++)
		{
			for(int j=0;j<10;j++)
			{
				for(int l=0;l<10;l++)
				{
					for(int m=0;m<10;m++)
					{
						
						for(int k=0; k<50; k++)
						{
							RD0=1;
							__delay_ms(3);
							RD1=0;
							RD2=0;
							RD3=0;
							PORTB=arr[i];
							
							RD1=1;
							__delay_ms(3);
							RD0=0;
							RD2=0;
							RD3=0;
							PORTB=arr[j];
							
							RD2=1;
							__delay_ms(3);
							RD1=0;
							RD0=0;
							RD3=0;
							PORTB=arr[l];
							
							RD3=1;
							__delay_ms(3);
							RD0=0;
							RD1=0;
							RD2=0;
							PORTB=arr[m];
							
						}		
					}
				}			
			}
		}     
	}
}