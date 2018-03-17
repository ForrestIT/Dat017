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
  11              		.file	"autopong.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong/autopo
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void startup ( void )
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong/autopong.c"
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	" MOV SP,R0\n"
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	) ;
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
  40              		.loc 1 15 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.global	ball_geometry
  48              		.data
  49              		.align	2
  52              	ball_geometry:
  53 0000 0C000000 		.word	12
  54 0004 04000000 		.word	4
  55 0008 04000000 		.word	4
  56 000c 00       		.byte	0
  57 000d 01       		.byte	1
  58 000e 00       		.byte	0
  59 000f 02       		.byte	2
  60 0010 01       		.byte	1
  61 0011 00       		.byte	0
  62 0012 01       		.byte	1
  63 0013 01       		.byte	1
  64 0014 01       		.byte	1
  65 0015 02       		.byte	2
  66 0016 01       		.byte	1
  67 0017 03       		.byte	3
  68 0018 02       		.byte	2
  69 0019 00       		.byte	0
  70 001a 02       		.byte	2
  71 001b 01       		.byte	1
  72 001c 02       		.byte	2
  73 001d 02       		.byte	2
  74 001e 02       		.byte	2
  75 001f 03       		.byte	3
  76 0020 03       		.byte	3
  77 0021 01       		.byte	1
  78 0022 03       		.byte	3
  79 0023 02       		.byte	2
  80 0024 00000000 		.space	16
  80      00000000 
  80      00000000 
  80      00000000 
  81              		.align	2
  84              	ball:
  85 0034 00000000 		.word	ball_geometry
  86 0038 00000000 		.word	0
  87 003c 00000000 		.word	0
  88 0040 01000000 		.word	1
  89 0044 01000000 		.word	1
  90 0048 00000000 		.word	draw_object
  91 004c 00000000 		.word	clear_object
  92 0050 00000000 		.word	move_object
  93 0054 00000000 		.word	set_object_speed
  94              		.text
  95              		.align	1
  96              		.global	init_app
  97              		.syntax unified
  98              		.code	16
  99              		.thumb_func
 100              		.fpu softvfp
 102              	init_app:
 103              	.LFB1:
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define PORT_DISPLAY_BASE 0x40021000 // MD407 port E
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define portModer ((volatile unsigned int *) (PORT_DISPLAY_BASE))
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define portOtyper ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x4))
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define portOspeedr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0x8))
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define portPupdr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0xC))
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define portIdr ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x10))
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define portIdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x11))
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define portOdrLow ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14))
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define portOdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14+1))
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define SysTick 0xE000E010
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define B_E 0x40 // Enable
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define B_RST 0x20 // Reset
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define B_CS2 0x10 // Controller Select 2
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define B_CS1 8 // Controller Select 1
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define B_RW 2 // 0 Write, 1 Read
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define B_RS 1 // 0 Command, 1 Data
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define LCD_ON 0x3F // Display on
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define LCD_OFF 0x3E // Display off
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define LCD_DISP_START 0xC0 // Start address
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define LCD_BUSY 0x80 // Read busy status
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define SIMULATOR 1
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** #define MAX_POINTS 20
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** typedef unsigned char uint8_t;
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** typedef struct tpoint{
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	unsigned char x;
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	unsigned char y;
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }POINT;
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** typedef struct tGeometry{
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	int numPoints;
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	int sizeX;
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	int sizeY;
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	POINT px[MAX_POINTS];
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }GEOMETRY, *PGEOMETRY;
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** typedef struct tObj{
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	PGEOMETRY geo;
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	int dirx,diry;
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	int posx,posy;
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	void (*draw)(struct tobj*);
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	void (*clear)(struct tobj*);
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	void (*move)(struct tobj*);
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	void (*set_speed)(struct tobj*, int, int);
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }OBJECT, *POBJECT;
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** //funktions declarationer
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void graphic_initialize(void);
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_write(uint8_t value, uint8_t controller);
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_ctrl_bit_clear(uint8_t x);
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void move_object(POBJECT O);
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void clear_object(POBJECT O);
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void draw_object(POBJECT O);
  83:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void set_object_speed(POBJECT O, int speedx, int speedy);
  84:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
  85:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** GEOMETRY ball_geometry ={
  86:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	.numPoints = 12,
  87:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	.sizeX = 4,
  88:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	.sizeY = 4,
  89:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	{
  90:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		/* px[0,1,2 ....] */
  91:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
  92:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
  93:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		{3,1}, {3,2}
  94:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
  95:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** };
  96:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static OBJECT ball = {
  97:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	.geo = &ball_geometry,
  98:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	.dirx = 0,
  99:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	.diry = 0,
 100:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	.posx = 1,
 101:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	.posy = 1,
 102:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	draw_object,
 103:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	clear_object,
 104:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	move_object,
 105:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	set_object_speed
 106:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** };
 107:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
 108:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void init_app(void){ 
 104              		.loc 1 108 0
 105              		.cfi_startproc
 106              		@ args = 0, pretend = 0, frame = 0
 107              		@ frame_needed = 1, uses_anonymous_args = 0
 108 0000 80B5     		push	{r7, lr}
 109              		.cfi_def_cfa_offset 8
 110              		.cfi_offset 7, -8
 111              		.cfi_offset 14, -4
 112 0002 00AF     		add	r7, sp, #0
 113              		.cfi_def_cfa_register 7
 109:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	*portModer = 0x55555555;
 114              		.loc 1 109 0
 115 0004 024B     		ldr	r3, .L3
 116 0006 034A     		ldr	r2, .L3+4
 117 0008 1A60     		str	r2, [r3]
 110:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }	
 118              		.loc 1 110 0
 119 000a C046     		nop
 120 000c BD46     		mov	sp, r7
 121              		@ sp needed
 122 000e 80BD     		pop	{r7, pc}
 123              	.L4:
 124              		.align	2
 125              	.L3:
 126 0010 00100240 		.word	1073876992
 127 0014 55555555 		.word	1431655765
 128              		.cfi_endproc
 129              	.LFE1:
 131              		.align	1
 132              		.syntax unified
 133              		.code	16
 134              		.thumb_func
 135              		.fpu softvfp
 137              	graphic_ctrl_bit_set:
 138              	.LFB2:
 111:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
 112:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** // Funktioner
 113:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_ctrl_bit_set(uint8_t x) {
 139              		.loc 1 113 0
 140              		.cfi_startproc
 141              		@ args = 0, pretend = 0, frame = 16
 142              		@ frame_needed = 1, uses_anonymous_args = 0
 143 0018 80B5     		push	{r7, lr}
 144              		.cfi_def_cfa_offset 8
 145              		.cfi_offset 7, -8
 146              		.cfi_offset 14, -4
 147 001a 84B0     		sub	sp, sp, #16
 148              		.cfi_def_cfa_offset 24
 149 001c 00AF     		add	r7, sp, #0
 150              		.cfi_def_cfa_register 7
 151 001e 0200     		movs	r2, r0
 152 0020 FB1D     		adds	r3, r7, #7
 153 0022 1A70     		strb	r2, [r3]
 114:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** uint8_t c;
 115:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** c = *portOdrLow;
 154              		.loc 1 115 0
 155 0024 124A     		ldr	r2, .L6
 156 0026 0F23     		movs	r3, #15
 157 0028 FB18     		adds	r3, r7, r3
 158 002a 1278     		ldrb	r2, [r2]
 159 002c 1A70     		strb	r2, [r3]
 116:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** c &= ~B_SELECT;
 160              		.loc 1 116 0
 161 002e 0F23     		movs	r3, #15
 162 0030 FB18     		adds	r3, r7, r3
 163 0032 0F22     		movs	r2, #15
 164 0034 BA18     		adds	r2, r7, r2
 165 0036 1278     		ldrb	r2, [r2]
 166 0038 0421     		movs	r1, #4
 167 003a 8A43     		bics	r2, r1
 168 003c 1A70     		strb	r2, [r3]
 117:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** c |= (~B_SELECT & x);
 169              		.loc 1 117 0
 170 003e FB1D     		adds	r3, r7, #7
 171 0040 1B78     		ldrb	r3, [r3]
 172 0042 5BB2     		sxtb	r3, r3
 173 0044 0422     		movs	r2, #4
 174 0046 9343     		bics	r3, r2
 175 0048 5AB2     		sxtb	r2, r3
 176 004a 0F23     		movs	r3, #15
 177 004c FB18     		adds	r3, r7, r3
 178 004e 1B78     		ldrb	r3, [r3]
 179 0050 5BB2     		sxtb	r3, r3
 180 0052 1343     		orrs	r3, r2
 181 0054 5AB2     		sxtb	r2, r3
 182 0056 0F23     		movs	r3, #15
 183 0058 FB18     		adds	r3, r7, r3
 184 005a 1A70     		strb	r2, [r3]
 118:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** *portOdrLow = c;
 185              		.loc 1 118 0
 186 005c 044A     		ldr	r2, .L6
 187 005e 0F23     		movs	r3, #15
 188 0060 FB18     		adds	r3, r7, r3
 189 0062 1B78     		ldrb	r3, [r3]
 190 0064 1370     		strb	r3, [r2]
 119:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 191              		.loc 1 119 0
 192 0066 C046     		nop
 193 0068 BD46     		mov	sp, r7
 194 006a 04B0     		add	sp, sp, #16
 195              		@ sp needed
 196 006c 80BD     		pop	{r7, pc}
 197              	.L7:
 198 006e C046     		.align	2
 199              	.L6:
 200 0070 14100240 		.word	1073877012
 201              		.cfi_endproc
 202              	.LFE2:
 204              		.align	1
 205              		.syntax unified
 206              		.code	16
 207              		.thumb_func
 208              		.fpu softvfp
 210              	graphic_ctrl_bit_clear:
 211              	.LFB3:
 120:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_ctrl_bit_clear(uint8_t x) {
 212              		.loc 1 120 0
 213              		.cfi_startproc
 214              		@ args = 0, pretend = 0, frame = 16
 215              		@ frame_needed = 1, uses_anonymous_args = 0
 216 0074 80B5     		push	{r7, lr}
 217              		.cfi_def_cfa_offset 8
 218              		.cfi_offset 7, -8
 219              		.cfi_offset 14, -4
 220 0076 84B0     		sub	sp, sp, #16
 221              		.cfi_def_cfa_offset 24
 222 0078 00AF     		add	r7, sp, #0
 223              		.cfi_def_cfa_register 7
 224 007a 0200     		movs	r2, r0
 225 007c FB1D     		adds	r3, r7, #7
 226 007e 1A70     		strb	r2, [r3]
 121:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** uint8_t c;
 122:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** c = *portOdrLow;
 227              		.loc 1 122 0
 228 0080 114A     		ldr	r2, .L9
 229 0082 0F23     		movs	r3, #15
 230 0084 FB18     		adds	r3, r7, r3
 231 0086 1278     		ldrb	r2, [r2]
 232 0088 1A70     		strb	r2, [r3]
 123:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** c &= ~B_SELECT;
 233              		.loc 1 123 0
 234 008a 0F23     		movs	r3, #15
 235 008c FB18     		adds	r3, r7, r3
 236 008e 0F22     		movs	r2, #15
 237 0090 BA18     		adds	r2, r7, r2
 238 0092 1278     		ldrb	r2, [r2]
 239 0094 0421     		movs	r1, #4
 240 0096 8A43     		bics	r2, r1
 241 0098 1A70     		strb	r2, [r3]
 124:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** c &= ~x;
 242              		.loc 1 124 0
 243 009a FB1D     		adds	r3, r7, #7
 244 009c 1B78     		ldrb	r3, [r3]
 245 009e 5BB2     		sxtb	r3, r3
 246 00a0 DB43     		mvns	r3, r3
 247 00a2 5BB2     		sxtb	r3, r3
 248 00a4 0F22     		movs	r2, #15
 249 00a6 BA18     		adds	r2, r7, r2
 250 00a8 1278     		ldrb	r2, [r2]
 251 00aa 52B2     		sxtb	r2, r2
 252 00ac 1340     		ands	r3, r2
 253 00ae 5AB2     		sxtb	r2, r3
 254 00b0 0F23     		movs	r3, #15
 255 00b2 FB18     		adds	r3, r7, r3
 256 00b4 1A70     		strb	r2, [r3]
 125:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** *portOdrLow = c;
 257              		.loc 1 125 0
 258 00b6 044A     		ldr	r2, .L9
 259 00b8 0F23     		movs	r3, #15
 260 00ba FB18     		adds	r3, r7, r3
 261 00bc 1B78     		ldrb	r3, [r3]
 262 00be 1370     		strb	r3, [r2]
 126:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 263              		.loc 1 126 0
 264 00c0 C046     		nop
 265 00c2 BD46     		mov	sp, r7
 266 00c4 04B0     		add	sp, sp, #16
 267              		@ sp needed
 268 00c6 80BD     		pop	{r7, pc}
 269              	.L10:
 270              		.align	2
 271              	.L9:
 272 00c8 14100240 		.word	1073877012
 273              		.cfi_endproc
 274              	.LFE3:
 276              		.align	1
 277              		.syntax unified
 278              		.code	16
 279              		.thumb_func
 280              		.fpu softvfp
 282              	select_controller:
 283              	.LFB4:
 127:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void select_controller(uint8_t controller){
 284              		.loc 1 127 0
 285              		.cfi_startproc
 286              		@ args = 0, pretend = 0, frame = 8
 287              		@ frame_needed = 1, uses_anonymous_args = 0
 288 00cc 80B5     		push	{r7, lr}
 289              		.cfi_def_cfa_offset 8
 290              		.cfi_offset 7, -8
 291              		.cfi_offset 14, -4
 292 00ce 82B0     		sub	sp, sp, #8
 293              		.cfi_def_cfa_offset 16
 294 00d0 00AF     		add	r7, sp, #0
 295              		.cfi_def_cfa_register 7
 296 00d2 0200     		movs	r2, r0
 297 00d4 FB1D     		adds	r3, r7, #7
 298 00d6 1A70     		strb	r2, [r3]
 128:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	switch(controller){
 299              		.loc 1 128 0
 300 00d8 FB1D     		adds	r3, r7, #7
 301 00da 1B78     		ldrb	r3, [r3]
 302 00dc 082B     		cmp	r3, #8
 303 00de 0CD0     		beq	.L13
 304 00e0 02DC     		bgt	.L14
 305 00e2 002B     		cmp	r3, #0
 306 00e4 05D0     		beq	.L15
 129:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 0:
 130:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
 131:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			break;
 132:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case B_CS1 :
 133:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_ctrl_bit_set(B_CS1);
 134:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 135:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			break;
 136:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case B_CS2 :
 137:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_ctrl_bit_set(B_CS2);
 138:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 139:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			break;
 140:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case B_CS1|B_CS2 :
 141:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
 142:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			break;
 143:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 144:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 307              		.loc 1 144 0
 308 00e6 1AE0     		b	.L18
 309              	.L14:
 128:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	switch(controller){
 310              		.loc 1 128 0
 311 00e8 102B     		cmp	r3, #16
 312 00ea 0DD0     		beq	.L16
 313 00ec 182B     		cmp	r3, #24
 314 00ee 12D0     		beq	.L17
 315              		.loc 1 144 0
 316 00f0 15E0     		b	.L18
 317              	.L15:
 130:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			break;
 318              		.loc 1 130 0
 319 00f2 1820     		movs	r0, #24
 320 00f4 FFF7BEFF 		bl	graphic_ctrl_bit_clear
 131:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case B_CS1 :
 321              		.loc 1 131 0
 322 00f8 11E0     		b	.L12
 323              	.L13:
 133:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 324              		.loc 1 133 0
 325 00fa 0820     		movs	r0, #8
 326 00fc FFF78CFF 		bl	graphic_ctrl_bit_set
 134:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			break;
 327              		.loc 1 134 0
 328 0100 1020     		movs	r0, #16
 329 0102 FFF7B7FF 		bl	graphic_ctrl_bit_clear
 135:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case B_CS2 :
 330              		.loc 1 135 0
 331 0106 0AE0     		b	.L12
 332              	.L16:
 137:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 333              		.loc 1 137 0
 334 0108 1020     		movs	r0, #16
 335 010a FFF785FF 		bl	graphic_ctrl_bit_set
 138:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			break;
 336              		.loc 1 138 0
 337 010e 0820     		movs	r0, #8
 338 0110 FFF7B0FF 		bl	graphic_ctrl_bit_clear
 139:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case B_CS1|B_CS2 :
 339              		.loc 1 139 0
 340 0114 03E0     		b	.L12
 341              	.L17:
 141:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			break;
 342              		.loc 1 141 0
 343 0116 1820     		movs	r0, #24
 344 0118 FFF77EFF 		bl	graphic_ctrl_bit_set
 142:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 345              		.loc 1 142 0
 346 011c C046     		nop
 347              	.L12:
 348              	.L18:
 349              		.loc 1 144 0
 350 011e C046     		nop
 351 0120 BD46     		mov	sp, r7
 352 0122 02B0     		add	sp, sp, #8
 353              		@ sp needed
 354 0124 80BD     		pop	{r7, pc}
 355              		.cfi_endproc
 356              	.LFE4:
 358              		.align	1
 359              		.global	graphic_initialize
 360              		.syntax unified
 361              		.code	16
 362              		.thumb_func
 363              		.fpu softvfp
 365              	graphic_initialize:
 366              	.LFB5:
 145:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void graphic_initialize(void) {
 367              		.loc 1 145 0
 368              		.cfi_startproc
 369              		@ args = 0, pretend = 0, frame = 0
 370              		@ frame_needed = 1, uses_anonymous_args = 0
 371 0126 80B5     		push	{r7, lr}
 372              		.cfi_def_cfa_offset 8
 373              		.cfi_offset 7, -8
 374              		.cfi_offset 14, -4
 375 0128 00AF     		add	r7, sp, #0
 376              		.cfi_def_cfa_register 7
 146:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_E);
 377              		.loc 1 146 0
 378 012a 4020     		movs	r0, #64
 379 012c FFF774FF 		bl	graphic_ctrl_bit_set
 147:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_mikro(10);
 380              		.loc 1 147 0
 381 0130 0A20     		movs	r0, #10
 382 0132 FFF7FEFF 		bl	delay_mikro
 148:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 383              		.loc 1 148 0
 384 0136 7820     		movs	r0, #120
 385 0138 FFF79CFF 		bl	graphic_ctrl_bit_clear
 149:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_milli(30);
 386              		.loc 1 149 0
 387 013c 1E20     		movs	r0, #30
 388 013e FFF7FEFF 		bl	delay_milli
 150:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_RST);
 389              		.loc 1 150 0
 390 0142 2020     		movs	r0, #32
 391 0144 FFF768FF 		bl	graphic_ctrl_bit_set
 151:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_milli(100);
 392              		.loc 1 151 0
 393 0148 6420     		movs	r0, #100
 394 014a FFF7FEFF 		bl	delay_milli
 152:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 395              		.loc 1 152 0
 396 014e 1821     		movs	r1, #24
 397 0150 3E20     		movs	r0, #62
 398 0152 00F0E3F8 		bl	graphic_write_command
 153:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 399              		.loc 1 153 0
 400 0156 1821     		movs	r1, #24
 401 0158 3F20     		movs	r0, #63
 402 015a 00F0DFF8 		bl	graphic_write_command
 154:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 403              		.loc 1 154 0
 404 015e 1821     		movs	r1, #24
 405 0160 C020     		movs	r0, #192
 406 0162 00F0DBF8 		bl	graphic_write_command
 155:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 407              		.loc 1 155 0
 408 0166 1821     		movs	r1, #24
 409 0168 4020     		movs	r0, #64
 410 016a 00F0D7F8 		bl	graphic_write_command
 156:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 411              		.loc 1 156 0
 412 016e 1821     		movs	r1, #24
 413 0170 B820     		movs	r0, #184
 414 0172 00F0D3F8 		bl	graphic_write_command
 157:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	select_controller(0);
 415              		.loc 1 157 0
 416 0176 0020     		movs	r0, #0
 417 0178 FFF7A8FF 		bl	select_controller
 158:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 418              		.loc 1 158 0
 419 017c C046     		nop
 420 017e BD46     		mov	sp, r7
 421              		@ sp needed
 422 0180 80BD     		pop	{r7, pc}
 423              		.cfi_endproc
 424              	.LFE5:
 426              		.align	1
 427              		.syntax unified
 428              		.code	16
 429              		.thumb_func
 430              		.fpu softvfp
 432              	graphic_wait_ready:
 433              	.LFB6:
 159:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_wait_ready(void) {
 434              		.loc 1 159 0
 435              		.cfi_startproc
 436              		@ args = 0, pretend = 0, frame = 8
 437              		@ frame_needed = 1, uses_anonymous_args = 0
 438 0182 80B5     		push	{r7, lr}
 439              		.cfi_def_cfa_offset 8
 440              		.cfi_offset 7, -8
 441              		.cfi_offset 14, -4
 442 0184 82B0     		sub	sp, sp, #8
 443              		.cfi_def_cfa_offset 16
 444 0186 00AF     		add	r7, sp, #0
 445              		.cfi_def_cfa_register 7
 160:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	uint8_t c;
 161:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 446              		.loc 1 161 0
 447 0188 4020     		movs	r0, #64
 448 018a FFF773FF 		bl	graphic_ctrl_bit_clear
 162:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 449              		.loc 1 162 0
 450 018e 144B     		ldr	r3, .L26
 451 0190 144A     		ldr	r2, .L26+4
 452 0192 1A60     		str	r2, [r3]
 163:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_RS);
 453              		.loc 1 163 0
 454 0194 0120     		movs	r0, #1
 455 0196 FFF76DFF 		bl	graphic_ctrl_bit_clear
 164:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_RW);
 456              		.loc 1 164 0
 457 019a 0220     		movs	r0, #2
 458 019c FFF73CFF 		bl	graphic_ctrl_bit_set
 165:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_500ns();
 459              		.loc 1 165 0
 460 01a0 FFF7FEFF 		bl	delay_500ns
 461              	.L23:
 166:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	while(1) {
 167:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_ctrl_bit_set(B_E);
 462              		.loc 1 167 0
 463 01a4 4020     		movs	r0, #64
 464 01a6 FFF737FF 		bl	graphic_ctrl_bit_set
 168:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_500ns();
 465              		.loc 1 168 0
 466 01aa FFF7FEFF 		bl	delay_500ns
 169:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		c = *portIdrHigh & LCD_BUSY;
 467              		.loc 1 169 0
 468 01ae 0E4B     		ldr	r3, .L26+8
 469 01b0 1B78     		ldrb	r3, [r3]
 470 01b2 DAB2     		uxtb	r2, r3
 471 01b4 FB1D     		adds	r3, r7, #7
 472 01b6 7F21     		movs	r1, #127
 473 01b8 8A43     		bics	r2, r1
 474 01ba 1A70     		strb	r2, [r3]
 170:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_ctrl_bit_clear(B_E);
 475              		.loc 1 170 0
 476 01bc 4020     		movs	r0, #64
 477 01be FFF759FF 		bl	graphic_ctrl_bit_clear
 171:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_500ns();
 478              		.loc 1 171 0
 479 01c2 FFF7FEFF 		bl	delay_500ns
 172:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		if( c == 0 ) break;
 480              		.loc 1 172 0
 481 01c6 FB1D     		adds	r3, r7, #7
 482 01c8 1B78     		ldrb	r3, [r3]
 483 01ca 002B     		cmp	r3, #0
 484 01cc 00D0     		beq	.L25
 167:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_500ns();
 485              		.loc 1 167 0
 486 01ce E9E7     		b	.L23
 487              	.L25:
 488              		.loc 1 172 0
 489 01d0 C046     		nop
 173:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 174:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	*portModer = 0x55555555; // 15-0 outputs
 490              		.loc 1 174 0
 491 01d2 034B     		ldr	r3, .L26
 492 01d4 054A     		ldr	r2, .L26+12
 493 01d6 1A60     		str	r2, [r3]
 175:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 494              		.loc 1 175 0
 495 01d8 C046     		nop
 496 01da BD46     		mov	sp, r7
 497 01dc 02B0     		add	sp, sp, #8
 498              		@ sp needed
 499 01de 80BD     		pop	{r7, pc}
 500              	.L27:
 501              		.align	2
 502              	.L26:
 503 01e0 00100240 		.word	1073876992
 504 01e4 55550000 		.word	21845
 505 01e8 11100240 		.word	1073877009
 506 01ec 55555555 		.word	1431655765
 507              		.cfi_endproc
 508              	.LFE6:
 510              		.align	1
 511              		.syntax unified
 512              		.code	16
 513              		.thumb_func
 514              		.fpu softvfp
 516              	graphic_read:
 517              	.LFB7:
 176:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static uint8_t graphic_read(uint8_t controller) {
 518              		.loc 1 176 0
 519              		.cfi_startproc
 520              		@ args = 0, pretend = 0, frame = 16
 521              		@ frame_needed = 1, uses_anonymous_args = 0
 522 01f0 80B5     		push	{r7, lr}
 523              		.cfi_def_cfa_offset 8
 524              		.cfi_offset 7, -8
 525              		.cfi_offset 14, -4
 526 01f2 84B0     		sub	sp, sp, #16
 527              		.cfi_def_cfa_offset 24
 528 01f4 00AF     		add	r7, sp, #0
 529              		.cfi_def_cfa_register 7
 530 01f6 0200     		movs	r2, r0
 531 01f8 FB1D     		adds	r3, r7, #7
 532 01fa 1A70     		strb	r2, [r3]
 177:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	uint8_t c;
 178:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 533              		.loc 1 178 0
 534 01fc 4020     		movs	r0, #64
 535 01fe FFF739FF 		bl	graphic_ctrl_bit_clear
 179:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 536              		.loc 1 179 0
 537 0202 1C4B     		ldr	r3, .L32
 538 0204 1C4A     		ldr	r2, .L32+4
 539 0206 1A60     		str	r2, [r3]
 180:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 540              		.loc 1 180 0
 541 0208 0320     		movs	r0, #3
 542 020a FFF705FF 		bl	graphic_ctrl_bit_set
 181:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	select_controller(controller);
 543              		.loc 1 181 0
 544 020e FB1D     		adds	r3, r7, #7
 545 0210 1B78     		ldrb	r3, [r3]
 546 0212 1800     		movs	r0, r3
 547 0214 FFF75AFF 		bl	select_controller
 182:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_500ns();
 548              		.loc 1 182 0
 549 0218 FFF7FEFF 		bl	delay_500ns
 183:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_E);
 550              		.loc 1 183 0
 551 021c 4020     		movs	r0, #64
 552 021e FFF7FBFE 		bl	graphic_ctrl_bit_set
 184:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_500ns();
 553              		.loc 1 184 0
 554 0222 FFF7FEFF 		bl	delay_500ns
 185:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	c = *portIdrHigh;
 555              		.loc 1 185 0
 556 0226 154A     		ldr	r2, .L32+8
 557 0228 0F23     		movs	r3, #15
 558 022a FB18     		adds	r3, r7, r3
 559 022c 1278     		ldrb	r2, [r2]
 560 022e 1A70     		strb	r2, [r3]
 186:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 561              		.loc 1 186 0
 562 0230 4020     		movs	r0, #64
 563 0232 FFF71FFF 		bl	graphic_ctrl_bit_clear
 187:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	*portModer = 0x55555555; // 15-0 outputs
 564              		.loc 1 187 0
 565 0236 0F4B     		ldr	r3, .L32
 566 0238 114A     		ldr	r2, .L32+12
 567 023a 1A60     		str	r2, [r3]
 188:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	if( controller & B_CS1 ) {
 568              		.loc 1 188 0
 569 023c FB1D     		adds	r3, r7, #7
 570 023e 1B78     		ldrb	r3, [r3]
 571 0240 0822     		movs	r2, #8
 572 0242 1340     		ands	r3, r2
 573 0244 04D0     		beq	.L29
 189:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		select_controller(B_CS1);
 574              		.loc 1 189 0
 575 0246 0820     		movs	r0, #8
 576 0248 FFF740FF 		bl	select_controller
 190:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_wait_ready();
 577              		.loc 1 190 0
 578 024c FFF799FF 		bl	graphic_wait_ready
 579              	.L29:
 191:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 192:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	if( controller & B_CS2 ) {
 580              		.loc 1 192 0
 581 0250 FB1D     		adds	r3, r7, #7
 582 0252 1B78     		ldrb	r3, [r3]
 583 0254 1022     		movs	r2, #16
 584 0256 1340     		ands	r3, r2
 585 0258 04D0     		beq	.L30
 193:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		select_controller(B_CS2);
 586              		.loc 1 193 0
 587 025a 1020     		movs	r0, #16
 588 025c FFF736FF 		bl	select_controller
 194:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_wait_ready();
 589              		.loc 1 194 0
 590 0260 FFF78FFF 		bl	graphic_wait_ready
 591              	.L30:
 195:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 196:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** return c;
 592              		.loc 1 196 0
 593 0264 0F23     		movs	r3, #15
 594 0266 FB18     		adds	r3, r7, r3
 595 0268 1B78     		ldrb	r3, [r3]
 197:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 596              		.loc 1 197 0
 597 026a 1800     		movs	r0, r3
 598 026c BD46     		mov	sp, r7
 599 026e 04B0     		add	sp, sp, #16
 600              		@ sp needed
 601 0270 80BD     		pop	{r7, pc}
 602              	.L33:
 603 0272 C046     		.align	2
 604              	.L32:
 605 0274 00100240 		.word	1073876992
 606 0278 55550000 		.word	21845
 607 027c 11100240 		.word	1073877009
 608 0280 55555555 		.word	1431655765
 609              		.cfi_endproc
 610              	.LFE7:
 612              		.align	1
 613              		.syntax unified
 614              		.code	16
 615              		.thumb_func
 616              		.fpu softvfp
 618              	graphic_read_data:
 619              	.LFB8:
 198:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static uint8_t graphic_read_data(uint8_t controller) {
 620              		.loc 1 198 0
 621              		.cfi_startproc
 622              		@ args = 0, pretend = 0, frame = 8
 623              		@ frame_needed = 1, uses_anonymous_args = 0
 624 0284 80B5     		push	{r7, lr}
 625              		.cfi_def_cfa_offset 8
 626              		.cfi_offset 7, -8
 627              		.cfi_offset 14, -4
 628 0286 82B0     		sub	sp, sp, #8
 629              		.cfi_def_cfa_offset 16
 630 0288 00AF     		add	r7, sp, #0
 631              		.cfi_def_cfa_register 7
 632 028a 0200     		movs	r2, r0
 633 028c FB1D     		adds	r3, r7, #7
 634 028e 1A70     		strb	r2, [r3]
 199:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** graphic_read(controller);
 635              		.loc 1 199 0
 636 0290 FB1D     		adds	r3, r7, #7
 637 0292 1B78     		ldrb	r3, [r3]
 638 0294 1800     		movs	r0, r3
 639 0296 FFF7ABFF 		bl	graphic_read
 200:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** return graphic_read(controller);
 640              		.loc 1 200 0
 641 029a FB1D     		adds	r3, r7, #7
 642 029c 1B78     		ldrb	r3, [r3]
 643 029e 1800     		movs	r0, r3
 644 02a0 FFF7A6FF 		bl	graphic_read
 645 02a4 0300     		movs	r3, r0
 201:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 646              		.loc 1 201 0
 647 02a6 1800     		movs	r0, r3
 648 02a8 BD46     		mov	sp, r7
 649 02aa 02B0     		add	sp, sp, #8
 650              		@ sp needed
 651 02ac 80BD     		pop	{r7, pc}
 652              		.cfi_endproc
 653              	.LFE8:
 655              		.align	1
 656              		.syntax unified
 657              		.code	16
 658              		.thumb_func
 659              		.fpu softvfp
 661              	graphic_write:
 662              	.LFB9:
 202:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_write(uint8_t value, uint8_t controller) {
 663              		.loc 1 202 0
 664              		.cfi_startproc
 665              		@ args = 0, pretend = 0, frame = 8
 666              		@ frame_needed = 1, uses_anonymous_args = 0
 667 02ae 80B5     		push	{r7, lr}
 668              		.cfi_def_cfa_offset 8
 669              		.cfi_offset 7, -8
 670              		.cfi_offset 14, -4
 671 02b0 82B0     		sub	sp, sp, #8
 672              		.cfi_def_cfa_offset 16
 673 02b2 00AF     		add	r7, sp, #0
 674              		.cfi_def_cfa_register 7
 675 02b4 0200     		movs	r2, r0
 676 02b6 FB1D     		adds	r3, r7, #7
 677 02b8 1A70     		strb	r2, [r3]
 678 02ba BB1D     		adds	r3, r7, #6
 679 02bc 0A1C     		adds	r2, r1, #0
 680 02be 1A70     		strb	r2, [r3]
 203:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	*portOdrHigh = value;
 681              		.loc 1 203 0
 682 02c0 154A     		ldr	r2, .L40
 683 02c2 FB1D     		adds	r3, r7, #7
 684 02c4 1B78     		ldrb	r3, [r3]
 685 02c6 1370     		strb	r3, [r2]
 204:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	select_controller(controller);
 686              		.loc 1 204 0
 687 02c8 BB1D     		adds	r3, r7, #6
 688 02ca 1B78     		ldrb	r3, [r3]
 689 02cc 1800     		movs	r0, r3
 690 02ce FFF7FDFE 		bl	select_controller
 205:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_500ns();
 691              		.loc 1 205 0
 692 02d2 FFF7FEFF 		bl	delay_500ns
 206:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_E);
 693              		.loc 1 206 0
 694 02d6 4020     		movs	r0, #64
 695 02d8 FFF79EFE 		bl	graphic_ctrl_bit_set
 207:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_500ns();
 696              		.loc 1 207 0
 697 02dc FFF7FEFF 		bl	delay_500ns
 208:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear( B_E );
 698              		.loc 1 208 0
 699 02e0 4020     		movs	r0, #64
 700 02e2 FFF7C7FE 		bl	graphic_ctrl_bit_clear
 209:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	if(controller & B_CS1) {
 701              		.loc 1 209 0
 702 02e6 BB1D     		adds	r3, r7, #6
 703 02e8 1B78     		ldrb	r3, [r3]
 704 02ea 0822     		movs	r2, #8
 705 02ec 1340     		ands	r3, r2
 706 02ee 04D0     		beq	.L37
 210:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		select_controller( B_CS1);
 707              		.loc 1 210 0
 708 02f0 0820     		movs	r0, #8
 709 02f2 FFF7EBFE 		bl	select_controller
 211:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_wait_ready();
 710              		.loc 1 211 0
 711 02f6 FFF744FF 		bl	graphic_wait_ready
 712              	.L37:
 212:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 213:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	if(controller & B_CS2) {
 713              		.loc 1 213 0
 714 02fa BB1D     		adds	r3, r7, #6
 715 02fc 1B78     		ldrb	r3, [r3]
 716 02fe 1022     		movs	r2, #16
 717 0300 1340     		ands	r3, r2
 718 0302 04D0     		beq	.L39
 214:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		select_controller( B_CS2);
 719              		.loc 1 214 0
 720 0304 1020     		movs	r0, #16
 721 0306 FFF7E1FE 		bl	select_controller
 215:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_wait_ready();
 722              		.loc 1 215 0
 723 030a FFF73AFF 		bl	graphic_wait_ready
 724              	.L39:
 216:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 217:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 725              		.loc 1 217 0
 726 030e C046     		nop
 727 0310 BD46     		mov	sp, r7
 728 0312 02B0     		add	sp, sp, #8
 729              		@ sp needed
 730 0314 80BD     		pop	{r7, pc}
 731              	.L41:
 732 0316 C046     		.align	2
 733              	.L40:
 734 0318 15100240 		.word	1073877013
 735              		.cfi_endproc
 736              	.LFE9:
 738              		.align	1
 739              		.syntax unified
 740              		.code	16
 741              		.thumb_func
 742              		.fpu softvfp
 744              	graphic_write_command:
 745              	.LFB10:
 218:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 746              		.loc 1 218 0
 747              		.cfi_startproc
 748              		@ args = 0, pretend = 0, frame = 8
 749              		@ frame_needed = 1, uses_anonymous_args = 0
 750 031c 80B5     		push	{r7, lr}
 751              		.cfi_def_cfa_offset 8
 752              		.cfi_offset 7, -8
 753              		.cfi_offset 14, -4
 754 031e 82B0     		sub	sp, sp, #8
 755              		.cfi_def_cfa_offset 16
 756 0320 00AF     		add	r7, sp, #0
 757              		.cfi_def_cfa_register 7
 758 0322 0200     		movs	r2, r0
 759 0324 FB1D     		adds	r3, r7, #7
 760 0326 1A70     		strb	r2, [r3]
 761 0328 BB1D     		adds	r3, r7, #6
 762 032a 0A1C     		adds	r2, r1, #0
 763 032c 1A70     		strb	r2, [r3]
 219:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 764              		.loc 1 219 0
 765 032e 4020     		movs	r0, #64
 766 0330 FFF7A0FE 		bl	graphic_ctrl_bit_clear
 220:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	select_controller(controller);
 767              		.loc 1 220 0
 768 0334 BB1D     		adds	r3, r7, #6
 769 0336 1B78     		ldrb	r3, [r3]
 770 0338 1800     		movs	r0, r3
 771 033a FFF7C7FE 		bl	select_controller
 221:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 772              		.loc 1 221 0
 773 033e 0320     		movs	r0, #3
 774 0340 FFF798FE 		bl	graphic_ctrl_bit_clear
 222:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_write(command, controller);
 775              		.loc 1 222 0
 776 0344 BB1D     		adds	r3, r7, #6
 777 0346 1A78     		ldrb	r2, [r3]
 778 0348 FB1D     		adds	r3, r7, #7
 779 034a 1B78     		ldrb	r3, [r3]
 780 034c 1100     		movs	r1, r2
 781 034e 1800     		movs	r0, r3
 782 0350 FFF7ADFF 		bl	graphic_write
 223:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 783              		.loc 1 223 0
 784 0354 C046     		nop
 785 0356 BD46     		mov	sp, r7
 786 0358 02B0     		add	sp, sp, #8
 787              		@ sp needed
 788 035a 80BD     		pop	{r7, pc}
 789              		.cfi_endproc
 790              	.LFE10:
 792              		.align	1
 793              		.syntax unified
 794              		.code	16
 795              		.thumb_func
 796              		.fpu softvfp
 798              	graphic_write_data:
 799              	.LFB11:
 224:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** static void graphic_write_data(uint8_t data, uint8_t controller) {
 800              		.loc 1 224 0
 801              		.cfi_startproc
 802              		@ args = 0, pretend = 0, frame = 8
 803              		@ frame_needed = 1, uses_anonymous_args = 0
 804 035c 80B5     		push	{r7, lr}
 805              		.cfi_def_cfa_offset 8
 806              		.cfi_offset 7, -8
 807              		.cfi_offset 14, -4
 808 035e 82B0     		sub	sp, sp, #8
 809              		.cfi_def_cfa_offset 16
 810 0360 00AF     		add	r7, sp, #0
 811              		.cfi_def_cfa_register 7
 812 0362 0200     		movs	r2, r0
 813 0364 FB1D     		adds	r3, r7, #7
 814 0366 1A70     		strb	r2, [r3]
 815 0368 BB1D     		adds	r3, r7, #6
 816 036a 0A1C     		adds	r2, r1, #0
 817 036c 1A70     		strb	r2, [r3]
 225:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_E);
 818              		.loc 1 225 0
 819 036e 4020     		movs	r0, #64
 820 0370 FFF780FE 		bl	graphic_ctrl_bit_clear
 226:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	select_controller(controller);
 821              		.loc 1 226 0
 822 0374 BB1D     		adds	r3, r7, #6
 823 0376 1B78     		ldrb	r3, [r3]
 824 0378 1800     		movs	r0, r3
 825 037a FFF7A7FE 		bl	select_controller
 227:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_set(B_RS);
 826              		.loc 1 227 0
 827 037e 0120     		movs	r0, #1
 828 0380 FFF74AFE 		bl	graphic_ctrl_bit_set
 228:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_ctrl_bit_clear(B_RW);
 829              		.loc 1 228 0
 830 0384 0220     		movs	r0, #2
 831 0386 FFF775FE 		bl	graphic_ctrl_bit_clear
 229:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_write(data, controller);
 832              		.loc 1 229 0
 833 038a BB1D     		adds	r3, r7, #6
 834 038c 1A78     		ldrb	r2, [r3]
 835 038e FB1D     		adds	r3, r7, #7
 836 0390 1B78     		ldrb	r3, [r3]
 837 0392 1100     		movs	r1, r2
 838 0394 1800     		movs	r0, r3
 839 0396 FFF78AFF 		bl	graphic_write
 230:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 840              		.loc 1 230 0
 841 039a C046     		nop
 842 039c BD46     		mov	sp, r7
 843 039e 02B0     		add	sp, sp, #8
 844              		@ sp needed
 845 03a0 80BD     		pop	{r7, pc}
 846              		.cfi_endproc
 847              	.LFE11:
 849              		.align	1
 850              		.global	graphic_clear_screen
 851              		.syntax unified
 852              		.code	16
 853              		.thumb_func
 854              		.fpu softvfp
 856              	graphic_clear_screen:
 857              	.LFB12:
 231:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void graphic_clear_screen(void) {
 858              		.loc 1 231 0
 859              		.cfi_startproc
 860              		@ args = 0, pretend = 0, frame = 8
 861              		@ frame_needed = 1, uses_anonymous_args = 0
 862 03a2 80B5     		push	{r7, lr}
 863              		.cfi_def_cfa_offset 8
 864              		.cfi_offset 7, -8
 865              		.cfi_offset 14, -4
 866 03a4 82B0     		sub	sp, sp, #8
 867              		.cfi_def_cfa_offset 16
 868 03a6 00AF     		add	r7, sp, #0
 869              		.cfi_def_cfa_register 7
 232:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	uint8_t i, j;
 233:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	for(j = 0; j < 8; j++) {
 870              		.loc 1 233 0
 871 03a8 BB1D     		adds	r3, r7, #6
 872 03aa 0022     		movs	r2, #0
 873 03ac 1A70     		strb	r2, [r3]
 874 03ae 23E0     		b	.L45
 875              	.L48:
 234:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 876              		.loc 1 234 0
 877 03b0 BB1D     		adds	r3, r7, #6
 878 03b2 1B78     		ldrb	r3, [r3]
 879 03b4 4822     		movs	r2, #72
 880 03b6 5242     		rsbs	r2, r2, #0
 881 03b8 1343     		orrs	r3, r2
 882 03ba DBB2     		uxtb	r3, r3
 883 03bc 1821     		movs	r1, #24
 884 03be 1800     		movs	r0, r3
 885 03c0 FFF7ACFF 		bl	graphic_write_command
 235:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 886              		.loc 1 235 0
 887 03c4 1821     		movs	r1, #24
 888 03c6 4020     		movs	r0, #64
 889 03c8 FFF7A8FF 		bl	graphic_write_command
 236:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		for(i = 0; i <= 63; i++){
 890              		.loc 1 236 0
 891 03cc FB1D     		adds	r3, r7, #7
 892 03ce 0022     		movs	r2, #0
 893 03d0 1A70     		strb	r2, [r3]
 894 03d2 08E0     		b	.L46
 895              	.L47:
 237:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			graphic_write_data(0, B_CS1|B_CS2);
 896              		.loc 1 237 0 discriminator 3
 897 03d4 1821     		movs	r1, #24
 898 03d6 0020     		movs	r0, #0
 899 03d8 FFF7C0FF 		bl	graphic_write_data
 236:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		for(i = 0; i <= 63; i++){
 900              		.loc 1 236 0 discriminator 3
 901 03dc FB1D     		adds	r3, r7, #7
 902 03de 1A78     		ldrb	r2, [r3]
 903 03e0 FB1D     		adds	r3, r7, #7
 904 03e2 0132     		adds	r2, r2, #1
 905 03e4 1A70     		strb	r2, [r3]
 906              	.L46:
 236:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		for(i = 0; i <= 63; i++){
 907              		.loc 1 236 0 is_stmt 0 discriminator 1
 908 03e6 FB1D     		adds	r3, r7, #7
 909 03e8 1B78     		ldrb	r3, [r3]
 910 03ea 3F2B     		cmp	r3, #63
 911 03ec F2D9     		bls	.L47
 233:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 912              		.loc 1 233 0 is_stmt 1 discriminator 2
 913 03ee BB1D     		adds	r3, r7, #6
 914 03f0 1A78     		ldrb	r2, [r3]
 915 03f2 BB1D     		adds	r3, r7, #6
 916 03f4 0132     		adds	r2, r2, #1
 917 03f6 1A70     		strb	r2, [r3]
 918              	.L45:
 233:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 919              		.loc 1 233 0 is_stmt 0 discriminator 1
 920 03f8 BB1D     		adds	r3, r7, #6
 921 03fa 1B78     		ldrb	r3, [r3]
 922 03fc 072B     		cmp	r3, #7
 923 03fe D7D9     		bls	.L48
 238:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		}
 239:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 240:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 924              		.loc 1 240 0 is_stmt 1
 925 0400 C046     		nop
 926 0402 BD46     		mov	sp, r7
 927 0404 02B0     		add	sp, sp, #8
 928              		@ sp needed
 929 0406 80BD     		pop	{r7, pc}
 930              		.cfi_endproc
 931              	.LFE12:
 933              		.align	1
 934              		.global	pixel
 935              		.syntax unified
 936              		.code	16
 937              		.thumb_func
 938              		.fpu softvfp
 940              	pixel:
 941              	.LFB13:
 241:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
 242:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void pixel(int x, int y, int set) {
 942              		.loc 1 242 0
 943              		.cfi_startproc
 944              		@ args = 0, pretend = 0, frame = 32
 945              		@ frame_needed = 1, uses_anonymous_args = 0
 946 0408 90B5     		push	{r4, r7, lr}
 947              		.cfi_def_cfa_offset 12
 948              		.cfi_offset 4, -12
 949              		.cfi_offset 7, -8
 950              		.cfi_offset 14, -4
 951 040a 89B0     		sub	sp, sp, #36
 952              		.cfi_def_cfa_offset 48
 953 040c 00AF     		add	r7, sp, #0
 954              		.cfi_def_cfa_register 7
 955 040e F860     		str	r0, [r7, #12]
 956 0410 B960     		str	r1, [r7, #8]
 957 0412 7A60     		str	r2, [r7, #4]
 243:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	uint8_t mask, c, controller;
 244:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	int index;
 245:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
 958              		.loc 1 245 0
 959 0414 FB68     		ldr	r3, [r7, #12]
 960 0416 002B     		cmp	r3, #0
 961 0418 00DC     		bgt	.LCB726
 962 041a BCE0     		b	.L70	@long jump
 963              	.LCB726:
 964              		.loc 1 245 0 is_stmt 0 discriminator 1
 965 041c BB68     		ldr	r3, [r7, #8]
 966 041e 002B     		cmp	r3, #0
 967 0420 00DC     		bgt	.LCB729
 968 0422 B8E0     		b	.L70	@long jump
 969              	.LCB729:
 970              		.loc 1 245 0 discriminator 2
 971 0424 FB68     		ldr	r3, [r7, #12]
 972 0426 802B     		cmp	r3, #128
 973 0428 00DD     		ble	.LCB732
 974 042a B4E0     		b	.L70	@long jump
 975              	.LCB732:
 976              		.loc 1 245 0 discriminator 3
 977 042c BB68     		ldr	r3, [r7, #8]
 978 042e 402B     		cmp	r3, #64
 979 0430 00DD     		ble	.LCB735
 980 0432 B0E0     		b	.L70	@long jump
 981              	.LCB735:
 246:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	index = (y-1)/8;
 982              		.loc 1 246 0 is_stmt 1
 983 0434 BB68     		ldr	r3, [r7, #8]
 984 0436 013B     		subs	r3, r3, #1
 985 0438 002B     		cmp	r3, #0
 986 043a 00DA     		bge	.L53
 987 043c 0733     		adds	r3, r3, #7
 988              	.L53:
 989 043e DB10     		asrs	r3, r3, #3
 990 0440 BB61     		str	r3, [r7, #24]
 247:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	switch( (y-1)%8 ) {
 991              		.loc 1 247 0
 992 0442 BB68     		ldr	r3, [r7, #8]
 993 0444 013B     		subs	r3, r3, #1
 994 0446 564A     		ldr	r2, .L71
 995 0448 1340     		ands	r3, r2
 996 044a 04D5     		bpl	.L54
 997 044c 013B     		subs	r3, r3, #1
 998 044e 0822     		movs	r2, #8
 999 0450 5242     		rsbs	r2, r2, #0
 1000 0452 1343     		orrs	r3, r2
 1001 0454 0133     		adds	r3, r3, #1
 1002              	.L54:
 1003 0456 072B     		cmp	r3, #7
 1004 0458 2CD8     		bhi	.L55
 1005 045a 9A00     		lsls	r2, r3, #2
 1006 045c 514B     		ldr	r3, .L71+4
 1007 045e D318     		adds	r3, r2, r3
 1008 0460 1B68     		ldr	r3, [r3]
 1009 0462 9F46     		mov	pc, r3
 1010              		.section	.rodata
 1011              		.align	2
 1012              	.L57:
 1013 0000 64040000 		.word	.L56
 1014 0004 6E040000 		.word	.L58
 1015 0008 78040000 		.word	.L59
 1016 000c 82040000 		.word	.L60
 1017 0010 8C040000 		.word	.L61
 1018 0014 96040000 		.word	.L62
 1019 0018 A0040000 		.word	.L63
 1020 001c AA040000 		.word	.L64
 1021              		.text
 1022              	.L56:
 248:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 0: mask = 1; break;
 1023              		.loc 1 248 0
 1024 0464 1F23     		movs	r3, #31
 1025 0466 FB18     		adds	r3, r7, r3
 1026 0468 0122     		movs	r2, #1
 1027 046a 1A70     		strb	r2, [r3]
 1028 046c 22E0     		b	.L55
 1029              	.L58:
 249:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 1: mask = 2; break;
 1030              		.loc 1 249 0
 1031 046e 1F23     		movs	r3, #31
 1032 0470 FB18     		adds	r3, r7, r3
 1033 0472 0222     		movs	r2, #2
 1034 0474 1A70     		strb	r2, [r3]
 1035 0476 1DE0     		b	.L55
 1036              	.L59:
 250:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 2: mask = 4; break;
 1037              		.loc 1 250 0
 1038 0478 1F23     		movs	r3, #31
 1039 047a FB18     		adds	r3, r7, r3
 1040 047c 0422     		movs	r2, #4
 1041 047e 1A70     		strb	r2, [r3]
 1042 0480 18E0     		b	.L55
 1043              	.L60:
 251:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 3: mask = 8; break;
 1044              		.loc 1 251 0
 1045 0482 1F23     		movs	r3, #31
 1046 0484 FB18     		adds	r3, r7, r3
 1047 0486 0822     		movs	r2, #8
 1048 0488 1A70     		strb	r2, [r3]
 1049 048a 13E0     		b	.L55
 1050              	.L61:
 252:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 4: mask = 0x10; break;
 1051              		.loc 1 252 0
 1052 048c 1F23     		movs	r3, #31
 1053 048e FB18     		adds	r3, r7, r3
 1054 0490 1022     		movs	r2, #16
 1055 0492 1A70     		strb	r2, [r3]
 1056 0494 0EE0     		b	.L55
 1057              	.L62:
 253:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 5: mask = 0x20; break;
 1058              		.loc 1 253 0
 1059 0496 1F23     		movs	r3, #31
 1060 0498 FB18     		adds	r3, r7, r3
 1061 049a 2022     		movs	r2, #32
 1062 049c 1A70     		strb	r2, [r3]
 1063 049e 09E0     		b	.L55
 1064              	.L63:
 254:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 6: mask = 0x40; break;
 1065              		.loc 1 254 0
 1066 04a0 1F23     		movs	r3, #31
 1067 04a2 FB18     		adds	r3, r7, r3
 1068 04a4 4022     		movs	r2, #64
 1069 04a6 1A70     		strb	r2, [r3]
 1070 04a8 04E0     		b	.L55
 1071              	.L64:
 255:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		case 7: mask = 0x80; break;
 1072              		.loc 1 255 0
 1073 04aa 1F23     		movs	r3, #31
 1074 04ac FB18     		adds	r3, r7, r3
 1075 04ae 8022     		movs	r2, #128
 1076 04b0 1A70     		strb	r2, [r3]
 1077 04b2 C046     		nop
 1078              	.L55:
 256:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 257:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		if(set == 0)
 1079              		.loc 1 257 0
 1080 04b4 7B68     		ldr	r3, [r7, #4]
 1081 04b6 002B     		cmp	r3, #0
 1082 04b8 06D1     		bne	.L65
 258:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			mask = ~mask;
 1083              		.loc 1 258 0
 1084 04ba 1F23     		movs	r3, #31
 1085 04bc FB18     		adds	r3, r7, r3
 1086 04be 1F22     		movs	r2, #31
 1087 04c0 BA18     		adds	r2, r7, r2
 1088 04c2 1278     		ldrb	r2, [r2]
 1089 04c4 D243     		mvns	r2, r2
 1090 04c6 1A70     		strb	r2, [r3]
 1091              	.L65:
 259:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		if(x > 64){
 1092              		.loc 1 259 0
 1093 04c8 FB68     		ldr	r3, [r7, #12]
 1094 04ca 402B     		cmp	r3, #64
 1095 04cc 07DD     		ble	.L66
 260:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			controller = B_CS2;
 1096              		.loc 1 260 0
 1097 04ce 1E23     		movs	r3, #30
 1098 04d0 FB18     		adds	r3, r7, r3
 1099 04d2 1022     		movs	r2, #16
 1100 04d4 1A70     		strb	r2, [r3]
 261:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		x = x - 65;
 1101              		.loc 1 261 0
 1102 04d6 FB68     		ldr	r3, [r7, #12]
 1103 04d8 413B     		subs	r3, r3, #65
 1104 04da FB60     		str	r3, [r7, #12]
 1105 04dc 06E0     		b	.L67
 1106              	.L66:
 262:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		} 
 263:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		else {
 264:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		controller = B_CS1;
 1107              		.loc 1 264 0
 1108 04de 1E23     		movs	r3, #30
 1109 04e0 FB18     		adds	r3, r7, r3
 1110 04e2 0822     		movs	r2, #8
 1111 04e4 1A70     		strb	r2, [r3]
 265:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		x = x-1;
 1112              		.loc 1 265 0
 1113 04e6 FB68     		ldr	r3, [r7, #12]
 1114 04e8 013B     		subs	r3, r3, #1
 1115 04ea FB60     		str	r3, [r7, #12]
 1116              	.L67:
 266:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		}
 267:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller );
 1117              		.loc 1 267 0
 1118 04ec FB68     		ldr	r3, [r7, #12]
 1119 04ee 5BB2     		sxtb	r3, r3
 1120 04f0 4022     		movs	r2, #64
 1121 04f2 1343     		orrs	r3, r2
 1122 04f4 5BB2     		sxtb	r3, r3
 1123 04f6 DAB2     		uxtb	r2, r3
 1124 04f8 1E23     		movs	r3, #30
 1125 04fa FB18     		adds	r3, r7, r3
 1126 04fc 1B78     		ldrb	r3, [r3]
 1127 04fe 1900     		movs	r1, r3
 1128 0500 1000     		movs	r0, r2
 1129 0502 FFF70BFF 		bl	graphic_write_command
 268:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_write_command(LCD_SET_PAGE | index, controller );
 1130              		.loc 1 268 0
 1131 0506 BB69     		ldr	r3, [r7, #24]
 1132 0508 5BB2     		sxtb	r3, r3
 1133 050a 4822     		movs	r2, #72
 1134 050c 5242     		rsbs	r2, r2, #0
 1135 050e 1343     		orrs	r3, r2
 1136 0510 5BB2     		sxtb	r3, r3
 1137 0512 DAB2     		uxtb	r2, r3
 1138 0514 1E23     		movs	r3, #30
 1139 0516 FB18     		adds	r3, r7, r3
 1140 0518 1B78     		ldrb	r3, [r3]
 1141 051a 1900     		movs	r1, r3
 1142 051c 1000     		movs	r0, r2
 1143 051e FFF7FDFE 		bl	graphic_write_command
 269:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		c = graphic_read_data(controller);
 1144              		.loc 1 269 0
 1145 0522 1723     		movs	r3, #23
 1146 0524 FC18     		adds	r4, r7, r3
 1147 0526 1E23     		movs	r3, #30
 1148 0528 FB18     		adds	r3, r7, r3
 1149 052a 1B78     		ldrb	r3, [r3]
 1150 052c 1800     		movs	r0, r3
 1151 052e FFF7A9FE 		bl	graphic_read_data
 1152 0532 0300     		movs	r3, r0
 1153 0534 2370     		strb	r3, [r4]
 270:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller);
 1154              		.loc 1 270 0
 1155 0536 FB68     		ldr	r3, [r7, #12]
 1156 0538 5BB2     		sxtb	r3, r3
 1157 053a 4022     		movs	r2, #64
 1158 053c 1343     		orrs	r3, r2
 1159 053e 5BB2     		sxtb	r3, r3
 1160 0540 DAB2     		uxtb	r2, r3
 1161 0542 1E23     		movs	r3, #30
 1162 0544 FB18     		adds	r3, r7, r3
 1163 0546 1B78     		ldrb	r3, [r3]
 1164 0548 1900     		movs	r1, r3
 1165 054a 1000     		movs	r0, r2
 1166 054c FFF7E6FE 		bl	graphic_write_command
 271:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		if(set)
 1167              		.loc 1 271 0
 1168 0550 7B68     		ldr	r3, [r7, #4]
 1169 0552 002B     		cmp	r3, #0
 1170 0554 0AD0     		beq	.L68
 272:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			mask = mask | c;
 1171              		.loc 1 272 0
 1172 0556 1F23     		movs	r3, #31
 1173 0558 FB18     		adds	r3, r7, r3
 1174 055a 1F22     		movs	r2, #31
 1175 055c B918     		adds	r1, r7, r2
 1176 055e 1722     		movs	r2, #23
 1177 0560 BA18     		adds	r2, r7, r2
 1178 0562 0978     		ldrb	r1, [r1]
 1179 0564 1278     		ldrb	r2, [r2]
 1180 0566 0A43     		orrs	r2, r1
 1181 0568 1A70     		strb	r2, [r3]
 1182 056a 09E0     		b	.L69
 1183              	.L68:
 273:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		else
 274:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			mask = mask & c;
 1184              		.loc 1 274 0
 1185 056c 1F23     		movs	r3, #31
 1186 056e FB18     		adds	r3, r7, r3
 1187 0570 1F22     		movs	r2, #31
 1188 0572 BA18     		adds	r2, r7, r2
 1189 0574 1721     		movs	r1, #23
 1190 0576 7918     		adds	r1, r7, r1
 1191 0578 1278     		ldrb	r2, [r2]
 1192 057a 0978     		ldrb	r1, [r1]
 1193 057c 0A40     		ands	r2, r1
 1194 057e 1A70     		strb	r2, [r3]
 1195              	.L69:
 275:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_write_data(mask, controller);
 1196              		.loc 1 275 0
 1197 0580 1E23     		movs	r3, #30
 1198 0582 FB18     		adds	r3, r7, r3
 1199 0584 1A78     		ldrb	r2, [r3]
 1200 0586 1F23     		movs	r3, #31
 1201 0588 FB18     		adds	r3, r7, r3
 1202 058a 1B78     		ldrb	r3, [r3]
 1203 058c 1100     		movs	r1, r2
 1204 058e 1800     		movs	r0, r3
 1205 0590 FFF7E4FE 		bl	graphic_write_data
 1206 0594 00E0     		b	.L49
 1207              	.L70:
 245:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	index = (y-1)/8;
 1208              		.loc 1 245 0
 1209 0596 C046     		nop
 1210              	.L49:
 276:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 1211              		.loc 1 276 0
 1212 0598 BD46     		mov	sp, r7
 1213 059a 09B0     		add	sp, sp, #36
 1214              		@ sp needed
 1215 059c 90BD     		pop	{r4, r7, pc}
 1216              	.L72:
 1217 059e C046     		.align	2
 1218              	.L71:
 1219 05a0 07000080 		.word	-2147483641
 1220 05a4 00000000 		.word	.L57
 1221              		.cfi_endproc
 1222              	.LFE13:
 1224              		.align	1
 1225              		.global	set_object_speed
 1226              		.syntax unified
 1227              		.code	16
 1228              		.thumb_func
 1229              		.fpu softvfp
 1231              	set_object_speed:
 1232              	.LFB14:
 277:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
 278:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void set_object_speed(POBJECT O, int speedx, int speedy){
 1233              		.loc 1 278 0
 1234              		.cfi_startproc
 1235              		@ args = 0, pretend = 0, frame = 16
 1236              		@ frame_needed = 1, uses_anonymous_args = 0
 1237 05a8 80B5     		push	{r7, lr}
 1238              		.cfi_def_cfa_offset 8
 1239              		.cfi_offset 7, -8
 1240              		.cfi_offset 14, -4
 1241 05aa 84B0     		sub	sp, sp, #16
 1242              		.cfi_def_cfa_offset 24
 1243 05ac 00AF     		add	r7, sp, #0
 1244              		.cfi_def_cfa_register 7
 1245 05ae F860     		str	r0, [r7, #12]
 1246 05b0 B960     		str	r1, [r7, #8]
 1247 05b2 7A60     		str	r2, [r7, #4]
 279:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	O->dirx = speedx;
 1248              		.loc 1 279 0
 1249 05b4 FB68     		ldr	r3, [r7, #12]
 1250 05b6 BA68     		ldr	r2, [r7, #8]
 1251 05b8 5A60     		str	r2, [r3, #4]
 280:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	O->diry = speedy;
 1252              		.loc 1 280 0
 1253 05ba FB68     		ldr	r3, [r7, #12]
 1254 05bc 7A68     		ldr	r2, [r7, #4]
 1255 05be 9A60     		str	r2, [r3, #8]
 281:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 1256              		.loc 1 281 0
 1257 05c0 C046     		nop
 1258 05c2 BD46     		mov	sp, r7
 1259 05c4 04B0     		add	sp, sp, #16
 1260              		@ sp needed
 1261 05c6 80BD     		pop	{r7, pc}
 1262              		.cfi_endproc
 1263              	.LFE14:
 1265              		.align	1
 1266              		.global	draw_object
 1267              		.syntax unified
 1268              		.code	16
 1269              		.thumb_func
 1270              		.fpu softvfp
 1272              	draw_object:
 1273              	.LFB15:
 282:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void draw_object(POBJECT O){
 1274              		.loc 1 282 0
 1275              		.cfi_startproc
 1276              		@ args = 0, pretend = 0, frame = 16
 1277              		@ frame_needed = 1, uses_anonymous_args = 0
 1278 05c8 80B5     		push	{r7, lr}
 1279              		.cfi_def_cfa_offset 8
 1280              		.cfi_offset 7, -8
 1281              		.cfi_offset 14, -4
 1282 05ca 84B0     		sub	sp, sp, #16
 1283              		.cfi_def_cfa_offset 24
 1284 05cc 00AF     		add	r7, sp, #0
 1285              		.cfi_def_cfa_register 7
 1286 05ce 7860     		str	r0, [r7, #4]
 1287              	.LBB2:
 283:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1288              		.loc 1 283 0
 1289 05d0 0023     		movs	r3, #0
 1290 05d2 FB60     		str	r3, [r7, #12]
 1291 05d4 1CE0     		b	.L75
 1292              	.L76:
 284:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
 1293              		.loc 1 284 0 discriminator 3
 1294 05d6 7B68     		ldr	r3, [r7, #4]
 1295 05d8 DA68     		ldr	r2, [r3, #12]
 1296 05da 7B68     		ldr	r3, [r7, #4]
 1297 05dc 1968     		ldr	r1, [r3]
 1298 05de FB68     		ldr	r3, [r7, #12]
 1299 05e0 0433     		adds	r3, r3, #4
 1300 05e2 5B00     		lsls	r3, r3, #1
 1301 05e4 CB18     		adds	r3, r1, r3
 1302 05e6 0433     		adds	r3, r3, #4
 1303 05e8 1B78     		ldrb	r3, [r3]
 1304 05ea D018     		adds	r0, r2, r3
 1305 05ec 7B68     		ldr	r3, [r7, #4]
 1306 05ee 1A69     		ldr	r2, [r3, #16]
 1307 05f0 7B68     		ldr	r3, [r7, #4]
 1308 05f2 1968     		ldr	r1, [r3]
 1309 05f4 FB68     		ldr	r3, [r7, #12]
 1310 05f6 0433     		adds	r3, r3, #4
 1311 05f8 5B00     		lsls	r3, r3, #1
 1312 05fa CB18     		adds	r3, r1, r3
 1313 05fc 0533     		adds	r3, r3, #5
 1314 05fe 1B78     		ldrb	r3, [r3]
 1315 0600 D318     		adds	r3, r2, r3
 1316 0602 0122     		movs	r2, #1
 1317 0604 1900     		movs	r1, r3
 1318 0606 FFF7FEFF 		bl	pixel
 283:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1319              		.loc 1 283 0 discriminator 3
 1320 060a FB68     		ldr	r3, [r7, #12]
 1321 060c 0133     		adds	r3, r3, #1
 1322 060e FB60     		str	r3, [r7, #12]
 1323              	.L75:
 283:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1324              		.loc 1 283 0 is_stmt 0 discriminator 1
 1325 0610 FB68     		ldr	r3, [r7, #12]
 1326 0612 132B     		cmp	r3, #19
 1327 0614 DFDD     		ble	.L76
 1328              	.LBE2:
 285:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 286:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 1329              		.loc 1 286 0 is_stmt 1
 1330 0616 C046     		nop
 1331 0618 BD46     		mov	sp, r7
 1332 061a 04B0     		add	sp, sp, #16
 1333              		@ sp needed
 1334 061c 80BD     		pop	{r7, pc}
 1335              		.cfi_endproc
 1336              	.LFE15:
 1338              		.align	1
 1339              		.global	clear_object
 1340              		.syntax unified
 1341              		.code	16
 1342              		.thumb_func
 1343              		.fpu softvfp
 1345              	clear_object:
 1346              	.LFB16:
 287:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void clear_object(POBJECT O){
 1347              		.loc 1 287 0
 1348              		.cfi_startproc
 1349              		@ args = 0, pretend = 0, frame = 16
 1350              		@ frame_needed = 1, uses_anonymous_args = 0
 1351 061e 80B5     		push	{r7, lr}
 1352              		.cfi_def_cfa_offset 8
 1353              		.cfi_offset 7, -8
 1354              		.cfi_offset 14, -4
 1355 0620 84B0     		sub	sp, sp, #16
 1356              		.cfi_def_cfa_offset 24
 1357 0622 00AF     		add	r7, sp, #0
 1358              		.cfi_def_cfa_register 7
 1359 0624 7860     		str	r0, [r7, #4]
 1360              	.LBB3:
 288:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1361              		.loc 1 288 0
 1362 0626 0023     		movs	r3, #0
 1363 0628 FB60     		str	r3, [r7, #12]
 1364 062a 1CE0     		b	.L78
 1365              	.L79:
 289:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
 1366              		.loc 1 289 0 discriminator 3
 1367 062c 7B68     		ldr	r3, [r7, #4]
 1368 062e DA68     		ldr	r2, [r3, #12]
 1369 0630 7B68     		ldr	r3, [r7, #4]
 1370 0632 1968     		ldr	r1, [r3]
 1371 0634 FB68     		ldr	r3, [r7, #12]
 1372 0636 0433     		adds	r3, r3, #4
 1373 0638 5B00     		lsls	r3, r3, #1
 1374 063a CB18     		adds	r3, r1, r3
 1375 063c 0433     		adds	r3, r3, #4
 1376 063e 1B78     		ldrb	r3, [r3]
 1377 0640 D018     		adds	r0, r2, r3
 1378 0642 7B68     		ldr	r3, [r7, #4]
 1379 0644 1A69     		ldr	r2, [r3, #16]
 1380 0646 7B68     		ldr	r3, [r7, #4]
 1381 0648 1968     		ldr	r1, [r3]
 1382 064a FB68     		ldr	r3, [r7, #12]
 1383 064c 0433     		adds	r3, r3, #4
 1384 064e 5B00     		lsls	r3, r3, #1
 1385 0650 CB18     		adds	r3, r1, r3
 1386 0652 0533     		adds	r3, r3, #5
 1387 0654 1B78     		ldrb	r3, [r3]
 1388 0656 D318     		adds	r3, r2, r3
 1389 0658 0022     		movs	r2, #0
 1390 065a 1900     		movs	r1, r3
 1391 065c FFF7FEFF 		bl	pixel
 288:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1392              		.loc 1 288 0 discriminator 3
 1393 0660 FB68     		ldr	r3, [r7, #12]
 1394 0662 0133     		adds	r3, r3, #1
 1395 0664 FB60     		str	r3, [r7, #12]
 1396              	.L78:
 288:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1397              		.loc 1 288 0 is_stmt 0 discriminator 1
 1398 0666 FB68     		ldr	r3, [r7, #12]
 1399 0668 132B     		cmp	r3, #19
 1400 066a DFDD     		ble	.L79
 1401              	.LBE3:
 290:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 291:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 1402              		.loc 1 291 0 is_stmt 1
 1403 066c C046     		nop
 1404 066e BD46     		mov	sp, r7
 1405 0670 04B0     		add	sp, sp, #16
 1406              		@ sp needed
 1407 0672 80BD     		pop	{r7, pc}
 1408              		.cfi_endproc
 1409              	.LFE16:
 1411              		.align	1
 1412              		.global	move_object
 1413              		.syntax unified
 1414              		.code	16
 1415              		.thumb_func
 1416              		.fpu softvfp
 1418              	move_object:
 1419              	.LFB17:
 292:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void move_object(POBJECT O){
 1420              		.loc 1 292 0
 1421              		.cfi_startproc
 1422              		@ args = 0, pretend = 0, frame = 8
 1423              		@ frame_needed = 1, uses_anonymous_args = 0
 1424 0674 80B5     		push	{r7, lr}
 1425              		.cfi_def_cfa_offset 8
 1426              		.cfi_offset 7, -8
 1427              		.cfi_offset 14, -4
 1428 0676 82B0     		sub	sp, sp, #8
 1429              		.cfi_def_cfa_offset 16
 1430 0678 00AF     		add	r7, sp, #0
 1431              		.cfi_def_cfa_register 7
 1432 067a 7860     		str	r0, [r7, #4]
 293:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	clear_object(O);
 1433              		.loc 1 293 0
 1434 067c 7B68     		ldr	r3, [r7, #4]
 1435 067e 1800     		movs	r0, r3
 1436 0680 FFF7FEFF 		bl	clear_object
 294:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	O->posx += O->dirx;
 1437              		.loc 1 294 0
 1438 0684 7B68     		ldr	r3, [r7, #4]
 1439 0686 DA68     		ldr	r2, [r3, #12]
 1440 0688 7B68     		ldr	r3, [r7, #4]
 1441 068a 5B68     		ldr	r3, [r3, #4]
 1442 068c D218     		adds	r2, r2, r3
 1443 068e 7B68     		ldr	r3, [r7, #4]
 1444 0690 DA60     		str	r2, [r3, #12]
 295:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	O->posy += O->diry;
 1445              		.loc 1 295 0
 1446 0692 7B68     		ldr	r3, [r7, #4]
 1447 0694 1A69     		ldr	r2, [r3, #16]
 1448 0696 7B68     		ldr	r3, [r7, #4]
 1449 0698 9B68     		ldr	r3, [r3, #8]
 1450 069a D218     		adds	r2, r2, r3
 1451 069c 7B68     		ldr	r3, [r7, #4]
 1452 069e 1A61     		str	r2, [r3, #16]
 296:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	if(O->posx < 1 || O->posx > 128){
 1453              		.loc 1 296 0
 1454 06a0 7B68     		ldr	r3, [r7, #4]
 1455 06a2 DB68     		ldr	r3, [r3, #12]
 1456 06a4 002B     		cmp	r3, #0
 1457 06a6 03DD     		ble	.L81
 1458              		.loc 1 296 0 is_stmt 0 discriminator 1
 1459 06a8 7B68     		ldr	r3, [r7, #4]
 1460 06aa DB68     		ldr	r3, [r3, #12]
 1461 06ac 802B     		cmp	r3, #128
 1462 06ae 05DD     		ble	.L82
 1463              	.L81:
 297:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		O->dirx = -(O->dirx);
 1464              		.loc 1 297 0 is_stmt 1
 1465 06b0 7B68     		ldr	r3, [r7, #4]
 1466 06b2 5B68     		ldr	r3, [r3, #4]
 1467 06b4 5A42     		rsbs	r2, r3, #0
 1468 06b6 7B68     		ldr	r3, [r7, #4]
 1469 06b8 5A60     		str	r2, [r3, #4]
 1470 06ba 11E0     		b	.L83
 1471              	.L82:
 298:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 299:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	else if(O->posy < 1 || O->posy > 128 - O->geo->sizeY){
 1472              		.loc 1 299 0
 1473 06bc 7B68     		ldr	r3, [r7, #4]
 1474 06be 1B69     		ldr	r3, [r3, #16]
 1475 06c0 002B     		cmp	r3, #0
 1476 06c2 08DD     		ble	.L84
 1477              		.loc 1 299 0 is_stmt 0 discriminator 1
 1478 06c4 7B68     		ldr	r3, [r7, #4]
 1479 06c6 1A69     		ldr	r2, [r3, #16]
 1480 06c8 7B68     		ldr	r3, [r7, #4]
 1481 06ca 1B68     		ldr	r3, [r3]
 1482 06cc 9B68     		ldr	r3, [r3, #8]
 1483 06ce 8021     		movs	r1, #128
 1484 06d0 CB1A     		subs	r3, r1, r3
 1485 06d2 9A42     		cmp	r2, r3
 1486 06d4 04DD     		ble	.L83
 1487              	.L84:
 300:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		O->diry = -(O->diry);
 1488              		.loc 1 300 0 is_stmt 1
 1489 06d6 7B68     		ldr	r3, [r7, #4]
 1490 06d8 9B68     		ldr	r3, [r3, #8]
 1491 06da 5A42     		rsbs	r2, r3, #0
 1492 06dc 7B68     		ldr	r3, [r7, #4]
 1493 06de 9A60     		str	r2, [r3, #8]
 1494              	.L83:
 301:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	}
 302:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	draw_object(O);
 1495              		.loc 1 302 0
 1496 06e0 7B68     		ldr	r3, [r7, #4]
 1497 06e2 1800     		movs	r0, r3
 1498 06e4 FFF7FEFF 		bl	draw_object
 303:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 1499              		.loc 1 303 0
 1500 06e8 C046     		nop
 1501 06ea BD46     		mov	sp, r7
 1502 06ec 02B0     		add	sp, sp, #8
 1503              		@ sp needed
 1504 06ee 80BD     		pop	{r7, pc}
 1505              		.cfi_endproc
 1506              	.LFE17:
 1508              		.align	1
 1509              		.global	delay_250ns
 1510              		.syntax unified
 1511              		.code	16
 1512              		.thumb_func
 1513              		.fpu softvfp
 1515              	delay_250ns:
 1516              	.LFB18:
 304:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
 305:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** //Delay funktioner
 306:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void delay_250ns ( void ) {
 1517              		.loc 1 306 0
 1518              		.cfi_startproc
 1519              		@ args = 0, pretend = 0, frame = 0
 1520              		@ frame_needed = 1, uses_anonymous_args = 0
 1521 06f0 80B5     		push	{r7, lr}
 1522              		.cfi_def_cfa_offset 8
 1523              		.cfi_offset 7, -8
 1524              		.cfi_offset 14, -4
 1525 06f2 00AF     		add	r7, sp, #0
 1526              		.cfi_def_cfa_register 7
 307:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		*STK_CTRL = 0x00;
 1527              		.loc 1 307 0
 1528 06f4 0C4B     		ldr	r3, .L87
 1529 06f6 0022     		movs	r2, #0
 1530 06f8 1A60     		str	r2, [r3]
 308:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		*STK_LOAD = ((168/4) - 1);
 1531              		.loc 1 308 0
 1532 06fa 0C4B     		ldr	r3, .L87+4
 1533 06fc 2922     		movs	r2, #41
 1534 06fe 1A60     		str	r2, [r3]
 309:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		*STK_VAL = 0;
 1535              		.loc 1 309 0
 1536 0700 0B4B     		ldr	r3, .L87+8
 1537 0702 0022     		movs	r2, #0
 1538 0704 1A60     		str	r2, [r3]
 310:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		*STK_CTRL = 5;
 1539              		.loc 1 310 0
 1540 0706 084B     		ldr	r3, .L87
 1541 0708 0522     		movs	r2, #5
 1542 070a 1A60     		str	r2, [r3]
 311:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 1543              		.loc 1 311 0
 1544 070c C046     		nop
 1545              	.L86:
 1546              		.loc 1 311 0 is_stmt 0 discriminator 1
 1547 070e 064B     		ldr	r3, .L87
 1548 0710 1A68     		ldr	r2, [r3]
 1549 0712 8023     		movs	r3, #128
 1550 0714 5B02     		lsls	r3, r3, #9
 1551 0716 1340     		ands	r3, r2
 1552 0718 F9D0     		beq	.L86
 312:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		*STK_CTRL = 0;
 1553              		.loc 1 312 0 is_stmt 1
 1554 071a 034B     		ldr	r3, .L87
 1555 071c 0022     		movs	r2, #0
 1556 071e 1A60     		str	r2, [r3]
 313:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 1557              		.loc 1 313 0
 1558 0720 C046     		nop
 1559 0722 BD46     		mov	sp, r7
 1560              		@ sp needed
 1561 0724 80BD     		pop	{r7, pc}
 1562              	.L88:
 1563 0726 C046     		.align	2
 1564              	.L87:
 1565 0728 10E000E0 		.word	-536813552
 1566 072c 14E000E0 		.word	-536813548
 1567 0730 18E000E0 		.word	-536813544
 1568              		.cfi_endproc
 1569              	.LFE18:
 1571              		.align	1
 1572              		.global	delay_500ns
 1573              		.syntax unified
 1574              		.code	16
 1575              		.thumb_func
 1576              		.fpu softvfp
 1578              	delay_500ns:
 1579              	.LFB19:
 314:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void delay_500ns(void){
 1580              		.loc 1 314 0
 1581              		.cfi_startproc
 1582              		@ args = 0, pretend = 0, frame = 0
 1583              		@ frame_needed = 1, uses_anonymous_args = 0
 1584 0734 80B5     		push	{r7, lr}
 1585              		.cfi_def_cfa_offset 8
 1586              		.cfi_offset 7, -8
 1587              		.cfi_offset 14, -4
 1588 0736 00AF     		add	r7, sp, #0
 1589              		.cfi_def_cfa_register 7
 315:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_250ns();
 1590              		.loc 1 315 0
 1591 0738 FFF7FEFF 		bl	delay_250ns
 316:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	delay_250ns();
 1592              		.loc 1 316 0
 1593 073c FFF7FEFF 		bl	delay_250ns
 317:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 1594              		.loc 1 317 0
 1595 0740 C046     		nop
 1596 0742 BD46     		mov	sp, r7
 1597              		@ sp needed
 1598 0744 80BD     		pop	{r7, pc}
 1599              		.cfi_endproc
 1600              	.LFE19:
 1602              		.align	1
 1603              		.global	delay_mikro
 1604              		.syntax unified
 1605              		.code	16
 1606              		.thumb_func
 1607              		.fpu softvfp
 1609              	delay_mikro:
 1610              	.LFB20:
 318:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void delay_mikro (unsigned int us){
 1611              		.loc 1 318 0
 1612              		.cfi_startproc
 1613              		@ args = 0, pretend = 0, frame = 16
 1614              		@ frame_needed = 1, uses_anonymous_args = 0
 1615 0746 80B5     		push	{r7, lr}
 1616              		.cfi_def_cfa_offset 8
 1617              		.cfi_offset 7, -8
 1618              		.cfi_offset 14, -4
 1619 0748 84B0     		sub	sp, sp, #16
 1620              		.cfi_def_cfa_offset 24
 1621 074a 00AF     		add	r7, sp, #0
 1622              		.cfi_def_cfa_register 7
 1623 074c 7860     		str	r0, [r7, #4]
 1624              	.LBB4:
 319:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	for (int i = 0; i < us; i++) {
 1625              		.loc 1 319 0
 1626 074e 0023     		movs	r3, #0
 1627 0750 FB60     		str	r3, [r7, #12]
 1628 0752 0AE0     		b	.L91
 1629              	.L92:
 320:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_250ns();
 1630              		.loc 1 320 0 discriminator 3
 1631 0754 FFF7FEFF 		bl	delay_250ns
 321:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_250ns();
 1632              		.loc 1 321 0 discriminator 3
 1633 0758 FFF7FEFF 		bl	delay_250ns
 322:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_250ns();
 1634              		.loc 1 322 0 discriminator 3
 1635 075c FFF7FEFF 		bl	delay_250ns
 323:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_250ns();
 1636              		.loc 1 323 0 discriminator 3
 1637 0760 FFF7FEFF 		bl	delay_250ns
 319:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_250ns();
 1638              		.loc 1 319 0 discriminator 3
 1639 0764 FB68     		ldr	r3, [r7, #12]
 1640 0766 0133     		adds	r3, r3, #1
 1641 0768 FB60     		str	r3, [r7, #12]
 1642              	.L91:
 319:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_250ns();
 1643              		.loc 1 319 0 is_stmt 0 discriminator 1
 1644 076a FA68     		ldr	r2, [r7, #12]
 1645 076c 7B68     		ldr	r3, [r7, #4]
 1646 076e 9A42     		cmp	r2, r3
 1647 0770 F0D3     		bcc	.L92
 1648              	.LBE4:
 324:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		}
 325:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }	
 1649              		.loc 1 325 0 is_stmt 1
 1650 0772 C046     		nop
 1651 0774 BD46     		mov	sp, r7
 1652 0776 04B0     		add	sp, sp, #16
 1653              		@ sp needed
 1654 0778 80BD     		pop	{r7, pc}
 1655              		.cfi_endproc
 1656              	.LFE20:
 1658              		.align	1
 1659              		.global	delay_milli
 1660              		.syntax unified
 1661              		.code	16
 1662              		.thumb_func
 1663              		.fpu softvfp
 1665              	delay_milli:
 1666              	.LFB21:
 326:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void delay_milli (unsigned int ms){
 1667              		.loc 1 326 0
 1668              		.cfi_startproc
 1669              		@ args = 0, pretend = 0, frame = 8
 1670              		@ frame_needed = 1, uses_anonymous_args = 0
 1671 077a 80B5     		push	{r7, lr}
 1672              		.cfi_def_cfa_offset 8
 1673              		.cfi_offset 7, -8
 1674              		.cfi_offset 14, -4
 1675 077c 82B0     		sub	sp, sp, #8
 1676              		.cfi_def_cfa_offset 16
 1677 077e 00AF     		add	r7, sp, #0
 1678              		.cfi_def_cfa_register 7
 1679 0780 7860     		str	r0, [r7, #4]
 327:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	#ifdef SIMULATOR
 328:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_mikro(ms);
 1680              		.loc 1 328 0
 1681 0782 7B68     		ldr	r3, [r7, #4]
 1682 0784 1800     		movs	r0, r3
 1683 0786 FFF7FEFF 		bl	delay_mikro
 329:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	#else
 330:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		delay_mikro(ms * 1000);
 331:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	#endif
 332:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** }
 1684              		.loc 1 332 0
 1685 078a C046     		nop
 1686 078c BD46     		mov	sp, r7
 1687 078e 02B0     		add	sp, sp, #8
 1688              		@ sp needed
 1689 0790 80BD     		pop	{r7, pc}
 1690              		.cfi_endproc
 1691              	.LFE21:
 1693              		.align	1
 1694              		.global	main
 1695              		.syntax unified
 1696              		.code	16
 1697              		.thumb_func
 1698              		.fpu softvfp
 1700              	main:
 1701              	.LFB22:
 333:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 
 334:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** void main(void){
 1702              		.loc 1 334 0
 1703              		.cfi_startproc
 1704              		@ args = 0, pretend = 0, frame = 8
 1705              		@ frame_needed = 1, uses_anonymous_args = 0
 1706 0792 80B5     		push	{r7, lr}
 1707              		.cfi_def_cfa_offset 8
 1708              		.cfi_offset 7, -8
 1709              		.cfi_offset 14, -4
 1710 0794 82B0     		sub	sp, sp, #8
 1711              		.cfi_def_cfa_offset 16
 1712 0796 00AF     		add	r7, sp, #0
 1713              		.cfi_def_cfa_register 7
 335:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	POBJECT p = &ball;
 1714              		.loc 1 335 0
 1715 0798 0A4B     		ldr	r3, .L96
 1716 079a 7B60     		str	r3, [r7, #4]
 336:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	init_app();
 1717              		.loc 1 336 0
 1718 079c FFF7FEFF 		bl	init_app
 337:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	graphic_initialize();
 1719              		.loc 1 337 0
 1720 07a0 FFF7FEFF 		bl	graphic_initialize
 338:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	#ifndef SIMULATOR
 339:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		graphic_clear_screen();
 340:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 	#endif
 341:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		p->set_speed(p, 4, 2);
 1721              		.loc 1 341 0
 1722 07a4 7B68     		ldr	r3, [r7, #4]
 1723 07a6 1B6A     		ldr	r3, [r3, #32]
 1724 07a8 7868     		ldr	r0, [r7, #4]
 1725 07aa 0222     		movs	r2, #2
 1726 07ac 0421     		movs	r1, #4
 1727 07ae 9847     		blx	r3
 1728              	.LVL0:
 1729              	.L95:
 342:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 		while(1){
 343:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			p->move(p);
 1730              		.loc 1 343 0 discriminator 1
 1731 07b0 7B68     		ldr	r3, [r7, #4]
 1732 07b2 DB69     		ldr	r3, [r3, #28]
 1733 07b4 7A68     		ldr	r2, [r7, #4]
 1734 07b6 1000     		movs	r0, r2
 1735 07b8 9847     		blx	r3
 1736              	.LVL1:
 344:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			delay_milli(40);
 1737              		.loc 1 344 0 discriminator 1
 1738 07ba 2820     		movs	r0, #40
 1739 07bc FFF7FEFF 		bl	delay_milli
 343:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/autopong\autopong.c **** 			delay_milli(40);
 1740              		.loc 1 343 0 discriminator 1
 1741 07c0 F6E7     		b	.L95
 1742              	.L97:
 1743 07c2 C046     		.align	2
 1744              	.L96:
 1745 07c4 34000000 		.word	ball
 1746              		.cfi_endproc
 1747              	.LFE22:
 1749              	.Letext0:
