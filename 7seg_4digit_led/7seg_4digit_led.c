#include <htc.h>
__CONFIG(0x1f7a);
#define _XTAL_FREQ 20000000
void main()
{
	TRISB=0;
	TRISD=0;
	TRISC0=0;
	int arr[10]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
	while(1)
	{
		RD0=1;
		RD1=1;
		RD2=1;
		RD3=1;
		for(int i=0;i<6;i++)
		{
			for(int j=0;j<10;j++)
			{
				for(int k=0;k<6;k++)
				{
					for(int l=0;l<10;l++)
					{
						for(int m=0;m<150;m++)
						{
								if(RC0==1)
								{
									while(1)
									{
										RD0=1;
										__delay_ms(3);
										RD1=0;
										RD2=0;
										RD3=0;
										PORTB=arr[i];
										__delay_ms(3);
										PORTB=0;
					
										RD1=1;
										__delay_ms(3);
										RD0=0;
										RD2=0;
										RD3=0;
										PORTB=arr[j];
										__delay_ms(3);
										PORTB=0;
										
											RD2=1;
										__delay_ms(3);
										RD0=0;
										RD1=0;
										RD3=0;
										PORTB=arr[k];
										__delay_ms(3);
										PORTB=0;
										
											RD3=1;
										__delay_ms(3);
										RD0=0;
										RD2=0;
										RD1=0;
										PORTB=arr[l];
										__delay_ms(3);
										PORTB=0;
										if(RC0==0)
										{
										break;
										}
									}
								}
							else
							{
								RD0=1;
								__delay_ms(1);
								RD1=0;
								RD2=0;
								RD3=0;
								PORTB=arr[i];
								__delay_ms(1);
								PORTB=0;
					
								RD1=1;
								__delay_ms(1);
								RD0=0;
								RD2=0;
								RD3=0;
								PORTB=arr[j];
								__delay_ms(1);
								PORTB=0;
								
									RD2=1;
								__delay_ms(1);
								RD1=0;
								RD0=0;
								RD3=0;
								PORTB=arr[k];
								__delay_ms(1);
								PORTB=0;
								
									RD3=1;
								__delay_ms(1);
								RD1=0;
								RD2=0;
								RD0=0;
								PORTB=arr[l];
								__delay_ms(1);
								PORTB=0;
								}
							}	
						}
					}
				}
			}
	}
}				