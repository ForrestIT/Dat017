/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}

#define PORT_BASE 0x40021000
#define PORT_MODER ((volatile unsigned int*) PORT_BASE) 
#define PORT_OTYPER ((volatile unsigned short*) PORT_BASE + 0x4)
#define PORT_Ospeedr ((volatile unsigned int*)PORT_BASE+0x8) 
#define PORT_PUDR ((volatile unsigned int*) PORT_BASE + 0xC)

#define PORT_IDR_HIGH ((volatile unsigned char*)  PORT_BASE + 0x11)
#define PORT_IDR_LOW  ((volatile unsigned char*) PORT_BASE + 0x10)
#define PORT_ODR_HIGH ((volatile unsigned char*) PORT_BASE + 0x15)
#define PORT_ODR_LOW ((volatile unsigned char*) PORT_BASE + 0x14)


#define SysTick 0xE000E010
#define STK_CTRL ((volatile unsigned int*) (SysTick))
#define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
#define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))

#define B_E 0x40
#define B_SELECT 4
#define B_RW 2
#define B_RS 1	

unsigned char ascii_read_status(void);
void ascii_write_CMD(unsigned char command);

void init_app(void){ 
	*PORT_MODER = 0x55555555;
}	
void ascii_init(void){
	while((ascii_read_status() & 0x80) == 0x80){}
		delay_mikro(8);
		ascii_write_CMD(0x38);
		delay_mikro(39);
		ascii_write_CMD(0x0E);
		delay_mikro(39);
		ascii_write_CMD(0x06);
		delay_mikro(39);
}
void ascii_gotoxy(int x, int y){
	int address = x - 1;
	if(y == 2){
		address = address + 0x40;
	}
	ascii_write_CMD(0x80 | address);
}
void ascii_write_char(unsigned char c){
	while((ascii_read_status() & 0x80) == 0x80){}
	delay_mikro(8);
	ascii_write_data(c);
	delay_mikro(43);
}


void ascii_ctrl_bit_set( unsigned char x ){ /* Funktion för att 1-ställa bitar */
	unsigned char c;
	c = *PORT_ODR_LOW;
	c |= ( B_SELECT | x );
	*PORT_ODR_LOW = c;
}
void ascii_ctrl_bit_clear( unsigned char x ){
	unsigned char c;
	c = *PORT_ODR_LOW;
	c = B_SELECT | ( c & ~x );
	*PORT_ODR_LOW = c;
} 

void ascii_write_controller(unsigned char c){
	ascii_ctrl_bit_set(B_E);
	*PORT_ODR_HIGH = c;
	delay_250ns();
	ascii_ctrl_bit_clear(B_E);
}
void ascii_write_CMD(unsigned char command){
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(command);
}
void ascii_write_data(unsigned char data){
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_clear(B_RW);
	ascii_write_controller(data);
}
unsigned char ascii_read_controller(void){
	ascii_ctrl_bit_set(B_E);
	delay_250ns();
	delay_250ns();
	unsigned char r = *PORT_IDR_HIGH;
	ascii_ctrl_bit_clear(B_E);
	return r;
}
unsigned char ascii_read_status(void){
	*PORT_MODER = 0x00005555;
	ascii_ctrl_bit_clear(B_RS);
	ascii_ctrl_bit_set(B_RW);
	unsigned char r = ascii_read_controller();
	*PORT_MODER = 0x55555555;
	return r;
}
unsigned char ascii_read_data(void){
	unsigned char rv;
	*PORT_MODER = 0x00005555;
	ascii_ctrl_bit_set(B_RS);
	ascii_ctrl_bit_set(B_RW);
	rv = ascii_read_controller;
	*PORT_MODER = 0x55555555;
	return rv;
}

void delay_250ns ( void ) {
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
void delay_milli (unsigned int ms){
		delay_mikro(ms * 1000);
}

int main(int argc, char**argv){
	char *s;
	int Points = 20;
	char test1[] = "Player1 ";
	char test2[] = "   Points in here? ";
	
	init_app();
	ascii_init();
	ascii_gotoxy(1,1);
	s = test1;
	while(*s)
		ascii_write_char(*s++);
	ascii_write_char(tiotal + '0');
	ascii_write_char(ental + '0');
	ascii_gotoxy(1,2);
	s = test2;
	while(*s)
		ascii_write_char(*s++);
	return 0;
}

