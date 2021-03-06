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
#define PORT_DISPLAY_BASE 0x40021000 // MD407 port E
#define portModer ((volatile unsigned int *) (PORT_DISPLAY_BASE))
#define portOtyper ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x4))
#define portOspeedr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0x8))
#define portPupdr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0xC))
#define portIdr ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x10))
#define portIdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x11))
#define portOdrLow ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14))
#define portOdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14+1))

#define GPIO_D 0x40020C00
#define GPIO_MODER ((volatile unsigned int*) GPIO_D) 
#define GPIO_IDR_HIGH ((volatile unsigned char*)  GPIO_D + 0x11)
#define GPIO_IDR_LOW  ((volatile unsigned char*) GPIO_D + 0x10)
#define GPIO_ODR_HIGH ((volatile unsigned char*) GPIO_D + 0x15)
#define GPIO_ODR_LOW ((volatile unsigned char*) GPIO_D + 0x14)
#define GPIO_PUDR ((volatile unsigned int*) GPIO_D + 0xC)
#define GPIO_OTYPER ((volatile unsigned short*) GPIO_D + 0x4)

#define SysTick 0xE000E010
#define STK_CTRL ((volatile unsigned int*) (SysTick))
#define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
#define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))

#define B_E 0x40 // Enable
#define B_RST 0x20 // Reset
#define B_CS2 0x10 // Controller Select 2
#define B_CS1 8 // Controller Select 1
#define B_SELECT 4 // 0 Graphics, 1 ASCII
#define B_RW 2 // 0 Write, 1 Read
#define B_RS 1 // 0 Command, 1 Data

#define LCD_ON 0x3F // Display on
#define LCD_OFF 0x3E // Display off
#define LCD_SET_ADD 0x40 // Set horizontal coordinate
#define LCD_SET_PAGE 0xB8 // Set vertical coordinate
#define LCD_DISP_START 0xC0 // Start address
#define LCD_BUSY 0x80 // Read busy status

#define SIMULATOR 1

#define MAX_POINTS 20

unsigned char Segcodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
unsigned char Key[16]  = {1,2,3,0xA, 4, 5, 6 , 0xB, 7, 8, 9, 0xC, 0xE, 0, 0xF, 0xD};

typedef unsigned char uint8_t;
typedef struct tpoint{
	unsigned char x;
	unsigned char y;
}POINT;
typedef struct tGeometry{
	int numPoints;
	int sizeX;
	int sizeY;
	POINT px[MAX_POINTS];
}GEOMETRY, *PGEOMETRY;
typedef struct tObj{
	PGEOMETRY geo;
	int dirx,diry;
	int posx,posy;
	void (*draw)(struct tobj*);
	void (*clear)(struct tobj*);
	void (*move)(struct tobj*);
	void (*set_speed)(struct tobj*, int, int);
}OBJECT, *POBJECT;




//funktions declarationer
void graphic_initialize(void);
static void graphic_write_command(uint8_t command, uint8_t controller);
static void graphic_write_data(uint8_t data, uint8_t controller);
static void graphic_write(uint8_t value, uint8_t controller);
static void graphic_ctrl_bit_clear(uint8_t x);
void move_object(POBJECT O);
void clear_object(POBJECT O);
void draw_object(POBJECT O);
void set_object_speed(POBJECT O, int speedx, int speedy);

GEOMETRY ball_geometry ={
	.numPoints = 12,
	.sizeX = 4,
	.sizeY = 4,
	{
		/* px[0,1,2 ....] */
		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
		{3,1}, {3,2}
	}
};
static OBJECT ball = {
	.geo = &ball_geometry,
	.dirx = 0,
	.diry = 0,
	.posx = 1,
	.posy = 1,
	draw_object,
	clear_object,
	move_object,
	set_object_speed
};

void init_app(void){ 
	*portModer = 0x55555555;
	*GPIO_MODER = 0x55005555;
	*GPIO_OTYPER = 0x0F00;
	*GPIO_PUDR = 0xAA000000;
}	

// Graphic Funktioner
static void graphic_ctrl_bit_set(uint8_t x) {
uint8_t c;
c = *portOdrLow;
c &= ~B_SELECT;
c |= (~B_SELECT & x);
*portOdrLow = c;
}
static void graphic_ctrl_bit_clear(uint8_t x) {
uint8_t c;
c = *portOdrLow;
c &= ~B_SELECT;
c &= ~x;
*portOdrLow = c;
}
static void select_controller(uint8_t controller){
	switch(controller){
		case 0:
			graphic_ctrl_bit_clear(B_CS1|B_CS2);
			break;
		case B_CS1 :
			graphic_ctrl_bit_set(B_CS1);
			graphic_ctrl_bit_clear(B_CS2);
			break;
		case B_CS2 :
			graphic_ctrl_bit_set(B_CS2);
			graphic_ctrl_bit_clear(B_CS1);
			break;
		case B_CS1|B_CS2 :
			graphic_ctrl_bit_set(B_CS1|B_CS2);
			break;
	}
}
void graphic_initialize(void) {
	graphic_ctrl_bit_set(B_E);
	delay_mikro(10);
	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
	delay_milli(30);
	graphic_ctrl_bit_set(B_RST);
	delay_milli(100);
	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
	graphic_write_command(LCD_ON, B_CS1|B_CS2);
	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
	select_controller(0);
}
static void graphic_wait_ready(void) {
	uint8_t c;
	graphic_ctrl_bit_clear(B_E);
	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
	graphic_ctrl_bit_clear(B_RS);
	graphic_ctrl_bit_set(B_RW);
	delay_500ns();
	while(1) {
		graphic_ctrl_bit_set(B_E);
		delay_500ns();
		c = *portIdrHigh & LCD_BUSY;
		graphic_ctrl_bit_clear(B_E);
		delay_500ns();
		if( c == 0 ) break;
	}
	*portModer = 0x55555555; // 15-0 outputs
}
static uint8_t graphic_read(uint8_t controller) {
	uint8_t c;
	graphic_ctrl_bit_clear(B_E);
	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
	graphic_ctrl_bit_set(B_RS|B_RW);
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	c = *portIdrHigh;
	graphic_ctrl_bit_clear(B_E);
	*portModer = 0x55555555; // 15-0 outputs
	if( controller & B_CS1 ) {
		select_controller(B_CS1);
		graphic_wait_ready();
	}
	if( controller & B_CS2 ) {
		select_controller(B_CS2);
		graphic_wait_ready();
	}
return c;
}
static uint8_t graphic_read_data(uint8_t controller) {
graphic_read(controller);
return graphic_read(controller);
}
static void graphic_write(uint8_t value, uint8_t controller) {
	*portOdrHigh = value;
	select_controller(controller);
	delay_500ns();
	graphic_ctrl_bit_set(B_E);
	delay_500ns();
	graphic_ctrl_bit_clear( B_E );
	if(controller & B_CS1) {
		select_controller( B_CS1);
		graphic_wait_ready();
	}
	if(controller & B_CS2) {
		select_controller( B_CS2);
		graphic_wait_ready();
	}
}
static void graphic_write_command(uint8_t command, uint8_t controller) {
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_clear(B_RS|B_RW);
	graphic_write(command, controller);
}
static void graphic_write_data(uint8_t data, uint8_t controller) {
	graphic_ctrl_bit_clear(B_E);
	select_controller(controller);
	graphic_ctrl_bit_set(B_RS);
	graphic_ctrl_bit_clear(B_RW);
	graphic_write(data, controller);
}
void graphic_clear_screen(void) {
	uint8_t i, j;
	for(j = 0; j < 8; j++) {
		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
		for(i = 0; i <= 63; i++){
			graphic_write_data(0, B_CS1|B_CS2);
		}
	}
}

void pixel(int x, int y, int set) {
	uint8_t mask, c, controller;
	int index;
	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
	index = (y-1)/8;
	switch( (y-1)%8 ) {
		case 0: mask = 1; break;
		case 1: mask = 2; break;
		case 2: mask = 4; break;
		case 3: mask = 8; break;
		case 4: mask = 0x10; break;
		case 5: mask = 0x20; break;
		case 6: mask = 0x40; break;
		case 7: mask = 0x80; break;
	}
		if(set == 0)
			mask = ~mask;
		if(x > 64){
			controller = B_CS2;
		x = x - 65;
		} 
		else {
		controller = B_CS1;
		x = x-1;
		}
		graphic_write_command(LCD_SET_ADD | x, controller );
		graphic_write_command(LCD_SET_PAGE | index, controller );
		c = graphic_read_data(controller);
		graphic_write_command(LCD_SET_ADD | x, controller);
		if(set)
			mask = mask | c;
		else
			mask = mask & c;
		graphic_write_data(mask, controller);
}

void set_object_speed(POBJECT O, int speedx, int speedy){
	O->dirx = speedx;
	O->diry = speedy;
}
void draw_object(POBJECT O){
	for(int i = 0; i < MAX_POINTS ;i++){
		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
	}
}
void clear_object(POBJECT O){
	for(int i = 0; i < MAX_POINTS; i++){
		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
	}
}
void move_object(POBJECT O){
	clear_object(O);
	O->posx += O->dirx;
	O->posy += O->diry;
	if(O->posx < 1 || O->posx > 128){
		O->dirx = -(O->dirx);
	}
	else if(O->posy < 1 || O->posy > 128 - O->geo->sizeY){
		O->diry = -(O->diry);
	}
	draw_object(O);
}

//Delay funktioner
void delay_250ns ( void ) {
		*STK_CTRL = 0x00;
		*STK_LOAD = ((168/4) - 1);
		*STK_VAL = 0;
		*STK_CTRL = 5;
		while ((*STK_CTRL & 0x10000) == 0){}
		*STK_CTRL = 0;
}
void delay_500ns(void){
	delay_250ns();
	delay_250ns();
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
	#ifdef SIMULATOR
		delay_mikro(ms);
	#else
		delay_mikro(ms * 1000);
	#endif
}

//Keypad Funktioner
unsigned char keyb(void){
	int row, column;
	for (row = 1; row <= 4; row++){
		ActivateRow(row);
		if (column = ReadColumn()){
			ActivateRow(0);
			return Key[4*(row-1) + (column-1)];
		}
	}
	ActivateRow(0);
	return 0xFF;
}
void ActivateRow(char row){
	switch(row){
		case 1: *GPIO_ODR_HIGH = 0x10; break;
		case 2: *GPIO_ODR_HIGH = 0x20; break;
		case 3: *GPIO_ODR_HIGH = 0x40; break;
		case 4: *GPIO_ODR_HIGH = 0x80; break;
		case 0: *GPIO_ODR_HIGH = 0x00; break;
	}
}
int ReadColumn (void){
	unsigned char c;
	c = *GPIO_IDR_HIGH;
	if(c & 0x8) return 4;
	if(c & 0x4) return 3;
	if(c & 0x2) return 2;
	if(c & 0x1) return 1;
	return 0;
}
void out7seg(unsigned char c){
	if (c > 0xF){
		*GPIO_ODR_LOW = 0x00;
	}
	else *GPIO_ODR_LOW = Segcodes[c];
	}

//Main
void main(void){
	char c;
	POBJECT p = &ball;
	init_app();
	graphic_initialize();
	#ifndef SIMULATOR
		graphic_clear_screen();
	#endif
	while(1){
		p->move(p);
		delay_milli(40);
		c = keyb();
		switch(c){
			case 6: p->set_speed(p, 2, 0); break;
			case 4: p->set_speed(p, -2, 0); break;
			case 2: p->set_speed(p, 0, -2); break;
			case 8: p->set_speed(p, 0, 2); break;
		}
	}
}



