   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"pongKeyPad.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad/pong
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void startup ( void )
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad/pongKeyPa
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	" MOV SP,R0\n"
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	) ;
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
  40              		.loc 1 15 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	Segcodes
  48              		.data
  49              		.align	2
  52              	Segcodes:
  53 0000 3F       		.byte	63
  54 0001 06       		.byte	6
  55 0002 5B       		.byte	91
  56 0003 4F       		.byte	79
  57 0004 66       		.byte	102
  58 0005 6D       		.byte	109
  59 0006 7D       		.byte	125
  60 0007 07       		.byte	7
  61 0008 7F       		.byte	127
  62 0009 6F       		.byte	111
  63 000a 77       		.byte	119
  64 000b 7C       		.byte	124
  65 000c 39       		.byte	57
  66 000d 5E       		.byte	94
  67 000e 79       		.byte	121
  68 000f 71       		.byte	113
  69              		.global	Key
  70              		.align	2
  73              	Key:
  74 0010 01       		.byte	1
  75 0011 02       		.byte	2
  76 0012 03       		.byte	3
  77 0013 0A       		.byte	10
  78 0014 04       		.byte	4
  79 0015 05       		.byte	5
  80 0016 06       		.byte	6
  81 0017 0B       		.byte	11
  82 0018 07       		.byte	7
  83 0019 08       		.byte	8
  84 001a 09       		.byte	9
  85 001b 0C       		.byte	12
  86 001c 0E       		.byte	14
  87 001d 00       		.byte	0
  88 001e 0F       		.byte	15
  89 001f 0D       		.byte	13
  90              		.global	ball_geometry
  91              		.align	2
  94              	ball_geometry:
  95 0020 0C000000 		.word	12
  96 0024 04000000 		.word	4
  97 0028 04000000 		.word	4
  98 002c 00       		.byte	0
  99 002d 01       		.byte	1
 100 002e 00       		.byte	0
 101 002f 02       		.byte	2
 102 0030 01       		.byte	1
 103 0031 00       		.byte	0
 104 0032 01       		.byte	1
 105 0033 01       		.byte	1
 106 0034 01       		.byte	1
 107 0035 02       		.byte	2
 108 0036 01       		.byte	1
 109 0037 03       		.byte	3
 110 0038 02       		.byte	2
 111 0039 00       		.byte	0
 112 003a 02       		.byte	2
 113 003b 01       		.byte	1
 114 003c 02       		.byte	2
 115 003d 02       		.byte	2
 116 003e 02       		.byte	2
 117 003f 03       		.byte	3
 118 0040 03       		.byte	3
 119 0041 01       		.byte	1
 120 0042 03       		.byte	3
 121 0043 02       		.byte	2
 122 0044 00000000 		.space	16
 122      00000000 
 122      00000000 
 122      00000000 
 123              		.align	2
 126              	ball:
 127 0054 00000000 		.word	ball_geometry
 128 0058 00000000 		.word	0
 129 005c 00000000 		.word	0
 130 0060 01000000 		.word	1
 131 0064 01000000 		.word	1
 132 0068 00000000 		.word	draw_object
 133 006c 00000000 		.word	clear_object
 134 0070 00000000 		.word	move_object
 135 0074 00000000 		.word	set_object_speed
 136              		.text
 137              		.align	1
 138              		.global	init_app
 139              		.syntax unified
 140              		.code	16
 141              		.thumb_func
 142              		.fpu softvfp
 144              	init_app:
 145              	.LFB1:
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define PORT_DISPLAY_BASE 0x40021000 // MD407 port E
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define portModer ((volatile unsigned int *) (PORT_DISPLAY_BASE))
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define portOtyper ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x4))
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define portOspeedr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0x8))
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define portPupdr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0xC))
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define portIdr ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x10))
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define portIdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x11))
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define portOdrLow ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14))
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define portOdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14+1))
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define GPIO_D 0x40020C00
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define GPIO_MODER ((volatile unsigned int*) GPIO_D) 
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define GPIO_IDR_HIGH ((volatile unsigned char*)  GPIO_D + 0x11)
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define GPIO_IDR_LOW  ((volatile unsigned char*) GPIO_D + 0x10)
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define GPIO_ODR_HIGH ((volatile unsigned char*) GPIO_D + 0x15)
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define GPIO_ODR_LOW ((volatile unsigned char*) GPIO_D + 0x14)
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define GPIO_PUDR ((volatile unsigned int*) GPIO_D + 0xC)
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define GPIO_OTYPER ((volatile unsigned short*) GPIO_D + 0x4)
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define SysTick 0xE000E010
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define B_E 0x40 // Enable
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define B_RST 0x20 // Reset
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define B_CS2 0x10 // Controller Select 2
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define B_CS1 8 // Controller Select 1
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define B_RW 2 // 0 Write, 1 Read
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define B_RS 1 // 0 Command, 1 Data
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define LCD_ON 0x3F // Display on
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define LCD_OFF 0x3E // Display off
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define LCD_DISP_START 0xC0 // Start address
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define LCD_BUSY 0x80 // Read busy status
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define SIMULATOR 1
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** #define MAX_POINTS 20
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** unsigned char Segcodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** unsigned char Key[16]  = {1,2,3,0xA, 4, 5, 6 , 0xB, 7, 8, 9, 0xC, 0xE, 0, 0xF, 0xD};
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** typedef unsigned char uint8_t;
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** typedef struct tpoint{
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	unsigned char x;
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	unsigned char y;
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }POINT;
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** typedef struct tGeometry{
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	int numPoints;
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	int sizeX;
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	int sizeY;
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	POINT px[MAX_POINTS];
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }GEOMETRY, *PGEOMETRY;
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** typedef struct tObj{
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	PGEOMETRY geo;
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	int dirx,diry;
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	int posx,posy;
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	void (*draw)(struct tobj*);
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	void (*clear)(struct tobj*);
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	void (*move)(struct tobj*);
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	void (*set_speed)(struct tobj*, int, int);
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }OBJECT, *POBJECT;
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  83:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  84:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  85:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  86:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** //funktions declarationer
  87:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void graphic_initialize(void);
  88:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
  89:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
  90:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_write(uint8_t value, uint8_t controller);
  91:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_ctrl_bit_clear(uint8_t x);
  92:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void move_object(POBJECT O);
  93:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void clear_object(POBJECT O);
  94:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void draw_object(POBJECT O);
  95:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void set_object_speed(POBJECT O, int speedx, int speedy);
  96:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
  97:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** GEOMETRY ball_geometry ={
  98:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	.numPoints = 12,
  99:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	.sizeX = 4,
 100:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	.sizeY = 4,
 101:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	{
 102:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		/* px[0,1,2 ....] */
 103:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
 104:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
 105:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		{3,1}, {3,2}
 106:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 107:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** };
 108:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static OBJECT ball = {
 109:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	.geo = &ball_geometry,
 110:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	.dirx = 0,
 111:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	.diry = 0,
 112:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	.posx = 1,
 113:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	.posy = 1,
 114:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	draw_object,
 115:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	clear_object,
 116:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	move_object,
 117:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	set_object_speed
 118:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** };
 119:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
 120:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void init_app(void){ 
 146              		.loc 1 120 0
 147              		.cfi_startproc
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 1, uses_anonymous_args = 0
 150 0000 80B5     		push	{r7, lr}
 151              		.cfi_def_cfa_offset 8
 152              		.cfi_offset 7, -8
 153              		.cfi_offset 14, -4
 154 0002 00AF     		add	r7, sp, #0
 155              		.cfi_def_cfa_register 7
 121:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*portModer = 0x55555555;
 156              		.loc 1 121 0
 157 0004 084B     		ldr	r3, .L3
 158 0006 094A     		ldr	r2, .L3+4
 159 0008 1A60     		str	r2, [r3]
 122:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*GPIO_MODER = 0x55005555;
 160              		.loc 1 122 0
 161 000a 094B     		ldr	r3, .L3+8
 162 000c 094A     		ldr	r2, .L3+12
 163 000e 1A60     		str	r2, [r3]
 123:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*GPIO_OTYPER = 0x0F00;
 164              		.loc 1 123 0
 165 0010 094B     		ldr	r3, .L3+16
 166 0012 F022     		movs	r2, #240
 167 0014 1201     		lsls	r2, r2, #4
 168 0016 1A80     		strh	r2, [r3]
 124:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*GPIO_PUDR = 0xAA000000;
 169              		.loc 1 124 0
 170 0018 084B     		ldr	r3, .L3+20
 171 001a AA22     		movs	r2, #170
 172 001c 1206     		lsls	r2, r2, #24
 173 001e 1A60     		str	r2, [r3]
 125:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }	
 174              		.loc 1 125 0
 175 0020 C046     		nop
 176 0022 BD46     		mov	sp, r7
 177              		@ sp needed
 178 0024 80BD     		pop	{r7, pc}
 179              	.L4:
 180 0026 C046     		.align	2
 181              	.L3:
 182 0028 00100240 		.word	1073876992
 183 002c 55555555 		.word	1431655765
 184 0030 000C0240 		.word	1073875968
 185 0034 55550055 		.word	1426085205
 186 0038 080C0240 		.word	1073875976
 187 003c 300C0240 		.word	1073876016
 188              		.cfi_endproc
 189              	.LFE1:
 191              		.align	1
 192              		.syntax unified
 193              		.code	16
 194              		.thumb_func
 195              		.fpu softvfp
 197              	graphic_ctrl_bit_set:
 198              	.LFB2:
 126:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
 127:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** // Graphic Funktioner
 128:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_ctrl_bit_set(uint8_t x) {
 199              		.loc 1 128 0
 200              		.cfi_startproc
 201              		@ args = 0, pretend = 0, frame = 16
 202              		@ frame_needed = 1, uses_anonymous_args = 0
 203 0040 80B5     		push	{r7, lr}
 204              		.cfi_def_cfa_offset 8
 205              		.cfi_offset 7, -8
 206              		.cfi_offset 14, -4
 207 0042 84B0     		sub	sp, sp, #16
 208              		.cfi_def_cfa_offset 24
 209 0044 00AF     		add	r7, sp, #0
 210              		.cfi_def_cfa_register 7
 211 0046 0200     		movs	r2, r0
 212 0048 FB1D     		adds	r3, r7, #7
 213 004a 1A70     		strb	r2, [r3]
 129:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** uint8_t c;
 130:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** c = *portOdrLow;
 214              		.loc 1 130 0
 215 004c 124A     		ldr	r2, .L6
 216 004e 0F23     		movs	r3, #15
 217 0050 FB18     		adds	r3, r7, r3
 218 0052 1278     		ldrb	r2, [r2]
 219 0054 1A70     		strb	r2, [r3]
 131:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** c &= ~B_SELECT;
 220              		.loc 1 131 0
 221 0056 0F23     		movs	r3, #15
 222 0058 FB18     		adds	r3, r7, r3
 223 005a 0F22     		movs	r2, #15
 224 005c BA18     		adds	r2, r7, r2
 225 005e 1278     		ldrb	r2, [r2]
 226 0060 0421     		movs	r1, #4
 227 0062 8A43     		bics	r2, r1
 228 0064 1A70     		strb	r2, [r3]
 132:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** c |= (~B_SELECT & x);
 229              		.loc 1 132 0
 230 0066 FB1D     		adds	r3, r7, #7
 231 0068 1B78     		ldrb	r3, [r3]
 232 006a 5BB2     		sxtb	r3, r3
 233 006c 0422     		movs	r2, #4
 234 006e 9343     		bics	r3, r2
 235 0070 5AB2     		sxtb	r2, r3
 236 0072 0F23     		movs	r3, #15
 237 0074 FB18     		adds	r3, r7, r3
 238 0076 1B78     		ldrb	r3, [r3]
 239 0078 5BB2     		sxtb	r3, r3
 240 007a 1343     		orrs	r3, r2
 241 007c 5AB2     		sxtb	r2, r3
 242 007e 0F23     		movs	r3, #15
 243 0080 FB18     		adds	r3, r7, r3
 244 0082 1A70     		strb	r2, [r3]
 133:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** *portOdrLow = c;
 245              		.loc 1 133 0
 246 0084 044A     		ldr	r2, .L6
 247 0086 0F23     		movs	r3, #15
 248 0088 FB18     		adds	r3, r7, r3
 249 008a 1B78     		ldrb	r3, [r3]
 250 008c 1370     		strb	r3, [r2]
 134:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 251              		.loc 1 134 0
 252 008e C046     		nop
 253 0090 BD46     		mov	sp, r7
 254 0092 04B0     		add	sp, sp, #16
 255              		@ sp needed
 256 0094 80BD     		pop	{r7, pc}
 257              	.L7:
 258 0096 C046     		.align	2
 259              	.L6:
 260 0098 14100240 		.word	1073877012
 261              		.cfi_endproc
 262              	.LFE2:
 264              		.align	1
 265              		.syntax unified
 266              		.code	16
 267              		.thumb_func
 268              		.fpu softvfp
 270              	graphic_ctrl_bit_clear:
 271              	.LFB3:
 135:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_ctrl_bit_clear(uint8_t x) {
 272              		.loc 1 135 0
 273              		.cfi_startproc
 274              		@ args = 0, pretend = 0, frame = 16
 275              		@ frame_needed = 1, uses_anonymous_args = 0
 276 009c 80B5     		push	{r7, lr}
 277              		.cfi_def_cfa_offset 8
 278              		.cfi_offset 7, -8
 279              		.cfi_offset 14, -4
 280 009e 84B0     		sub	sp, sp, #16
 281              		.cfi_def_cfa_offset 24
 282 00a0 00AF     		add	r7, sp, #0
 283              		.cfi_def_cfa_register 7
 284 00a2 0200     		movs	r2, r0
 285 00a4 FB1D     		adds	r3, r7, #7
 286 00a6 1A70     		strb	r2, [r3]
 136:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** uint8_t c;
 137:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** c = *portOdrLow;
 287              		.loc 1 137 0
 288 00a8 114A     		ldr	r2, .L9
 289 00aa 0F23     		movs	r3, #15
 290 00ac FB18     		adds	r3, r7, r3
 291 00ae 1278     		ldrb	r2, [r2]
 292 00b0 1A70     		strb	r2, [r3]
 138:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** c &= ~B_SELECT;
 293              		.loc 1 138 0
 294 00b2 0F23     		movs	r3, #15
 295 00b4 FB18     		adds	r3, r7, r3
 296 00b6 0F22     		movs	r2, #15
 297 00b8 BA18     		adds	r2, r7, r2
 298 00ba 1278     		ldrb	r2, [r2]
 299 00bc 0421     		movs	r1, #4
 300 00be 8A43     		bics	r2, r1
 301 00c0 1A70     		strb	r2, [r3]
 139:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** c &= ~x;
 302              		.loc 1 139 0
 303 00c2 FB1D     		adds	r3, r7, #7
 304 00c4 1B78     		ldrb	r3, [r3]
 305 00c6 5BB2     		sxtb	r3, r3
 306 00c8 DB43     		mvns	r3, r3
 307 00ca 5BB2     		sxtb	r3, r3
 308 00cc 0F22     		movs	r2, #15
 309 00ce BA18     		adds	r2, r7, r2
 310 00d0 1278     		ldrb	r2, [r2]
 311 00d2 52B2     		sxtb	r2, r2
 312 00d4 1340     		ands	r3, r2
 313 00d6 5AB2     		sxtb	r2, r3
 314 00d8 0F23     		movs	r3, #15
 315 00da FB18     		adds	r3, r7, r3
 316 00dc 1A70     		strb	r2, [r3]
 140:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** *portOdrLow = c;
 317              		.loc 1 140 0
 318 00de 044A     		ldr	r2, .L9
 319 00e0 0F23     		movs	r3, #15
 320 00e2 FB18     		adds	r3, r7, r3
 321 00e4 1B78     		ldrb	r3, [r3]
 322 00e6 1370     		strb	r3, [r2]
 141:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 323              		.loc 1 141 0
 324 00e8 C046     		nop
 325 00ea BD46     		mov	sp, r7
 326 00ec 04B0     		add	sp, sp, #16
 327              		@ sp needed
 328 00ee 80BD     		pop	{r7, pc}
 329              	.L10:
 330              		.align	2
 331              	.L9:
 332 00f0 14100240 		.word	1073877012
 333              		.cfi_endproc
 334              	.LFE3:
 336              		.align	1
 337              		.syntax unified
 338              		.code	16
 339              		.thumb_func
 340              		.fpu softvfp
 342              	select_controller:
 343              	.LFB4:
 142:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void select_controller(uint8_t controller){
 344              		.loc 1 142 0
 345              		.cfi_startproc
 346              		@ args = 0, pretend = 0, frame = 8
 347              		@ frame_needed = 1, uses_anonymous_args = 0
 348 00f4 80B5     		push	{r7, lr}
 349              		.cfi_def_cfa_offset 8
 350              		.cfi_offset 7, -8
 351              		.cfi_offset 14, -4
 352 00f6 82B0     		sub	sp, sp, #8
 353              		.cfi_def_cfa_offset 16
 354 00f8 00AF     		add	r7, sp, #0
 355              		.cfi_def_cfa_register 7
 356 00fa 0200     		movs	r2, r0
 357 00fc FB1D     		adds	r3, r7, #7
 358 00fe 1A70     		strb	r2, [r3]
 143:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	switch(controller){
 359              		.loc 1 143 0
 360 0100 FB1D     		adds	r3, r7, #7
 361 0102 1B78     		ldrb	r3, [r3]
 362 0104 082B     		cmp	r3, #8
 363 0106 0CD0     		beq	.L13
 364 0108 02DC     		bgt	.L14
 365 010a 002B     		cmp	r3, #0
 366 010c 05D0     		beq	.L15
 144:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 0:
 145:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
 146:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			break;
 147:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case B_CS1 :
 148:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_ctrl_bit_set(B_CS1);
 149:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_ctrl_bit_clear(B_CS2);
 150:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			break;
 151:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case B_CS2 :
 152:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_ctrl_bit_set(B_CS2);
 153:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_ctrl_bit_clear(B_CS1);
 154:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			break;
 155:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case B_CS1|B_CS2 :
 156:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
 157:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			break;
 158:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 159:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 367              		.loc 1 159 0
 368 010e 1AE0     		b	.L18
 369              	.L14:
 143:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	switch(controller){
 370              		.loc 1 143 0
 371 0110 102B     		cmp	r3, #16
 372 0112 0DD0     		beq	.L16
 373 0114 182B     		cmp	r3, #24
 374 0116 12D0     		beq	.L17
 375              		.loc 1 159 0
 376 0118 15E0     		b	.L18
 377              	.L15:
 145:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			break;
 378              		.loc 1 145 0
 379 011a 1820     		movs	r0, #24
 380 011c FFF7BEFF 		bl	graphic_ctrl_bit_clear
 146:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case B_CS1 :
 381              		.loc 1 146 0
 382 0120 11E0     		b	.L12
 383              	.L13:
 148:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_ctrl_bit_clear(B_CS2);
 384              		.loc 1 148 0
 385 0122 0820     		movs	r0, #8
 386 0124 FFF78CFF 		bl	graphic_ctrl_bit_set
 149:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			break;
 387              		.loc 1 149 0
 388 0128 1020     		movs	r0, #16
 389 012a FFF7B7FF 		bl	graphic_ctrl_bit_clear
 150:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case B_CS2 :
 390              		.loc 1 150 0
 391 012e 0AE0     		b	.L12
 392              	.L16:
 152:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_ctrl_bit_clear(B_CS1);
 393              		.loc 1 152 0
 394 0130 1020     		movs	r0, #16
 395 0132 FFF785FF 		bl	graphic_ctrl_bit_set
 153:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			break;
 396              		.loc 1 153 0
 397 0136 0820     		movs	r0, #8
 398 0138 FFF7B0FF 		bl	graphic_ctrl_bit_clear
 154:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case B_CS1|B_CS2 :
 399              		.loc 1 154 0
 400 013c 03E0     		b	.L12
 401              	.L17:
 156:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			break;
 402              		.loc 1 156 0
 403 013e 1820     		movs	r0, #24
 404 0140 FFF77EFF 		bl	graphic_ctrl_bit_set
 157:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 405              		.loc 1 157 0
 406 0144 C046     		nop
 407              	.L12:
 408              	.L18:
 409              		.loc 1 159 0
 410 0146 C046     		nop
 411 0148 BD46     		mov	sp, r7
 412 014a 02B0     		add	sp, sp, #8
 413              		@ sp needed
 414 014c 80BD     		pop	{r7, pc}
 415              		.cfi_endproc
 416              	.LFE4:
 418              		.align	1
 419              		.global	graphic_initialize
 420              		.syntax unified
 421              		.code	16
 422              		.thumb_func
 423              		.fpu softvfp
 425              	graphic_initialize:
 426              	.LFB5:
 160:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void graphic_initialize(void) {
 427              		.loc 1 160 0
 428              		.cfi_startproc
 429              		@ args = 0, pretend = 0, frame = 0
 430              		@ frame_needed = 1, uses_anonymous_args = 0
 431 014e 80B5     		push	{r7, lr}
 432              		.cfi_def_cfa_offset 8
 433              		.cfi_offset 7, -8
 434              		.cfi_offset 14, -4
 435 0150 00AF     		add	r7, sp, #0
 436              		.cfi_def_cfa_register 7
 161:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_set(B_E);
 437              		.loc 1 161 0
 438 0152 4020     		movs	r0, #64
 439 0154 FFF774FF 		bl	graphic_ctrl_bit_set
 162:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_mikro(10);
 440              		.loc 1 162 0
 441 0158 0A20     		movs	r0, #10
 442 015a FFF7FEFF 		bl	delay_mikro
 163:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 443              		.loc 1 163 0
 444 015e 7820     		movs	r0, #120
 445 0160 FFF79CFF 		bl	graphic_ctrl_bit_clear
 164:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_milli(30);
 446              		.loc 1 164 0
 447 0164 1E20     		movs	r0, #30
 448 0166 FFF7FEFF 		bl	delay_milli
 165:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_set(B_RST);
 449              		.loc 1 165 0
 450 016a 2020     		movs	r0, #32
 451 016c FFF768FF 		bl	graphic_ctrl_bit_set
 166:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_milli(100);
 452              		.loc 1 166 0
 453 0170 6420     		movs	r0, #100
 454 0172 FFF7FEFF 		bl	delay_milli
 167:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 455              		.loc 1 167 0
 456 0176 1821     		movs	r1, #24
 457 0178 3E20     		movs	r0, #62
 458 017a 00F0E3F8 		bl	graphic_write_command
 168:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 459              		.loc 1 168 0
 460 017e 1821     		movs	r1, #24
 461 0180 3F20     		movs	r0, #63
 462 0182 00F0DFF8 		bl	graphic_write_command
 169:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 463              		.loc 1 169 0
 464 0186 1821     		movs	r1, #24
 465 0188 C020     		movs	r0, #192
 466 018a 00F0DBF8 		bl	graphic_write_command
 170:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 467              		.loc 1 170 0
 468 018e 1821     		movs	r1, #24
 469 0190 4020     		movs	r0, #64
 470 0192 00F0D7F8 		bl	graphic_write_command
 171:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 471              		.loc 1 171 0
 472 0196 1821     		movs	r1, #24
 473 0198 B820     		movs	r0, #184
 474 019a 00F0D3F8 		bl	graphic_write_command
 172:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	select_controller(0);
 475              		.loc 1 172 0
 476 019e 0020     		movs	r0, #0
 477 01a0 FFF7A8FF 		bl	select_controller
 173:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 478              		.loc 1 173 0
 479 01a4 C046     		nop
 480 01a6 BD46     		mov	sp, r7
 481              		@ sp needed
 482 01a8 80BD     		pop	{r7, pc}
 483              		.cfi_endproc
 484              	.LFE5:
 486              		.align	1
 487              		.syntax unified
 488              		.code	16
 489              		.thumb_func
 490              		.fpu softvfp
 492              	graphic_wait_ready:
 493              	.LFB6:
 174:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_wait_ready(void) {
 494              		.loc 1 174 0
 495              		.cfi_startproc
 496              		@ args = 0, pretend = 0, frame = 8
 497              		@ frame_needed = 1, uses_anonymous_args = 0
 498 01aa 80B5     		push	{r7, lr}
 499              		.cfi_def_cfa_offset 8
 500              		.cfi_offset 7, -8
 501              		.cfi_offset 14, -4
 502 01ac 82B0     		sub	sp, sp, #8
 503              		.cfi_def_cfa_offset 16
 504 01ae 00AF     		add	r7, sp, #0
 505              		.cfi_def_cfa_register 7
 175:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	uint8_t c;
 176:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_E);
 506              		.loc 1 176 0
 507 01b0 4020     		movs	r0, #64
 508 01b2 FFF773FF 		bl	graphic_ctrl_bit_clear
 177:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 509              		.loc 1 177 0
 510 01b6 144B     		ldr	r3, .L26
 511 01b8 144A     		ldr	r2, .L26+4
 512 01ba 1A60     		str	r2, [r3]
 178:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_RS);
 513              		.loc 1 178 0
 514 01bc 0120     		movs	r0, #1
 515 01be FFF76DFF 		bl	graphic_ctrl_bit_clear
 179:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_set(B_RW);
 516              		.loc 1 179 0
 517 01c2 0220     		movs	r0, #2
 518 01c4 FFF73CFF 		bl	graphic_ctrl_bit_set
 180:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_500ns();
 519              		.loc 1 180 0
 520 01c8 FFF7FEFF 		bl	delay_500ns
 521              	.L23:
 181:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	while(1) {
 182:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_ctrl_bit_set(B_E);
 522              		.loc 1 182 0
 523 01cc 4020     		movs	r0, #64
 524 01ce FFF737FF 		bl	graphic_ctrl_bit_set
 183:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_500ns();
 525              		.loc 1 183 0
 526 01d2 FFF7FEFF 		bl	delay_500ns
 184:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		c = *portIdrHigh & LCD_BUSY;
 527              		.loc 1 184 0
 528 01d6 0E4B     		ldr	r3, .L26+8
 529 01d8 1B78     		ldrb	r3, [r3]
 530 01da DAB2     		uxtb	r2, r3
 531 01dc FB1D     		adds	r3, r7, #7
 532 01de 7F21     		movs	r1, #127
 533 01e0 8A43     		bics	r2, r1
 534 01e2 1A70     		strb	r2, [r3]
 185:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_ctrl_bit_clear(B_E);
 535              		.loc 1 185 0
 536 01e4 4020     		movs	r0, #64
 537 01e6 FFF759FF 		bl	graphic_ctrl_bit_clear
 186:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_500ns();
 538              		.loc 1 186 0
 539 01ea FFF7FEFF 		bl	delay_500ns
 187:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		if( c == 0 ) break;
 540              		.loc 1 187 0
 541 01ee FB1D     		adds	r3, r7, #7
 542 01f0 1B78     		ldrb	r3, [r3]
 543 01f2 002B     		cmp	r3, #0
 544 01f4 00D0     		beq	.L25
 182:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_500ns();
 545              		.loc 1 182 0
 546 01f6 E9E7     		b	.L23
 547              	.L25:
 548              		.loc 1 187 0
 549 01f8 C046     		nop
 188:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 189:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*portModer = 0x55555555; // 15-0 outputs
 550              		.loc 1 189 0
 551 01fa 034B     		ldr	r3, .L26
 552 01fc 054A     		ldr	r2, .L26+12
 553 01fe 1A60     		str	r2, [r3]
 190:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 554              		.loc 1 190 0
 555 0200 C046     		nop
 556 0202 BD46     		mov	sp, r7
 557 0204 02B0     		add	sp, sp, #8
 558              		@ sp needed
 559 0206 80BD     		pop	{r7, pc}
 560              	.L27:
 561              		.align	2
 562              	.L26:
 563 0208 00100240 		.word	1073876992
 564 020c 55550000 		.word	21845
 565 0210 11100240 		.word	1073877009
 566 0214 55555555 		.word	1431655765
 567              		.cfi_endproc
 568              	.LFE6:
 570              		.align	1
 571              		.syntax unified
 572              		.code	16
 573              		.thumb_func
 574              		.fpu softvfp
 576              	graphic_read:
 577              	.LFB7:
 191:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static uint8_t graphic_read(uint8_t controller) {
 578              		.loc 1 191 0
 579              		.cfi_startproc
 580              		@ args = 0, pretend = 0, frame = 16
 581              		@ frame_needed = 1, uses_anonymous_args = 0
 582 0218 80B5     		push	{r7, lr}
 583              		.cfi_def_cfa_offset 8
 584              		.cfi_offset 7, -8
 585              		.cfi_offset 14, -4
 586 021a 84B0     		sub	sp, sp, #16
 587              		.cfi_def_cfa_offset 24
 588 021c 00AF     		add	r7, sp, #0
 589              		.cfi_def_cfa_register 7
 590 021e 0200     		movs	r2, r0
 591 0220 FB1D     		adds	r3, r7, #7
 592 0222 1A70     		strb	r2, [r3]
 192:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	uint8_t c;
 193:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_E);
 593              		.loc 1 193 0
 594 0224 4020     		movs	r0, #64
 595 0226 FFF739FF 		bl	graphic_ctrl_bit_clear
 194:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 596              		.loc 1 194 0
 597 022a 1C4B     		ldr	r3, .L32
 598 022c 1C4A     		ldr	r2, .L32+4
 599 022e 1A60     		str	r2, [r3]
 195:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 600              		.loc 1 195 0
 601 0230 0320     		movs	r0, #3
 602 0232 FFF705FF 		bl	graphic_ctrl_bit_set
 196:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	select_controller(controller);
 603              		.loc 1 196 0
 604 0236 FB1D     		adds	r3, r7, #7
 605 0238 1B78     		ldrb	r3, [r3]
 606 023a 1800     		movs	r0, r3
 607 023c FFF75AFF 		bl	select_controller
 197:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_500ns();
 608              		.loc 1 197 0
 609 0240 FFF7FEFF 		bl	delay_500ns
 198:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_set(B_E);
 610              		.loc 1 198 0
 611 0244 4020     		movs	r0, #64
 612 0246 FFF7FBFE 		bl	graphic_ctrl_bit_set
 199:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_500ns();
 613              		.loc 1 199 0
 614 024a FFF7FEFF 		bl	delay_500ns
 200:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	c = *portIdrHigh;
 615              		.loc 1 200 0
 616 024e 154A     		ldr	r2, .L32+8
 617 0250 0F23     		movs	r3, #15
 618 0252 FB18     		adds	r3, r7, r3
 619 0254 1278     		ldrb	r2, [r2]
 620 0256 1A70     		strb	r2, [r3]
 201:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_E);
 621              		.loc 1 201 0
 622 0258 4020     		movs	r0, #64
 623 025a FFF71FFF 		bl	graphic_ctrl_bit_clear
 202:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*portModer = 0x55555555; // 15-0 outputs
 624              		.loc 1 202 0
 625 025e 0F4B     		ldr	r3, .L32
 626 0260 114A     		ldr	r2, .L32+12
 627 0262 1A60     		str	r2, [r3]
 203:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if( controller & B_CS1 ) {
 628              		.loc 1 203 0
 629 0264 FB1D     		adds	r3, r7, #7
 630 0266 1B78     		ldrb	r3, [r3]
 631 0268 0822     		movs	r2, #8
 632 026a 1340     		ands	r3, r2
 633 026c 04D0     		beq	.L29
 204:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		select_controller(B_CS1);
 634              		.loc 1 204 0
 635 026e 0820     		movs	r0, #8
 636 0270 FFF740FF 		bl	select_controller
 205:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_wait_ready();
 637              		.loc 1 205 0
 638 0274 FFF799FF 		bl	graphic_wait_ready
 639              	.L29:
 206:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 207:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if( controller & B_CS2 ) {
 640              		.loc 1 207 0
 641 0278 FB1D     		adds	r3, r7, #7
 642 027a 1B78     		ldrb	r3, [r3]
 643 027c 1022     		movs	r2, #16
 644 027e 1340     		ands	r3, r2
 645 0280 04D0     		beq	.L30
 208:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		select_controller(B_CS2);
 646              		.loc 1 208 0
 647 0282 1020     		movs	r0, #16
 648 0284 FFF736FF 		bl	select_controller
 209:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_wait_ready();
 649              		.loc 1 209 0
 650 0288 FFF78FFF 		bl	graphic_wait_ready
 651              	.L30:
 210:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 211:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** return c;
 652              		.loc 1 211 0
 653 028c 0F23     		movs	r3, #15
 654 028e FB18     		adds	r3, r7, r3
 655 0290 1B78     		ldrb	r3, [r3]
 212:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 656              		.loc 1 212 0
 657 0292 1800     		movs	r0, r3
 658 0294 BD46     		mov	sp, r7
 659 0296 04B0     		add	sp, sp, #16
 660              		@ sp needed
 661 0298 80BD     		pop	{r7, pc}
 662              	.L33:
 663 029a C046     		.align	2
 664              	.L32:
 665 029c 00100240 		.word	1073876992
 666 02a0 55550000 		.word	21845
 667 02a4 11100240 		.word	1073877009
 668 02a8 55555555 		.word	1431655765
 669              		.cfi_endproc
 670              	.LFE7:
 672              		.align	1
 673              		.syntax unified
 674              		.code	16
 675              		.thumb_func
 676              		.fpu softvfp
 678              	graphic_read_data:
 679              	.LFB8:
 213:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static uint8_t graphic_read_data(uint8_t controller) {
 680              		.loc 1 213 0
 681              		.cfi_startproc
 682              		@ args = 0, pretend = 0, frame = 8
 683              		@ frame_needed = 1, uses_anonymous_args = 0
 684 02ac 80B5     		push	{r7, lr}
 685              		.cfi_def_cfa_offset 8
 686              		.cfi_offset 7, -8
 687              		.cfi_offset 14, -4
 688 02ae 82B0     		sub	sp, sp, #8
 689              		.cfi_def_cfa_offset 16
 690 02b0 00AF     		add	r7, sp, #0
 691              		.cfi_def_cfa_register 7
 692 02b2 0200     		movs	r2, r0
 693 02b4 FB1D     		adds	r3, r7, #7
 694 02b6 1A70     		strb	r2, [r3]
 214:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** graphic_read(controller);
 695              		.loc 1 214 0
 696 02b8 FB1D     		adds	r3, r7, #7
 697 02ba 1B78     		ldrb	r3, [r3]
 698 02bc 1800     		movs	r0, r3
 699 02be FFF7ABFF 		bl	graphic_read
 215:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** return graphic_read(controller);
 700              		.loc 1 215 0
 701 02c2 FB1D     		adds	r3, r7, #7
 702 02c4 1B78     		ldrb	r3, [r3]
 703 02c6 1800     		movs	r0, r3
 704 02c8 FFF7A6FF 		bl	graphic_read
 705 02cc 0300     		movs	r3, r0
 216:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 706              		.loc 1 216 0
 707 02ce 1800     		movs	r0, r3
 708 02d0 BD46     		mov	sp, r7
 709 02d2 02B0     		add	sp, sp, #8
 710              		@ sp needed
 711 02d4 80BD     		pop	{r7, pc}
 712              		.cfi_endproc
 713              	.LFE8:
 715              		.align	1
 716              		.syntax unified
 717              		.code	16
 718              		.thumb_func
 719              		.fpu softvfp
 721              	graphic_write:
 722              	.LFB9:
 217:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_write(uint8_t value, uint8_t controller) {
 723              		.loc 1 217 0
 724              		.cfi_startproc
 725              		@ args = 0, pretend = 0, frame = 8
 726              		@ frame_needed = 1, uses_anonymous_args = 0
 727 02d6 80B5     		push	{r7, lr}
 728              		.cfi_def_cfa_offset 8
 729              		.cfi_offset 7, -8
 730              		.cfi_offset 14, -4
 731 02d8 82B0     		sub	sp, sp, #8
 732              		.cfi_def_cfa_offset 16
 733 02da 00AF     		add	r7, sp, #0
 734              		.cfi_def_cfa_register 7
 735 02dc 0200     		movs	r2, r0
 736 02de FB1D     		adds	r3, r7, #7
 737 02e0 1A70     		strb	r2, [r3]
 738 02e2 BB1D     		adds	r3, r7, #6
 739 02e4 0A1C     		adds	r2, r1, #0
 740 02e6 1A70     		strb	r2, [r3]
 218:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	*portOdrHigh = value;
 741              		.loc 1 218 0
 742 02e8 154A     		ldr	r2, .L40
 743 02ea FB1D     		adds	r3, r7, #7
 744 02ec 1B78     		ldrb	r3, [r3]
 745 02ee 1370     		strb	r3, [r2]
 219:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	select_controller(controller);
 746              		.loc 1 219 0
 747 02f0 BB1D     		adds	r3, r7, #6
 748 02f2 1B78     		ldrb	r3, [r3]
 749 02f4 1800     		movs	r0, r3
 750 02f6 FFF7FDFE 		bl	select_controller
 220:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_500ns();
 751              		.loc 1 220 0
 752 02fa FFF7FEFF 		bl	delay_500ns
 221:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_set(B_E);
 753              		.loc 1 221 0
 754 02fe 4020     		movs	r0, #64
 755 0300 FFF79EFE 		bl	graphic_ctrl_bit_set
 222:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_500ns();
 756              		.loc 1 222 0
 757 0304 FFF7FEFF 		bl	delay_500ns
 223:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear( B_E );
 758              		.loc 1 223 0
 759 0308 4020     		movs	r0, #64
 760 030a FFF7C7FE 		bl	graphic_ctrl_bit_clear
 224:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if(controller & B_CS1) {
 761              		.loc 1 224 0
 762 030e BB1D     		adds	r3, r7, #6
 763 0310 1B78     		ldrb	r3, [r3]
 764 0312 0822     		movs	r2, #8
 765 0314 1340     		ands	r3, r2
 766 0316 04D0     		beq	.L37
 225:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		select_controller( B_CS1);
 767              		.loc 1 225 0
 768 0318 0820     		movs	r0, #8
 769 031a FFF7EBFE 		bl	select_controller
 226:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_wait_ready();
 770              		.loc 1 226 0
 771 031e FFF744FF 		bl	graphic_wait_ready
 772              	.L37:
 227:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 228:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if(controller & B_CS2) {
 773              		.loc 1 228 0
 774 0322 BB1D     		adds	r3, r7, #6
 775 0324 1B78     		ldrb	r3, [r3]
 776 0326 1022     		movs	r2, #16
 777 0328 1340     		ands	r3, r2
 778 032a 04D0     		beq	.L39
 229:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		select_controller( B_CS2);
 779              		.loc 1 229 0
 780 032c 1020     		movs	r0, #16
 781 032e FFF7E1FE 		bl	select_controller
 230:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_wait_ready();
 782              		.loc 1 230 0
 783 0332 FFF73AFF 		bl	graphic_wait_ready
 784              	.L39:
 231:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 232:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 785              		.loc 1 232 0
 786 0336 C046     		nop
 787 0338 BD46     		mov	sp, r7
 788 033a 02B0     		add	sp, sp, #8
 789              		@ sp needed
 790 033c 80BD     		pop	{r7, pc}
 791              	.L41:
 792 033e C046     		.align	2
 793              	.L40:
 794 0340 15100240 		.word	1073877013
 795              		.cfi_endproc
 796              	.LFE9:
 798              		.align	1
 799              		.syntax unified
 800              		.code	16
 801              		.thumb_func
 802              		.fpu softvfp
 804              	graphic_write_command:
 805              	.LFB10:
 233:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 806              		.loc 1 233 0
 807              		.cfi_startproc
 808              		@ args = 0, pretend = 0, frame = 8
 809              		@ frame_needed = 1, uses_anonymous_args = 0
 810 0344 80B5     		push	{r7, lr}
 811              		.cfi_def_cfa_offset 8
 812              		.cfi_offset 7, -8
 813              		.cfi_offset 14, -4
 814 0346 82B0     		sub	sp, sp, #8
 815              		.cfi_def_cfa_offset 16
 816 0348 00AF     		add	r7, sp, #0
 817              		.cfi_def_cfa_register 7
 818 034a 0200     		movs	r2, r0
 819 034c FB1D     		adds	r3, r7, #7
 820 034e 1A70     		strb	r2, [r3]
 821 0350 BB1D     		adds	r3, r7, #6
 822 0352 0A1C     		adds	r2, r1, #0
 823 0354 1A70     		strb	r2, [r3]
 234:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_E);
 824              		.loc 1 234 0
 825 0356 4020     		movs	r0, #64
 826 0358 FFF7A0FE 		bl	graphic_ctrl_bit_clear
 235:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	select_controller(controller);
 827              		.loc 1 235 0
 828 035c BB1D     		adds	r3, r7, #6
 829 035e 1B78     		ldrb	r3, [r3]
 830 0360 1800     		movs	r0, r3
 831 0362 FFF7C7FE 		bl	select_controller
 236:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 832              		.loc 1 236 0
 833 0366 0320     		movs	r0, #3
 834 0368 FFF798FE 		bl	graphic_ctrl_bit_clear
 237:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_write(command, controller);
 835              		.loc 1 237 0
 836 036c BB1D     		adds	r3, r7, #6
 837 036e 1A78     		ldrb	r2, [r3]
 838 0370 FB1D     		adds	r3, r7, #7
 839 0372 1B78     		ldrb	r3, [r3]
 840 0374 1100     		movs	r1, r2
 841 0376 1800     		movs	r0, r3
 842 0378 FFF7ADFF 		bl	graphic_write
 238:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 843              		.loc 1 238 0
 844 037c C046     		nop
 845 037e BD46     		mov	sp, r7
 846 0380 02B0     		add	sp, sp, #8
 847              		@ sp needed
 848 0382 80BD     		pop	{r7, pc}
 849              		.cfi_endproc
 850              	.LFE10:
 852              		.align	1
 853              		.syntax unified
 854              		.code	16
 855              		.thumb_func
 856              		.fpu softvfp
 858              	graphic_write_data:
 859              	.LFB11:
 239:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** static void graphic_write_data(uint8_t data, uint8_t controller) {
 860              		.loc 1 239 0
 861              		.cfi_startproc
 862              		@ args = 0, pretend = 0, frame = 8
 863              		@ frame_needed = 1, uses_anonymous_args = 0
 864 0384 80B5     		push	{r7, lr}
 865              		.cfi_def_cfa_offset 8
 866              		.cfi_offset 7, -8
 867              		.cfi_offset 14, -4
 868 0386 82B0     		sub	sp, sp, #8
 869              		.cfi_def_cfa_offset 16
 870 0388 00AF     		add	r7, sp, #0
 871              		.cfi_def_cfa_register 7
 872 038a 0200     		movs	r2, r0
 873 038c FB1D     		adds	r3, r7, #7
 874 038e 1A70     		strb	r2, [r3]
 875 0390 BB1D     		adds	r3, r7, #6
 876 0392 0A1C     		adds	r2, r1, #0
 877 0394 1A70     		strb	r2, [r3]
 240:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_E);
 878              		.loc 1 240 0
 879 0396 4020     		movs	r0, #64
 880 0398 FFF780FE 		bl	graphic_ctrl_bit_clear
 241:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	select_controller(controller);
 881              		.loc 1 241 0
 882 039c BB1D     		adds	r3, r7, #6
 883 039e 1B78     		ldrb	r3, [r3]
 884 03a0 1800     		movs	r0, r3
 885 03a2 FFF7A7FE 		bl	select_controller
 242:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_set(B_RS);
 886              		.loc 1 242 0
 887 03a6 0120     		movs	r0, #1
 888 03a8 FFF74AFE 		bl	graphic_ctrl_bit_set
 243:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_ctrl_bit_clear(B_RW);
 889              		.loc 1 243 0
 890 03ac 0220     		movs	r0, #2
 891 03ae FFF775FE 		bl	graphic_ctrl_bit_clear
 244:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_write(data, controller);
 892              		.loc 1 244 0
 893 03b2 BB1D     		adds	r3, r7, #6
 894 03b4 1A78     		ldrb	r2, [r3]
 895 03b6 FB1D     		adds	r3, r7, #7
 896 03b8 1B78     		ldrb	r3, [r3]
 897 03ba 1100     		movs	r1, r2
 898 03bc 1800     		movs	r0, r3
 899 03be FFF78AFF 		bl	graphic_write
 245:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 900              		.loc 1 245 0
 901 03c2 C046     		nop
 902 03c4 BD46     		mov	sp, r7
 903 03c6 02B0     		add	sp, sp, #8
 904              		@ sp needed
 905 03c8 80BD     		pop	{r7, pc}
 906              		.cfi_endproc
 907              	.LFE11:
 909              		.align	1
 910              		.global	graphic_clear_screen
 911              		.syntax unified
 912              		.code	16
 913              		.thumb_func
 914              		.fpu softvfp
 916              	graphic_clear_screen:
 917              	.LFB12:
 246:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void graphic_clear_screen(void) {
 918              		.loc 1 246 0
 919              		.cfi_startproc
 920              		@ args = 0, pretend = 0, frame = 8
 921              		@ frame_needed = 1, uses_anonymous_args = 0
 922 03ca 80B5     		push	{r7, lr}
 923              		.cfi_def_cfa_offset 8
 924              		.cfi_offset 7, -8
 925              		.cfi_offset 14, -4
 926 03cc 82B0     		sub	sp, sp, #8
 927              		.cfi_def_cfa_offset 16
 928 03ce 00AF     		add	r7, sp, #0
 929              		.cfi_def_cfa_register 7
 247:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	uint8_t i, j;
 248:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for(j = 0; j < 8; j++) {
 930              		.loc 1 248 0
 931 03d0 BB1D     		adds	r3, r7, #6
 932 03d2 0022     		movs	r2, #0
 933 03d4 1A70     		strb	r2, [r3]
 934 03d6 23E0     		b	.L45
 935              	.L48:
 249:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 936              		.loc 1 249 0
 937 03d8 BB1D     		adds	r3, r7, #6
 938 03da 1B78     		ldrb	r3, [r3]
 939 03dc 4822     		movs	r2, #72
 940 03de 5242     		rsbs	r2, r2, #0
 941 03e0 1343     		orrs	r3, r2
 942 03e2 DBB2     		uxtb	r3, r3
 943 03e4 1821     		movs	r1, #24
 944 03e6 1800     		movs	r0, r3
 945 03e8 FFF7ACFF 		bl	graphic_write_command
 250:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 946              		.loc 1 250 0
 947 03ec 1821     		movs	r1, #24
 948 03ee 4020     		movs	r0, #64
 949 03f0 FFF7A8FF 		bl	graphic_write_command
 251:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		for(i = 0; i <= 63; i++){
 950              		.loc 1 251 0
 951 03f4 FB1D     		adds	r3, r7, #7
 952 03f6 0022     		movs	r2, #0
 953 03f8 1A70     		strb	r2, [r3]
 954 03fa 08E0     		b	.L46
 955              	.L47:
 252:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			graphic_write_data(0, B_CS1|B_CS2);
 956              		.loc 1 252 0 discriminator 3
 957 03fc 1821     		movs	r1, #24
 958 03fe 0020     		movs	r0, #0
 959 0400 FFF7C0FF 		bl	graphic_write_data
 251:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		for(i = 0; i <= 63; i++){
 960              		.loc 1 251 0 discriminator 3
 961 0404 FB1D     		adds	r3, r7, #7
 962 0406 1A78     		ldrb	r2, [r3]
 963 0408 FB1D     		adds	r3, r7, #7
 964 040a 0132     		adds	r2, r2, #1
 965 040c 1A70     		strb	r2, [r3]
 966              	.L46:
 251:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		for(i = 0; i <= 63; i++){
 967              		.loc 1 251 0 is_stmt 0 discriminator 1
 968 040e FB1D     		adds	r3, r7, #7
 969 0410 1B78     		ldrb	r3, [r3]
 970 0412 3F2B     		cmp	r3, #63
 971 0414 F2D9     		bls	.L47
 248:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 972              		.loc 1 248 0 is_stmt 1 discriminator 2
 973 0416 BB1D     		adds	r3, r7, #6
 974 0418 1A78     		ldrb	r2, [r3]
 975 041a BB1D     		adds	r3, r7, #6
 976 041c 0132     		adds	r2, r2, #1
 977 041e 1A70     		strb	r2, [r3]
 978              	.L45:
 248:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 979              		.loc 1 248 0 is_stmt 0 discriminator 1
 980 0420 BB1D     		adds	r3, r7, #6
 981 0422 1B78     		ldrb	r3, [r3]
 982 0424 072B     		cmp	r3, #7
 983 0426 D7D9     		bls	.L48
 253:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		}
 254:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 255:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 984              		.loc 1 255 0 is_stmt 1
 985 0428 C046     		nop
 986 042a BD46     		mov	sp, r7
 987 042c 02B0     		add	sp, sp, #8
 988              		@ sp needed
 989 042e 80BD     		pop	{r7, pc}
 990              		.cfi_endproc
 991              	.LFE12:
 993              		.align	1
 994              		.global	pixel
 995              		.syntax unified
 996              		.code	16
 997              		.thumb_func
 998              		.fpu softvfp
 1000              	pixel:
 1001              	.LFB13:
 256:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
 257:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void pixel(int x, int y, int set) {
 1002              		.loc 1 257 0
 1003              		.cfi_startproc
 1004              		@ args = 0, pretend = 0, frame = 32
 1005              		@ frame_needed = 1, uses_anonymous_args = 0
 1006 0430 90B5     		push	{r4, r7, lr}
 1007              		.cfi_def_cfa_offset 12
 1008              		.cfi_offset 4, -12
 1009              		.cfi_offset 7, -8
 1010              		.cfi_offset 14, -4
 1011 0432 89B0     		sub	sp, sp, #36
 1012              		.cfi_def_cfa_offset 48
 1013 0434 00AF     		add	r7, sp, #0
 1014              		.cfi_def_cfa_register 7
 1015 0436 F860     		str	r0, [r7, #12]
 1016 0438 B960     		str	r1, [r7, #8]
 1017 043a 7A60     		str	r2, [r7, #4]
 258:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	uint8_t mask, c, controller;
 259:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	int index;
 260:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
 1018              		.loc 1 260 0
 1019 043c FB68     		ldr	r3, [r7, #12]
 1020 043e 002B     		cmp	r3, #0
 1021 0440 00DC     		bgt	.LCB741
 1022 0442 BCE0     		b	.L70	@long jump
 1023              	.LCB741:
 1024              		.loc 1 260 0 is_stmt 0 discriminator 1
 1025 0444 BB68     		ldr	r3, [r7, #8]
 1026 0446 002B     		cmp	r3, #0
 1027 0448 00DC     		bgt	.LCB744
 1028 044a B8E0     		b	.L70	@long jump
 1029              	.LCB744:
 1030              		.loc 1 260 0 discriminator 2
 1031 044c FB68     		ldr	r3, [r7, #12]
 1032 044e 802B     		cmp	r3, #128
 1033 0450 00DD     		ble	.LCB747
 1034 0452 B4E0     		b	.L70	@long jump
 1035              	.LCB747:
 1036              		.loc 1 260 0 discriminator 3
 1037 0454 BB68     		ldr	r3, [r7, #8]
 1038 0456 402B     		cmp	r3, #64
 1039 0458 00DD     		ble	.LCB750
 1040 045a B0E0     		b	.L70	@long jump
 1041              	.LCB750:
 261:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	index = (y-1)/8;
 1042              		.loc 1 261 0 is_stmt 1
 1043 045c BB68     		ldr	r3, [r7, #8]
 1044 045e 013B     		subs	r3, r3, #1
 1045 0460 002B     		cmp	r3, #0
 1046 0462 00DA     		bge	.L53
 1047 0464 0733     		adds	r3, r3, #7
 1048              	.L53:
 1049 0466 DB10     		asrs	r3, r3, #3
 1050 0468 BB61     		str	r3, [r7, #24]
 262:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	switch( (y-1)%8 ) {
 1051              		.loc 1 262 0
 1052 046a BB68     		ldr	r3, [r7, #8]
 1053 046c 013B     		subs	r3, r3, #1
 1054 046e 564A     		ldr	r2, .L71
 1055 0470 1340     		ands	r3, r2
 1056 0472 04D5     		bpl	.L54
 1057 0474 013B     		subs	r3, r3, #1
 1058 0476 0822     		movs	r2, #8
 1059 0478 5242     		rsbs	r2, r2, #0
 1060 047a 1343     		orrs	r3, r2
 1061 047c 0133     		adds	r3, r3, #1
 1062              	.L54:
 1063 047e 072B     		cmp	r3, #7
 1064 0480 2CD8     		bhi	.L55
 1065 0482 9A00     		lsls	r2, r3, #2
 1066 0484 514B     		ldr	r3, .L71+4
 1067 0486 D318     		adds	r3, r2, r3
 1068 0488 1B68     		ldr	r3, [r3]
 1069 048a 9F46     		mov	pc, r3
 1070              		.section	.rodata
 1071              		.align	2
 1072              	.L57:
 1073 0000 8C040000 		.word	.L56
 1074 0004 96040000 		.word	.L58
 1075 0008 A0040000 		.word	.L59
 1076 000c AA040000 		.word	.L60
 1077 0010 B4040000 		.word	.L61
 1078 0014 BE040000 		.word	.L62
 1079 0018 C8040000 		.word	.L63
 1080 001c D2040000 		.word	.L64
 1081              		.text
 1082              	.L56:
 263:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 0: mask = 1; break;
 1083              		.loc 1 263 0
 1084 048c 1F23     		movs	r3, #31
 1085 048e FB18     		adds	r3, r7, r3
 1086 0490 0122     		movs	r2, #1
 1087 0492 1A70     		strb	r2, [r3]
 1088 0494 22E0     		b	.L55
 1089              	.L58:
 264:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 1: mask = 2; break;
 1090              		.loc 1 264 0
 1091 0496 1F23     		movs	r3, #31
 1092 0498 FB18     		adds	r3, r7, r3
 1093 049a 0222     		movs	r2, #2
 1094 049c 1A70     		strb	r2, [r3]
 1095 049e 1DE0     		b	.L55
 1096              	.L59:
 265:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 2: mask = 4; break;
 1097              		.loc 1 265 0
 1098 04a0 1F23     		movs	r3, #31
 1099 04a2 FB18     		adds	r3, r7, r3
 1100 04a4 0422     		movs	r2, #4
 1101 04a6 1A70     		strb	r2, [r3]
 1102 04a8 18E0     		b	.L55
 1103              	.L60:
 266:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 3: mask = 8; break;
 1104              		.loc 1 266 0
 1105 04aa 1F23     		movs	r3, #31
 1106 04ac FB18     		adds	r3, r7, r3
 1107 04ae 0822     		movs	r2, #8
 1108 04b0 1A70     		strb	r2, [r3]
 1109 04b2 13E0     		b	.L55
 1110              	.L61:
 267:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 4: mask = 0x10; break;
 1111              		.loc 1 267 0
 1112 04b4 1F23     		movs	r3, #31
 1113 04b6 FB18     		adds	r3, r7, r3
 1114 04b8 1022     		movs	r2, #16
 1115 04ba 1A70     		strb	r2, [r3]
 1116 04bc 0EE0     		b	.L55
 1117              	.L62:
 268:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 5: mask = 0x20; break;
 1118              		.loc 1 268 0
 1119 04be 1F23     		movs	r3, #31
 1120 04c0 FB18     		adds	r3, r7, r3
 1121 04c2 2022     		movs	r2, #32
 1122 04c4 1A70     		strb	r2, [r3]
 1123 04c6 09E0     		b	.L55
 1124              	.L63:
 269:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 6: mask = 0x40; break;
 1125              		.loc 1 269 0
 1126 04c8 1F23     		movs	r3, #31
 1127 04ca FB18     		adds	r3, r7, r3
 1128 04cc 4022     		movs	r2, #64
 1129 04ce 1A70     		strb	r2, [r3]
 1130 04d0 04E0     		b	.L55
 1131              	.L64:
 270:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 7: mask = 0x80; break;
 1132              		.loc 1 270 0
 1133 04d2 1F23     		movs	r3, #31
 1134 04d4 FB18     		adds	r3, r7, r3
 1135 04d6 8022     		movs	r2, #128
 1136 04d8 1A70     		strb	r2, [r3]
 1137 04da C046     		nop
 1138              	.L55:
 271:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 272:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		if(set == 0)
 1139              		.loc 1 272 0
 1140 04dc 7B68     		ldr	r3, [r7, #4]
 1141 04de 002B     		cmp	r3, #0
 1142 04e0 06D1     		bne	.L65
 273:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			mask = ~mask;
 1143              		.loc 1 273 0
 1144 04e2 1F23     		movs	r3, #31
 1145 04e4 FB18     		adds	r3, r7, r3
 1146 04e6 1F22     		movs	r2, #31
 1147 04e8 BA18     		adds	r2, r7, r2
 1148 04ea 1278     		ldrb	r2, [r2]
 1149 04ec D243     		mvns	r2, r2
 1150 04ee 1A70     		strb	r2, [r3]
 1151              	.L65:
 274:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		if(x > 64){
 1152              		.loc 1 274 0
 1153 04f0 FB68     		ldr	r3, [r7, #12]
 1154 04f2 402B     		cmp	r3, #64
 1155 04f4 07DD     		ble	.L66
 275:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			controller = B_CS2;
 1156              		.loc 1 275 0
 1157 04f6 1E23     		movs	r3, #30
 1158 04f8 FB18     		adds	r3, r7, r3
 1159 04fa 1022     		movs	r2, #16
 1160 04fc 1A70     		strb	r2, [r3]
 276:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		x = x - 65;
 1161              		.loc 1 276 0
 1162 04fe FB68     		ldr	r3, [r7, #12]
 1163 0500 413B     		subs	r3, r3, #65
 1164 0502 FB60     		str	r3, [r7, #12]
 1165 0504 06E0     		b	.L67
 1166              	.L66:
 277:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		} 
 278:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		else {
 279:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		controller = B_CS1;
 1167              		.loc 1 279 0
 1168 0506 1E23     		movs	r3, #30
 1169 0508 FB18     		adds	r3, r7, r3
 1170 050a 0822     		movs	r2, #8
 1171 050c 1A70     		strb	r2, [r3]
 280:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		x = x-1;
 1172              		.loc 1 280 0
 1173 050e FB68     		ldr	r3, [r7, #12]
 1174 0510 013B     		subs	r3, r3, #1
 1175 0512 FB60     		str	r3, [r7, #12]
 1176              	.L67:
 281:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		}
 282:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_write_command(LCD_SET_ADD | x, controller );
 1177              		.loc 1 282 0
 1178 0514 FB68     		ldr	r3, [r7, #12]
 1179 0516 5BB2     		sxtb	r3, r3
 1180 0518 4022     		movs	r2, #64
 1181 051a 1343     		orrs	r3, r2
 1182 051c 5BB2     		sxtb	r3, r3
 1183 051e DAB2     		uxtb	r2, r3
 1184 0520 1E23     		movs	r3, #30
 1185 0522 FB18     		adds	r3, r7, r3
 1186 0524 1B78     		ldrb	r3, [r3]
 1187 0526 1900     		movs	r1, r3
 1188 0528 1000     		movs	r0, r2
 1189 052a FFF70BFF 		bl	graphic_write_command
 283:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_write_command(LCD_SET_PAGE | index, controller );
 1190              		.loc 1 283 0
 1191 052e BB69     		ldr	r3, [r7, #24]
 1192 0530 5BB2     		sxtb	r3, r3
 1193 0532 4822     		movs	r2, #72
 1194 0534 5242     		rsbs	r2, r2, #0
 1195 0536 1343     		orrs	r3, r2
 1196 0538 5BB2     		sxtb	r3, r3
 1197 053a DAB2     		uxtb	r2, r3
 1198 053c 1E23     		movs	r3, #30
 1199 053e FB18     		adds	r3, r7, r3
 1200 0540 1B78     		ldrb	r3, [r3]
 1201 0542 1900     		movs	r1, r3
 1202 0544 1000     		movs	r0, r2
 1203 0546 FFF7FDFE 		bl	graphic_write_command
 284:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		c = graphic_read_data(controller);
 1204              		.loc 1 284 0
 1205 054a 1723     		movs	r3, #23
 1206 054c FC18     		adds	r4, r7, r3
 1207 054e 1E23     		movs	r3, #30
 1208 0550 FB18     		adds	r3, r7, r3
 1209 0552 1B78     		ldrb	r3, [r3]
 1210 0554 1800     		movs	r0, r3
 1211 0556 FFF7A9FE 		bl	graphic_read_data
 1212 055a 0300     		movs	r3, r0
 1213 055c 2370     		strb	r3, [r4]
 285:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_write_command(LCD_SET_ADD | x, controller);
 1214              		.loc 1 285 0
 1215 055e FB68     		ldr	r3, [r7, #12]
 1216 0560 5BB2     		sxtb	r3, r3
 1217 0562 4022     		movs	r2, #64
 1218 0564 1343     		orrs	r3, r2
 1219 0566 5BB2     		sxtb	r3, r3
 1220 0568 DAB2     		uxtb	r2, r3
 1221 056a 1E23     		movs	r3, #30
 1222 056c FB18     		adds	r3, r7, r3
 1223 056e 1B78     		ldrb	r3, [r3]
 1224 0570 1900     		movs	r1, r3
 1225 0572 1000     		movs	r0, r2
 1226 0574 FFF7E6FE 		bl	graphic_write_command
 286:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		if(set)
 1227              		.loc 1 286 0
 1228 0578 7B68     		ldr	r3, [r7, #4]
 1229 057a 002B     		cmp	r3, #0
 1230 057c 0AD0     		beq	.L68
 287:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			mask = mask | c;
 1231              		.loc 1 287 0
 1232 057e 1F23     		movs	r3, #31
 1233 0580 FB18     		adds	r3, r7, r3
 1234 0582 1F22     		movs	r2, #31
 1235 0584 B918     		adds	r1, r7, r2
 1236 0586 1722     		movs	r2, #23
 1237 0588 BA18     		adds	r2, r7, r2
 1238 058a 0978     		ldrb	r1, [r1]
 1239 058c 1278     		ldrb	r2, [r2]
 1240 058e 0A43     		orrs	r2, r1
 1241 0590 1A70     		strb	r2, [r3]
 1242 0592 09E0     		b	.L69
 1243              	.L68:
 288:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		else
 289:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			mask = mask & c;
 1244              		.loc 1 289 0
 1245 0594 1F23     		movs	r3, #31
 1246 0596 FB18     		adds	r3, r7, r3
 1247 0598 1F22     		movs	r2, #31
 1248 059a BA18     		adds	r2, r7, r2
 1249 059c 1721     		movs	r1, #23
 1250 059e 7918     		adds	r1, r7, r1
 1251 05a0 1278     		ldrb	r2, [r2]
 1252 05a2 0978     		ldrb	r1, [r1]
 1253 05a4 0A40     		ands	r2, r1
 1254 05a6 1A70     		strb	r2, [r3]
 1255              	.L69:
 290:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_write_data(mask, controller);
 1256              		.loc 1 290 0
 1257 05a8 1E23     		movs	r3, #30
 1258 05aa FB18     		adds	r3, r7, r3
 1259 05ac 1A78     		ldrb	r2, [r3]
 1260 05ae 1F23     		movs	r3, #31
 1261 05b0 FB18     		adds	r3, r7, r3
 1262 05b2 1B78     		ldrb	r3, [r3]
 1263 05b4 1100     		movs	r1, r2
 1264 05b6 1800     		movs	r0, r3
 1265 05b8 FFF7E4FE 		bl	graphic_write_data
 1266 05bc 00E0     		b	.L49
 1267              	.L70:
 260:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	index = (y-1)/8;
 1268              		.loc 1 260 0
 1269 05be C046     		nop
 1270              	.L49:
 291:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1271              		.loc 1 291 0
 1272 05c0 BD46     		mov	sp, r7
 1273 05c2 09B0     		add	sp, sp, #36
 1274              		@ sp needed
 1275 05c4 90BD     		pop	{r4, r7, pc}
 1276              	.L72:
 1277 05c6 C046     		.align	2
 1278              	.L71:
 1279 05c8 07000080 		.word	-2147483641
 1280 05cc 00000000 		.word	.L57
 1281              		.cfi_endproc
 1282              	.LFE13:
 1284              		.align	1
 1285              		.global	set_object_speed
 1286              		.syntax unified
 1287              		.code	16
 1288              		.thumb_func
 1289              		.fpu softvfp
 1291              	set_object_speed:
 1292              	.LFB14:
 292:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
 293:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void set_object_speed(POBJECT O, int speedx, int speedy){
 1293              		.loc 1 293 0
 1294              		.cfi_startproc
 1295              		@ args = 0, pretend = 0, frame = 16
 1296              		@ frame_needed = 1, uses_anonymous_args = 0
 1297 05d0 80B5     		push	{r7, lr}
 1298              		.cfi_def_cfa_offset 8
 1299              		.cfi_offset 7, -8
 1300              		.cfi_offset 14, -4
 1301 05d2 84B0     		sub	sp, sp, #16
 1302              		.cfi_def_cfa_offset 24
 1303 05d4 00AF     		add	r7, sp, #0
 1304              		.cfi_def_cfa_register 7
 1305 05d6 F860     		str	r0, [r7, #12]
 1306 05d8 B960     		str	r1, [r7, #8]
 1307 05da 7A60     		str	r2, [r7, #4]
 294:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	O->dirx = speedx;
 1308              		.loc 1 294 0
 1309 05dc FB68     		ldr	r3, [r7, #12]
 1310 05de BA68     		ldr	r2, [r7, #8]
 1311 05e0 5A60     		str	r2, [r3, #4]
 295:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	O->diry = speedy;
 1312              		.loc 1 295 0
 1313 05e2 FB68     		ldr	r3, [r7, #12]
 1314 05e4 7A68     		ldr	r2, [r7, #4]
 1315 05e6 9A60     		str	r2, [r3, #8]
 296:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1316              		.loc 1 296 0
 1317 05e8 C046     		nop
 1318 05ea BD46     		mov	sp, r7
 1319 05ec 04B0     		add	sp, sp, #16
 1320              		@ sp needed
 1321 05ee 80BD     		pop	{r7, pc}
 1322              		.cfi_endproc
 1323              	.LFE14:
 1325              		.align	1
 1326              		.global	draw_object
 1327              		.syntax unified
 1328              		.code	16
 1329              		.thumb_func
 1330              		.fpu softvfp
 1332              	draw_object:
 1333              	.LFB15:
 297:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void draw_object(POBJECT O){
 1334              		.loc 1 297 0
 1335              		.cfi_startproc
 1336              		@ args = 0, pretend = 0, frame = 16
 1337              		@ frame_needed = 1, uses_anonymous_args = 0
 1338 05f0 80B5     		push	{r7, lr}
 1339              		.cfi_def_cfa_offset 8
 1340              		.cfi_offset 7, -8
 1341              		.cfi_offset 14, -4
 1342 05f2 84B0     		sub	sp, sp, #16
 1343              		.cfi_def_cfa_offset 24
 1344 05f4 00AF     		add	r7, sp, #0
 1345              		.cfi_def_cfa_register 7
 1346 05f6 7860     		str	r0, [r7, #4]
 1347              	.LBB2:
 298:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1348              		.loc 1 298 0
 1349 05f8 0023     		movs	r3, #0
 1350 05fa FB60     		str	r3, [r7, #12]
 1351 05fc 1CE0     		b	.L75
 1352              	.L76:
 299:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
 1353              		.loc 1 299 0 discriminator 3
 1354 05fe 7B68     		ldr	r3, [r7, #4]
 1355 0600 DA68     		ldr	r2, [r3, #12]
 1356 0602 7B68     		ldr	r3, [r7, #4]
 1357 0604 1968     		ldr	r1, [r3]
 1358 0606 FB68     		ldr	r3, [r7, #12]
 1359 0608 0433     		adds	r3, r3, #4
 1360 060a 5B00     		lsls	r3, r3, #1
 1361 060c CB18     		adds	r3, r1, r3
 1362 060e 0433     		adds	r3, r3, #4
 1363 0610 1B78     		ldrb	r3, [r3]
 1364 0612 D018     		adds	r0, r2, r3
 1365 0614 7B68     		ldr	r3, [r7, #4]
 1366 0616 1A69     		ldr	r2, [r3, #16]
 1367 0618 7B68     		ldr	r3, [r7, #4]
 1368 061a 1968     		ldr	r1, [r3]
 1369 061c FB68     		ldr	r3, [r7, #12]
 1370 061e 0433     		adds	r3, r3, #4
 1371 0620 5B00     		lsls	r3, r3, #1
 1372 0622 CB18     		adds	r3, r1, r3
 1373 0624 0533     		adds	r3, r3, #5
 1374 0626 1B78     		ldrb	r3, [r3]
 1375 0628 D318     		adds	r3, r2, r3
 1376 062a 0122     		movs	r2, #1
 1377 062c 1900     		movs	r1, r3
 1378 062e FFF7FEFF 		bl	pixel
 298:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1379              		.loc 1 298 0 discriminator 3
 1380 0632 FB68     		ldr	r3, [r7, #12]
 1381 0634 0133     		adds	r3, r3, #1
 1382 0636 FB60     		str	r3, [r7, #12]
 1383              	.L75:
 298:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1384              		.loc 1 298 0 is_stmt 0 discriminator 1
 1385 0638 FB68     		ldr	r3, [r7, #12]
 1386 063a 132B     		cmp	r3, #19
 1387 063c DFDD     		ble	.L76
 1388              	.LBE2:
 300:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 301:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1389              		.loc 1 301 0 is_stmt 1
 1390 063e C046     		nop
 1391 0640 BD46     		mov	sp, r7
 1392 0642 04B0     		add	sp, sp, #16
 1393              		@ sp needed
 1394 0644 80BD     		pop	{r7, pc}
 1395              		.cfi_endproc
 1396              	.LFE15:
 1398              		.align	1
 1399              		.global	clear_object
 1400              		.syntax unified
 1401              		.code	16
 1402              		.thumb_func
 1403              		.fpu softvfp
 1405              	clear_object:
 1406              	.LFB16:
 302:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void clear_object(POBJECT O){
 1407              		.loc 1 302 0
 1408              		.cfi_startproc
 1409              		@ args = 0, pretend = 0, frame = 16
 1410              		@ frame_needed = 1, uses_anonymous_args = 0
 1411 0646 80B5     		push	{r7, lr}
 1412              		.cfi_def_cfa_offset 8
 1413              		.cfi_offset 7, -8
 1414              		.cfi_offset 14, -4
 1415 0648 84B0     		sub	sp, sp, #16
 1416              		.cfi_def_cfa_offset 24
 1417 064a 00AF     		add	r7, sp, #0
 1418              		.cfi_def_cfa_register 7
 1419 064c 7860     		str	r0, [r7, #4]
 1420              	.LBB3:
 303:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1421              		.loc 1 303 0
 1422 064e 0023     		movs	r3, #0
 1423 0650 FB60     		str	r3, [r7, #12]
 1424 0652 1CE0     		b	.L78
 1425              	.L79:
 304:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
 1426              		.loc 1 304 0 discriminator 3
 1427 0654 7B68     		ldr	r3, [r7, #4]
 1428 0656 DA68     		ldr	r2, [r3, #12]
 1429 0658 7B68     		ldr	r3, [r7, #4]
 1430 065a 1968     		ldr	r1, [r3]
 1431 065c FB68     		ldr	r3, [r7, #12]
 1432 065e 0433     		adds	r3, r3, #4
 1433 0660 5B00     		lsls	r3, r3, #1
 1434 0662 CB18     		adds	r3, r1, r3
 1435 0664 0433     		adds	r3, r3, #4
 1436 0666 1B78     		ldrb	r3, [r3]
 1437 0668 D018     		adds	r0, r2, r3
 1438 066a 7B68     		ldr	r3, [r7, #4]
 1439 066c 1A69     		ldr	r2, [r3, #16]
 1440 066e 7B68     		ldr	r3, [r7, #4]
 1441 0670 1968     		ldr	r1, [r3]
 1442 0672 FB68     		ldr	r3, [r7, #12]
 1443 0674 0433     		adds	r3, r3, #4
 1444 0676 5B00     		lsls	r3, r3, #1
 1445 0678 CB18     		adds	r3, r1, r3
 1446 067a 0533     		adds	r3, r3, #5
 1447 067c 1B78     		ldrb	r3, [r3]
 1448 067e D318     		adds	r3, r2, r3
 1449 0680 0022     		movs	r2, #0
 1450 0682 1900     		movs	r1, r3
 1451 0684 FFF7FEFF 		bl	pixel
 303:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1452              		.loc 1 303 0 discriminator 3
 1453 0688 FB68     		ldr	r3, [r7, #12]
 1454 068a 0133     		adds	r3, r3, #1
 1455 068c FB60     		str	r3, [r7, #12]
 1456              	.L78:
 303:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1457              		.loc 1 303 0 is_stmt 0 discriminator 1
 1458 068e FB68     		ldr	r3, [r7, #12]
 1459 0690 132B     		cmp	r3, #19
 1460 0692 DFDD     		ble	.L79
 1461              	.LBE3:
 305:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 306:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1462              		.loc 1 306 0 is_stmt 1
 1463 0694 C046     		nop
 1464 0696 BD46     		mov	sp, r7
 1465 0698 04B0     		add	sp, sp, #16
 1466              		@ sp needed
 1467 069a 80BD     		pop	{r7, pc}
 1468              		.cfi_endproc
 1469              	.LFE16:
 1471              		.align	1
 1472              		.global	move_object
 1473              		.syntax unified
 1474              		.code	16
 1475              		.thumb_func
 1476              		.fpu softvfp
 1478              	move_object:
 1479              	.LFB17:
 307:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void move_object(POBJECT O){
 1480              		.loc 1 307 0
 1481              		.cfi_startproc
 1482              		@ args = 0, pretend = 0, frame = 8
 1483              		@ frame_needed = 1, uses_anonymous_args = 0
 1484 069c 80B5     		push	{r7, lr}
 1485              		.cfi_def_cfa_offset 8
 1486              		.cfi_offset 7, -8
 1487              		.cfi_offset 14, -4
 1488 069e 82B0     		sub	sp, sp, #8
 1489              		.cfi_def_cfa_offset 16
 1490 06a0 00AF     		add	r7, sp, #0
 1491              		.cfi_def_cfa_register 7
 1492 06a2 7860     		str	r0, [r7, #4]
 308:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	clear_object(O);
 1493              		.loc 1 308 0
 1494 06a4 7B68     		ldr	r3, [r7, #4]
 1495 06a6 1800     		movs	r0, r3
 1496 06a8 FFF7FEFF 		bl	clear_object
 309:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	O->posx += O->dirx;
 1497              		.loc 1 309 0
 1498 06ac 7B68     		ldr	r3, [r7, #4]
 1499 06ae DA68     		ldr	r2, [r3, #12]
 1500 06b0 7B68     		ldr	r3, [r7, #4]
 1501 06b2 5B68     		ldr	r3, [r3, #4]
 1502 06b4 D218     		adds	r2, r2, r3
 1503 06b6 7B68     		ldr	r3, [r7, #4]
 1504 06b8 DA60     		str	r2, [r3, #12]
 310:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	O->posy += O->diry;
 1505              		.loc 1 310 0
 1506 06ba 7B68     		ldr	r3, [r7, #4]
 1507 06bc 1A69     		ldr	r2, [r3, #16]
 1508 06be 7B68     		ldr	r3, [r7, #4]
 1509 06c0 9B68     		ldr	r3, [r3, #8]
 1510 06c2 D218     		adds	r2, r2, r3
 1511 06c4 7B68     		ldr	r3, [r7, #4]
 1512 06c6 1A61     		str	r2, [r3, #16]
 311:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if(O->posx < 1 || O->posx > 128){
 1513              		.loc 1 311 0
 1514 06c8 7B68     		ldr	r3, [r7, #4]
 1515 06ca DB68     		ldr	r3, [r3, #12]
 1516 06cc 002B     		cmp	r3, #0
 1517 06ce 03DD     		ble	.L81
 1518              		.loc 1 311 0 is_stmt 0 discriminator 1
 1519 06d0 7B68     		ldr	r3, [r7, #4]
 1520 06d2 DB68     		ldr	r3, [r3, #12]
 1521 06d4 802B     		cmp	r3, #128
 1522 06d6 05DD     		ble	.L82
 1523              	.L81:
 312:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		O->dirx = -(O->dirx);
 1524              		.loc 1 312 0 is_stmt 1
 1525 06d8 7B68     		ldr	r3, [r7, #4]
 1526 06da 5B68     		ldr	r3, [r3, #4]
 1527 06dc 5A42     		rsbs	r2, r3, #0
 1528 06de 7B68     		ldr	r3, [r7, #4]
 1529 06e0 5A60     		str	r2, [r3, #4]
 1530 06e2 11E0     		b	.L83
 1531              	.L82:
 313:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 314:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	else if(O->posy < 1 || O->posy > 128 - O->geo->sizeY){
 1532              		.loc 1 314 0
 1533 06e4 7B68     		ldr	r3, [r7, #4]
 1534 06e6 1B69     		ldr	r3, [r3, #16]
 1535 06e8 002B     		cmp	r3, #0
 1536 06ea 08DD     		ble	.L84
 1537              		.loc 1 314 0 is_stmt 0 discriminator 1
 1538 06ec 7B68     		ldr	r3, [r7, #4]
 1539 06ee 1A69     		ldr	r2, [r3, #16]
 1540 06f0 7B68     		ldr	r3, [r7, #4]
 1541 06f2 1B68     		ldr	r3, [r3]
 1542 06f4 9B68     		ldr	r3, [r3, #8]
 1543 06f6 8021     		movs	r1, #128
 1544 06f8 CB1A     		subs	r3, r1, r3
 1545 06fa 9A42     		cmp	r2, r3
 1546 06fc 04DD     		ble	.L83
 1547              	.L84:
 315:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		O->diry = -(O->diry);
 1548              		.loc 1 315 0 is_stmt 1
 1549 06fe 7B68     		ldr	r3, [r7, #4]
 1550 0700 9B68     		ldr	r3, [r3, #8]
 1551 0702 5A42     		rsbs	r2, r3, #0
 1552 0704 7B68     		ldr	r3, [r7, #4]
 1553 0706 9A60     		str	r2, [r3, #8]
 1554              	.L83:
 316:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 317:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	draw_object(O);
 1555              		.loc 1 317 0
 1556 0708 7B68     		ldr	r3, [r7, #4]
 1557 070a 1800     		movs	r0, r3
 1558 070c FFF7FEFF 		bl	draw_object
 318:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1559              		.loc 1 318 0
 1560 0710 C046     		nop
 1561 0712 BD46     		mov	sp, r7
 1562 0714 02B0     		add	sp, sp, #8
 1563              		@ sp needed
 1564 0716 80BD     		pop	{r7, pc}
 1565              		.cfi_endproc
 1566              	.LFE17:
 1568              		.align	1
 1569              		.global	delay_250ns
 1570              		.syntax unified
 1571              		.code	16
 1572              		.thumb_func
 1573              		.fpu softvfp
 1575              	delay_250ns:
 1576              	.LFB18:
 319:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
 320:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** //Delay funktioner
 321:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void delay_250ns ( void ) {
 1577              		.loc 1 321 0
 1578              		.cfi_startproc
 1579              		@ args = 0, pretend = 0, frame = 0
 1580              		@ frame_needed = 1, uses_anonymous_args = 0
 1581 0718 80B5     		push	{r7, lr}
 1582              		.cfi_def_cfa_offset 8
 1583              		.cfi_offset 7, -8
 1584              		.cfi_offset 14, -4
 1585 071a 00AF     		add	r7, sp, #0
 1586              		.cfi_def_cfa_register 7
 322:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		*STK_CTRL = 0x00;
 1587              		.loc 1 322 0
 1588 071c 0C4B     		ldr	r3, .L87
 1589 071e 0022     		movs	r2, #0
 1590 0720 1A60     		str	r2, [r3]
 323:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		*STK_LOAD = ((168/4) - 1);
 1591              		.loc 1 323 0
 1592 0722 0C4B     		ldr	r3, .L87+4
 1593 0724 2922     		movs	r2, #41
 1594 0726 1A60     		str	r2, [r3]
 324:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		*STK_VAL = 0;
 1595              		.loc 1 324 0
 1596 0728 0B4B     		ldr	r3, .L87+8
 1597 072a 0022     		movs	r2, #0
 1598 072c 1A60     		str	r2, [r3]
 325:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		*STK_CTRL = 5;
 1599              		.loc 1 325 0
 1600 072e 084B     		ldr	r3, .L87
 1601 0730 0522     		movs	r2, #5
 1602 0732 1A60     		str	r2, [r3]
 326:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 1603              		.loc 1 326 0
 1604 0734 C046     		nop
 1605              	.L86:
 1606              		.loc 1 326 0 is_stmt 0 discriminator 1
 1607 0736 064B     		ldr	r3, .L87
 1608 0738 1A68     		ldr	r2, [r3]
 1609 073a 8023     		movs	r3, #128
 1610 073c 5B02     		lsls	r3, r3, #9
 1611 073e 1340     		ands	r3, r2
 1612 0740 F9D0     		beq	.L86
 327:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		*STK_CTRL = 0;
 1613              		.loc 1 327 0 is_stmt 1
 1614 0742 034B     		ldr	r3, .L87
 1615 0744 0022     		movs	r2, #0
 1616 0746 1A60     		str	r2, [r3]
 328:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1617              		.loc 1 328 0
 1618 0748 C046     		nop
 1619 074a BD46     		mov	sp, r7
 1620              		@ sp needed
 1621 074c 80BD     		pop	{r7, pc}
 1622              	.L88:
 1623 074e C046     		.align	2
 1624              	.L87:
 1625 0750 10E000E0 		.word	-536813552
 1626 0754 14E000E0 		.word	-536813548
 1627 0758 18E000E0 		.word	-536813544
 1628              		.cfi_endproc
 1629              	.LFE18:
 1631              		.align	1
 1632              		.global	delay_500ns
 1633              		.syntax unified
 1634              		.code	16
 1635              		.thumb_func
 1636              		.fpu softvfp
 1638              	delay_500ns:
 1639              	.LFB19:
 329:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void delay_500ns(void){
 1640              		.loc 1 329 0
 1641              		.cfi_startproc
 1642              		@ args = 0, pretend = 0, frame = 0
 1643              		@ frame_needed = 1, uses_anonymous_args = 0
 1644 075c 80B5     		push	{r7, lr}
 1645              		.cfi_def_cfa_offset 8
 1646              		.cfi_offset 7, -8
 1647              		.cfi_offset 14, -4
 1648 075e 00AF     		add	r7, sp, #0
 1649              		.cfi_def_cfa_register 7
 330:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_250ns();
 1650              		.loc 1 330 0
 1651 0760 FFF7FEFF 		bl	delay_250ns
 331:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	delay_250ns();
 1652              		.loc 1 331 0
 1653 0764 FFF7FEFF 		bl	delay_250ns
 332:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1654              		.loc 1 332 0
 1655 0768 C046     		nop
 1656 076a BD46     		mov	sp, r7
 1657              		@ sp needed
 1658 076c 80BD     		pop	{r7, pc}
 1659              		.cfi_endproc
 1660              	.LFE19:
 1662              		.align	1
 1663              		.global	delay_mikro
 1664              		.syntax unified
 1665              		.code	16
 1666              		.thumb_func
 1667              		.fpu softvfp
 1669              	delay_mikro:
 1670              	.LFB20:
 333:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void delay_mikro (unsigned int us){
 1671              		.loc 1 333 0
 1672              		.cfi_startproc
 1673              		@ args = 0, pretend = 0, frame = 16
 1674              		@ frame_needed = 1, uses_anonymous_args = 0
 1675 076e 80B5     		push	{r7, lr}
 1676              		.cfi_def_cfa_offset 8
 1677              		.cfi_offset 7, -8
 1678              		.cfi_offset 14, -4
 1679 0770 84B0     		sub	sp, sp, #16
 1680              		.cfi_def_cfa_offset 24
 1681 0772 00AF     		add	r7, sp, #0
 1682              		.cfi_def_cfa_register 7
 1683 0774 7860     		str	r0, [r7, #4]
 1684              	.LBB4:
 334:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for (int i = 0; i < us; i++) {
 1685              		.loc 1 334 0
 1686 0776 0023     		movs	r3, #0
 1687 0778 FB60     		str	r3, [r7, #12]
 1688 077a 0AE0     		b	.L91
 1689              	.L92:
 335:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_250ns();
 1690              		.loc 1 335 0 discriminator 3
 1691 077c FFF7FEFF 		bl	delay_250ns
 336:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_250ns();
 1692              		.loc 1 336 0 discriminator 3
 1693 0780 FFF7FEFF 		bl	delay_250ns
 337:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_250ns();
 1694              		.loc 1 337 0 discriminator 3
 1695 0784 FFF7FEFF 		bl	delay_250ns
 338:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_250ns();
 1696              		.loc 1 338 0 discriminator 3
 1697 0788 FFF7FEFF 		bl	delay_250ns
 334:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_250ns();
 1698              		.loc 1 334 0 discriminator 3
 1699 078c FB68     		ldr	r3, [r7, #12]
 1700 078e 0133     		adds	r3, r3, #1
 1701 0790 FB60     		str	r3, [r7, #12]
 1702              	.L91:
 334:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_250ns();
 1703              		.loc 1 334 0 is_stmt 0 discriminator 1
 1704 0792 FA68     		ldr	r2, [r7, #12]
 1705 0794 7B68     		ldr	r3, [r7, #4]
 1706 0796 9A42     		cmp	r2, r3
 1707 0798 F0D3     		bcc	.L92
 1708              	.LBE4:
 339:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		}
 340:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }	
 1709              		.loc 1 340 0 is_stmt 1
 1710 079a C046     		nop
 1711 079c BD46     		mov	sp, r7
 1712 079e 04B0     		add	sp, sp, #16
 1713              		@ sp needed
 1714 07a0 80BD     		pop	{r7, pc}
 1715              		.cfi_endproc
 1716              	.LFE20:
 1718              		.align	1
 1719              		.global	delay_milli
 1720              		.syntax unified
 1721              		.code	16
 1722              		.thumb_func
 1723              		.fpu softvfp
 1725              	delay_milli:
 1726              	.LFB21:
 341:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void delay_milli (unsigned int ms){
 1727              		.loc 1 341 0
 1728              		.cfi_startproc
 1729              		@ args = 0, pretend = 0, frame = 8
 1730              		@ frame_needed = 1, uses_anonymous_args = 0
 1731 07a2 80B5     		push	{r7, lr}
 1732              		.cfi_def_cfa_offset 8
 1733              		.cfi_offset 7, -8
 1734              		.cfi_offset 14, -4
 1735 07a4 82B0     		sub	sp, sp, #8
 1736              		.cfi_def_cfa_offset 16
 1737 07a6 00AF     		add	r7, sp, #0
 1738              		.cfi_def_cfa_register 7
 1739 07a8 7860     		str	r0, [r7, #4]
 342:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	#ifdef SIMULATOR
 343:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_mikro(ms);
 1740              		.loc 1 343 0
 1741 07aa 7B68     		ldr	r3, [r7, #4]
 1742 07ac 1800     		movs	r0, r3
 1743 07ae FFF7FEFF 		bl	delay_mikro
 344:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	#else
 345:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_mikro(ms * 1000);
 346:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	#endif
 347:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1744              		.loc 1 347 0
 1745 07b2 C046     		nop
 1746 07b4 BD46     		mov	sp, r7
 1747 07b6 02B0     		add	sp, sp, #8
 1748              		@ sp needed
 1749 07b8 80BD     		pop	{r7, pc}
 1750              		.cfi_endproc
 1751              	.LFE21:
 1753              		.align	1
 1754              		.global	keyb
 1755              		.syntax unified
 1756              		.code	16
 1757              		.thumb_func
 1758              		.fpu softvfp
 1760              	keyb:
 1761              	.LFB22:
 348:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
 349:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** //Keypad Funktioner
 350:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** unsigned char keyb(void){
 1762              		.loc 1 350 0
 1763              		.cfi_startproc
 1764              		@ args = 0, pretend = 0, frame = 8
 1765              		@ frame_needed = 1, uses_anonymous_args = 0
 1766 07ba 80B5     		push	{r7, lr}
 1767              		.cfi_def_cfa_offset 8
 1768              		.cfi_offset 7, -8
 1769              		.cfi_offset 14, -4
 1770 07bc 82B0     		sub	sp, sp, #8
 1771              		.cfi_def_cfa_offset 16
 1772 07be 00AF     		add	r7, sp, #0
 1773              		.cfi_def_cfa_register 7
 351:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	int row, column;
 352:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	for (row = 1; row <= 4; row++){
 1774              		.loc 1 352 0
 1775 07c0 0123     		movs	r3, #1
 1776 07c2 7B60     		str	r3, [r7, #4]
 1777 07c4 19E0     		b	.L95
 1778              	.L98:
 1779              	.LBB5:
 353:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		ActivateRow(row);
 1780              		.loc 1 353 0
 1781 07c6 7B68     		ldr	r3, [r7, #4]
 1782 07c8 1800     		movs	r0, r3
 1783 07ca FFF7FEFF 		bl	ActivateRow
 1784              	.LBB6:
 354:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		if (column = ReadColumn()){
 1785              		.loc 1 354 0
 1786 07ce FFF7FEFF 		bl	ReadColumn
 1787 07d2 0300     		movs	r3, r0
 1788 07d4 3B60     		str	r3, [r7]
 1789 07d6 3B68     		ldr	r3, [r7]
 1790 07d8 002B     		cmp	r3, #0
 1791 07da 0BD0     		beq	.L96
 355:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			ActivateRow(0);
 1792              		.loc 1 355 0
 1793 07dc 0020     		movs	r0, #0
 1794 07de FFF7FEFF 		bl	ActivateRow
 356:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			return Key[4*(row-1) + (column-1)];
 1795              		.loc 1 356 0
 1796 07e2 7B68     		ldr	r3, [r7, #4]
 1797 07e4 013B     		subs	r3, r3, #1
 1798 07e6 9A00     		lsls	r2, r3, #2
 1799 07e8 3B68     		ldr	r3, [r7]
 1800 07ea 013B     		subs	r3, r3, #1
 1801 07ec D318     		adds	r3, r2, r3
 1802 07ee 084A     		ldr	r2, .L99
 1803 07f0 D35C     		ldrb	r3, [r2, r3]
 1804 07f2 09E0     		b	.L97
 1805              	.L96:
 1806              	.LBE6:
 1807              	.LBE5:
 352:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		ActivateRow(row);
 1808              		.loc 1 352 0 discriminator 2
 1809 07f4 7B68     		ldr	r3, [r7, #4]
 1810 07f6 0133     		adds	r3, r3, #1
 1811 07f8 7B60     		str	r3, [r7, #4]
 1812              	.L95:
 352:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		ActivateRow(row);
 1813              		.loc 1 352 0 is_stmt 0 discriminator 1
 1814 07fa 7B68     		ldr	r3, [r7, #4]
 1815 07fc 042B     		cmp	r3, #4
 1816 07fe E2DD     		ble	.L98
 357:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		}
 358:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 359:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	ActivateRow(0);
 1817              		.loc 1 359 0 is_stmt 1
 1818 0800 0020     		movs	r0, #0
 1819 0802 FFF7FEFF 		bl	ActivateRow
 360:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	return 0xFF;
 1820              		.loc 1 360 0
 1821 0806 FF23     		movs	r3, #255
 1822              	.L97:
 361:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1823              		.loc 1 361 0
 1824 0808 1800     		movs	r0, r3
 1825 080a BD46     		mov	sp, r7
 1826 080c 02B0     		add	sp, sp, #8
 1827              		@ sp needed
 1828 080e 80BD     		pop	{r7, pc}
 1829              	.L100:
 1830              		.align	2
 1831              	.L99:
 1832 0810 00000000 		.word	Key
 1833              		.cfi_endproc
 1834              	.LFE22:
 1836              		.align	1
 1837              		.global	ActivateRow
 1838              		.syntax unified
 1839              		.code	16
 1840              		.thumb_func
 1841              		.fpu softvfp
 1843              	ActivateRow:
 1844              	.LFB23:
 362:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void ActivateRow(char row){
 1845              		.loc 1 362 0
 1846              		.cfi_startproc
 1847              		@ args = 0, pretend = 0, frame = 8
 1848              		@ frame_needed = 1, uses_anonymous_args = 0
 1849 0814 80B5     		push	{r7, lr}
 1850              		.cfi_def_cfa_offset 8
 1851              		.cfi_offset 7, -8
 1852              		.cfi_offset 14, -4
 1853 0816 82B0     		sub	sp, sp, #8
 1854              		.cfi_def_cfa_offset 16
 1855 0818 00AF     		add	r7, sp, #0
 1856              		.cfi_def_cfa_register 7
 1857 081a 0200     		movs	r2, r0
 1858 081c FB1D     		adds	r3, r7, #7
 1859 081e 1A70     		strb	r2, [r3]
 363:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	switch(row){
 1860              		.loc 1 363 0
 1861 0820 FB1D     		adds	r3, r7, #7
 1862 0822 1B78     		ldrb	r3, [r3]
 1863 0824 042B     		cmp	r3, #4
 1864 0826 18D8     		bhi	.L109
 1865 0828 9A00     		lsls	r2, r3, #2
 1866 082a 0E4B     		ldr	r3, .L110
 1867 082c D318     		adds	r3, r2, r3
 1868 082e 1B68     		ldr	r3, [r3]
 1869 0830 9F46     		mov	pc, r3
 1870              		.section	.rodata
 1871              		.align	2
 1872              	.L104:
 1873 0020 52080000 		.word	.L103
 1874 0024 32080000 		.word	.L105
 1875 0028 3A080000 		.word	.L106
 1876 002c 42080000 		.word	.L107
 1877 0030 4A080000 		.word	.L108
 1878              		.text
 1879              	.L105:
 364:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 1: *GPIO_ODR_HIGH = 0x10; break;
 1880              		.loc 1 364 0
 1881 0832 0D4B     		ldr	r3, .L110+4
 1882 0834 1022     		movs	r2, #16
 1883 0836 1A70     		strb	r2, [r3]
 1884 0838 0FE0     		b	.L102
 1885              	.L106:
 365:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 2: *GPIO_ODR_HIGH = 0x20; break;
 1886              		.loc 1 365 0
 1887 083a 0B4B     		ldr	r3, .L110+4
 1888 083c 2022     		movs	r2, #32
 1889 083e 1A70     		strb	r2, [r3]
 1890 0840 0BE0     		b	.L102
 1891              	.L107:
 366:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 3: *GPIO_ODR_HIGH = 0x40; break;
 1892              		.loc 1 366 0
 1893 0842 094B     		ldr	r3, .L110+4
 1894 0844 4022     		movs	r2, #64
 1895 0846 1A70     		strb	r2, [r3]
 1896 0848 07E0     		b	.L102
 1897              	.L108:
 367:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 4: *GPIO_ODR_HIGH = 0x80; break;
 1898              		.loc 1 367 0
 1899 084a 074B     		ldr	r3, .L110+4
 1900 084c 8022     		movs	r2, #128
 1901 084e 1A70     		strb	r2, [r3]
 1902 0850 03E0     		b	.L102
 1903              	.L103:
 368:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		case 0: *GPIO_ODR_HIGH = 0x00; break;
 1904              		.loc 1 368 0
 1905 0852 054B     		ldr	r3, .L110+4
 1906 0854 0022     		movs	r2, #0
 1907 0856 1A70     		strb	r2, [r3]
 1908 0858 C046     		nop
 1909              	.L102:
 1910              	.L109:
 369:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 370:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1911              		.loc 1 370 0
 1912 085a C046     		nop
 1913 085c BD46     		mov	sp, r7
 1914 085e 02B0     		add	sp, sp, #8
 1915              		@ sp needed
 1916 0860 80BD     		pop	{r7, pc}
 1917              	.L111:
 1918 0862 C046     		.align	2
 1919              	.L110:
 1920 0864 20000000 		.word	.L104
 1921 0868 150C0240 		.word	1073875989
 1922              		.cfi_endproc
 1923              	.LFE23:
 1925              		.align	1
 1926              		.global	ReadColumn
 1927              		.syntax unified
 1928              		.code	16
 1929              		.thumb_func
 1930              		.fpu softvfp
 1932              	ReadColumn:
 1933              	.LFB24:
 371:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** int ReadColumn (void){
 1934              		.loc 1 371 0
 1935              		.cfi_startproc
 1936              		@ args = 0, pretend = 0, frame = 8
 1937              		@ frame_needed = 1, uses_anonymous_args = 0
 1938 086c 80B5     		push	{r7, lr}
 1939              		.cfi_def_cfa_offset 8
 1940              		.cfi_offset 7, -8
 1941              		.cfi_offset 14, -4
 1942 086e 82B0     		sub	sp, sp, #8
 1943              		.cfi_def_cfa_offset 16
 1944 0870 00AF     		add	r7, sp, #0
 1945              		.cfi_def_cfa_register 7
 372:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	unsigned char c;
 373:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	c = *GPIO_IDR_HIGH;
 1946              		.loc 1 373 0
 1947 0872 124A     		ldr	r2, .L118
 1948 0874 FB1D     		adds	r3, r7, #7
 1949 0876 1278     		ldrb	r2, [r2]
 1950 0878 1A70     		strb	r2, [r3]
 374:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if(c & 0x8) return 4;
 1951              		.loc 1 374 0
 1952 087a FB1D     		adds	r3, r7, #7
 1953 087c 1B78     		ldrb	r3, [r3]
 1954 087e 0822     		movs	r2, #8
 1955 0880 1340     		ands	r3, r2
 1956 0882 01D0     		beq	.L113
 1957              		.loc 1 374 0 is_stmt 0 discriminator 1
 1958 0884 0423     		movs	r3, #4
 1959 0886 15E0     		b	.L114
 1960              	.L113:
 375:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if(c & 0x4) return 3;
 1961              		.loc 1 375 0 is_stmt 1
 1962 0888 FB1D     		adds	r3, r7, #7
 1963 088a 1B78     		ldrb	r3, [r3]
 1964 088c 0422     		movs	r2, #4
 1965 088e 1340     		ands	r3, r2
 1966 0890 01D0     		beq	.L115
 1967              		.loc 1 375 0 is_stmt 0 discriminator 1
 1968 0892 0323     		movs	r3, #3
 1969 0894 0EE0     		b	.L114
 1970              	.L115:
 376:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if(c & 0x2) return 2;
 1971              		.loc 1 376 0 is_stmt 1
 1972 0896 FB1D     		adds	r3, r7, #7
 1973 0898 1B78     		ldrb	r3, [r3]
 1974 089a 0222     		movs	r2, #2
 1975 089c 1340     		ands	r3, r2
 1976 089e 01D0     		beq	.L116
 1977              		.loc 1 376 0 is_stmt 0 discriminator 1
 1978 08a0 0223     		movs	r3, #2
 1979 08a2 07E0     		b	.L114
 1980              	.L116:
 377:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if(c & 0x1) return 1;
 1981              		.loc 1 377 0 is_stmt 1
 1982 08a4 FB1D     		adds	r3, r7, #7
 1983 08a6 1B78     		ldrb	r3, [r3]
 1984 08a8 0122     		movs	r2, #1
 1985 08aa 1340     		ands	r3, r2
 1986 08ac 01D0     		beq	.L117
 1987              		.loc 1 377 0 is_stmt 0 discriminator 1
 1988 08ae 0123     		movs	r3, #1
 1989 08b0 00E0     		b	.L114
 1990              	.L117:
 378:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	return 0;
 1991              		.loc 1 378 0 is_stmt 1
 1992 08b2 0023     		movs	r3, #0
 1993              	.L114:
 379:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** }
 1994              		.loc 1 379 0
 1995 08b4 1800     		movs	r0, r3
 1996 08b6 BD46     		mov	sp, r7
 1997 08b8 02B0     		add	sp, sp, #8
 1998              		@ sp needed
 1999 08ba 80BD     		pop	{r7, pc}
 2000              	.L119:
 2001              		.align	2
 2002              	.L118:
 2003 08bc 110C0240 		.word	1073875985
 2004              		.cfi_endproc
 2005              	.LFE24:
 2007              		.align	1
 2008              		.global	out7seg
 2009              		.syntax unified
 2010              		.code	16
 2011              		.thumb_func
 2012              		.fpu softvfp
 2014              	out7seg:
 2015              	.LFB25:
 380:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void out7seg(unsigned char c){
 2016              		.loc 1 380 0
 2017              		.cfi_startproc
 2018              		@ args = 0, pretend = 0, frame = 8
 2019              		@ frame_needed = 1, uses_anonymous_args = 0
 2020 08c0 80B5     		push	{r7, lr}
 2021              		.cfi_def_cfa_offset 8
 2022              		.cfi_offset 7, -8
 2023              		.cfi_offset 14, -4
 2024 08c2 82B0     		sub	sp, sp, #8
 2025              		.cfi_def_cfa_offset 16
 2026 08c4 00AF     		add	r7, sp, #0
 2027              		.cfi_def_cfa_register 7
 2028 08c6 0200     		movs	r2, r0
 2029 08c8 FB1D     		adds	r3, r7, #7
 2030 08ca 1A70     		strb	r2, [r3]
 381:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	if (c > 0xF){
 2031              		.loc 1 381 0
 2032 08cc FB1D     		adds	r3, r7, #7
 2033 08ce 1B78     		ldrb	r3, [r3]
 2034 08d0 0F2B     		cmp	r3, #15
 2035 08d2 03D9     		bls	.L121
 382:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		*GPIO_ODR_LOW = 0x00;
 2036              		.loc 1 382 0
 2037 08d4 064B     		ldr	r3, .L124
 2038 08d6 0022     		movs	r2, #0
 2039 08d8 1A70     		strb	r2, [r3]
 383:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 384:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	else *GPIO_ODR_LOW = Segcodes[c];
 385:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 2040              		.loc 1 385 0
 2041 08da 05E0     		b	.L123
 2042              	.L121:
 384:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	}
 2043              		.loc 1 384 0
 2044 08dc 0449     		ldr	r1, .L124
 2045 08de FB1D     		adds	r3, r7, #7
 2046 08e0 1B78     		ldrb	r3, [r3]
 2047 08e2 044A     		ldr	r2, .L124+4
 2048 08e4 D35C     		ldrb	r3, [r2, r3]
 2049 08e6 0B70     		strb	r3, [r1]
 2050              	.L123:
 2051              		.loc 1 385 0
 2052 08e8 C046     		nop
 2053 08ea BD46     		mov	sp, r7
 2054 08ec 02B0     		add	sp, sp, #8
 2055              		@ sp needed
 2056 08ee 80BD     		pop	{r7, pc}
 2057              	.L125:
 2058              		.align	2
 2059              	.L124:
 2060 08f0 140C0240 		.word	1073875988
 2061 08f4 00000000 		.word	Segcodes
 2062              		.cfi_endproc
 2063              	.LFE25:
 2065              		.align	1
 2066              		.global	main
 2067              		.syntax unified
 2068              		.code	16
 2069              		.thumb_func
 2070              		.fpu softvfp
 2072              	main:
 2073              	.LFB26:
 386:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 
 387:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** //Main
 388:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** void main(void){
 2074              		.loc 1 388 0
 2075              		.cfi_startproc
 2076              		@ args = 0, pretend = 0, frame = 8
 2077              		@ frame_needed = 1, uses_anonymous_args = 0
 2078 08f8 90B5     		push	{r4, r7, lr}
 2079              		.cfi_def_cfa_offset 12
 2080              		.cfi_offset 4, -12
 2081              		.cfi_offset 7, -8
 2082              		.cfi_offset 14, -4
 2083 08fa 83B0     		sub	sp, sp, #12
 2084              		.cfi_def_cfa_offset 24
 2085 08fc 00AF     		add	r7, sp, #0
 2086              		.cfi_def_cfa_register 7
 389:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	char c;
 390:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	POBJECT p = &ball;
 2087              		.loc 1 390 0
 2088 08fe 1F4B     		ldr	r3, .L134
 2089 0900 7B60     		str	r3, [r7, #4]
 391:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	init_app();
 2090              		.loc 1 391 0
 2091 0902 FFF7FEFF 		bl	init_app
 392:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	graphic_initialize();
 2092              		.loc 1 392 0
 2093 0906 FFF7FEFF 		bl	graphic_initialize
 2094              	.L133:
 393:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	#ifndef SIMULATOR
 394:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		graphic_clear_screen();
 395:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	#endif
 396:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 	while(1){
 397:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		p->move(p);
 2095              		.loc 1 397 0
 2096 090a 7B68     		ldr	r3, [r7, #4]
 2097 090c DB69     		ldr	r3, [r3, #28]
 2098 090e 7A68     		ldr	r2, [r7, #4]
 2099 0910 1000     		movs	r0, r2
 2100 0912 9847     		blx	r3
 2101              	.LVL0:
 398:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_milli(40);
 2102              		.loc 1 398 0
 2103 0914 2820     		movs	r0, #40
 2104 0916 FFF7FEFF 		bl	delay_milli
 399:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		c = keyb();
 2105              		.loc 1 399 0
 2106 091a FC1C     		adds	r4, r7, #3
 2107 091c FFF7FEFF 		bl	keyb
 2108 0920 0300     		movs	r3, r0
 2109 0922 2370     		strb	r3, [r4]
 400:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		switch(c){
 2110              		.loc 1 400 0
 2111 0924 FB1C     		adds	r3, r7, #3
 2112 0926 1B78     		ldrb	r3, [r3]
 2113 0928 042B     		cmp	r3, #4
 2114 092a 0FD0     		beq	.L128
 2115 092c 02DC     		bgt	.L129
 2116 092e 022B     		cmp	r3, #2
 2117 0930 14D0     		beq	.L130
 2118 0932 22E0     		b	.L127
 2119              	.L129:
 2120 0934 062B     		cmp	r3, #6
 2121 0936 02D0     		beq	.L131
 2122 0938 082B     		cmp	r3, #8
 2123 093a 17D0     		beq	.L132
 2124 093c 1DE0     		b	.L127
 2125              	.L131:
 401:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			case 6: p->set_speed(p, 2, 0); break;
 2126              		.loc 1 401 0
 2127 093e 7B68     		ldr	r3, [r7, #4]
 2128 0940 1B6A     		ldr	r3, [r3, #32]
 2129 0942 7868     		ldr	r0, [r7, #4]
 2130 0944 0022     		movs	r2, #0
 2131 0946 0221     		movs	r1, #2
 2132 0948 9847     		blx	r3
 2133              	.LVL1:
 2134 094a 16E0     		b	.L127
 2135              	.L128:
 402:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			case 4: p->set_speed(p, -2, 0); break;
 2136              		.loc 1 402 0
 2137 094c 7B68     		ldr	r3, [r7, #4]
 2138 094e 1B6A     		ldr	r3, [r3, #32]
 2139 0950 0222     		movs	r2, #2
 2140 0952 5142     		rsbs	r1, r2, #0
 2141 0954 7868     		ldr	r0, [r7, #4]
 2142 0956 0022     		movs	r2, #0
 2143 0958 9847     		blx	r3
 2144              	.LVL2:
 2145 095a 0EE0     		b	.L127
 2146              	.L130:
 403:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			case 2: p->set_speed(p, 0, -2); break;
 2147              		.loc 1 403 0
 2148 095c 7B68     		ldr	r3, [r7, #4]
 2149 095e 1B6A     		ldr	r3, [r3, #32]
 2150 0960 0222     		movs	r2, #2
 2151 0962 5242     		rsbs	r2, r2, #0
 2152 0964 7868     		ldr	r0, [r7, #4]
 2153 0966 0021     		movs	r1, #0
 2154 0968 9847     		blx	r3
 2155              	.LVL3:
 2156 096a 06E0     		b	.L127
 2157              	.L132:
 404:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 			case 8: p->set_speed(p, 0, 2); break;
 2158              		.loc 1 404 0
 2159 096c 7B68     		ldr	r3, [r7, #4]
 2160 096e 1B6A     		ldr	r3, [r3, #32]
 2161 0970 7868     		ldr	r0, [r7, #4]
 2162 0972 0222     		movs	r2, #2
 2163 0974 0021     		movs	r1, #0
 2164 0976 9847     		blx	r3
 2165              	.LVL4:
 2166 0978 C046     		nop
 2167              	.L127:
 397:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PongKeyPad\pongKeyPad.c **** 		delay_milli(40);
 2168              		.loc 1 397 0
 2169 097a C6E7     		b	.L133
 2170              	.L135:
 2171              		.align	2
 2172              	.L134:
 2173 097c 54000000 		.word	ball
 2174              		.cfi_endproc
 2175              	.LFE26:
 2177              	.Letext0:
