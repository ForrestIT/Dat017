
 
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}
#define SysTick 0xE000E010
#define STK_CTRL ((volatile unsigned int*) (SysTick))
#define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
#define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))

#define	GPIO_E 0x40021000
#define GPIO_MODER ((volatile unsigned int *) (GPIO_E))
#define GPIO_ODR ((volatile unsigned int*) (GPIO_E + 0x14))

void init_app(void){ 
	*GPIO_MODER = 0x55;
}	


void delay_250ns ( void ) 
{
		*STK_CTRL = 0x00;
		*STK_LOAD = ((168/4) - 1);
		*STK_VAL = 0;
		*STK_CTRL = 5;
		while ((*STK_CTRL & 0x10000) == 0){}
		*STK_CTRL = 0;
}

void delay_mikro (unsigned int us){
	for (int i = 0; i < us; i++) {
		delay_250ns();
		delay_250ns();
		delay_250ns();
		delay_250ns();
		}
}
	
void delay_milli (unsigned int ms)
{
		delay_mikro(ms * 1000);
}

void main(void)
{
	init_app();
	while(1)
	{
		*GPIO_ODR = 0;
		delay_milli (500);
		*GPIO_ODR = 0xFF;
		delay_milli (500);
	}
	return 0;
}