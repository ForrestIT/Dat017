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
  11              		.file	"pong.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG/pong.c"
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void startup ( void )
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG/pong.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	" MOV SP,R0\n"
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	) ;
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
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
  90              		.comm	AsciiOutPrint,4,4
  91              		.global	ball_geometry
  92              		.align	2
  95              	ball_geometry:
  96 0020 0C000000 		.word	12
  97 0024 04000000 		.word	4
  98 0028 04000000 		.word	4
  99 002c 00       		.byte	0
 100 002d 01       		.byte	1
 101 002e 00       		.byte	0
 102 002f 02       		.byte	2
 103 0030 01       		.byte	1
 104 0031 00       		.byte	0
 105 0032 01       		.byte	1
 106 0033 01       		.byte	1
 107 0034 01       		.byte	1
 108 0035 02       		.byte	2
 109 0036 01       		.byte	1
 110 0037 03       		.byte	3
 111 0038 02       		.byte	2
 112 0039 00       		.byte	0
 113 003a 02       		.byte	2
 114 003b 01       		.byte	1
 115 003c 02       		.byte	2
 116 003d 02       		.byte	2
 117 003e 02       		.byte	2
 118 003f 03       		.byte	3
 119 0040 03       		.byte	3
 120 0041 01       		.byte	1
 121 0042 03       		.byte	3
 122 0043 02       		.byte	2
 123 0044 00000000 		.space	4
 124              		.global	bouncer_geometry
 125              		.align	2
 128              	bouncer_geometry:
 129 0048 0E000000 		.word	14
 130 004c 02000000 		.word	2
 131 0050 06000000 		.word	6
 132 0054 00       		.byte	0
 133 0055 00       		.byte	0
 134 0056 01       		.byte	1
 135 0057 00       		.byte	0
 136 0058 00       		.byte	0
 137 0059 01       		.byte	1
 138 005a 01       		.byte	1
 139 005b 01       		.byte	1
 140 005c 00       		.byte	0
 141 005d 02       		.byte	2
 142 005e 01       		.byte	1
 143 005f 02       		.byte	2
 144 0060 00       		.byte	0
 145 0061 03       		.byte	3
 146 0062 01       		.byte	1
 147 0063 03       		.byte	3
 148 0064 00       		.byte	0
 149 0065 04       		.byte	4
 150 0066 01       		.byte	1
 151 0067 04       		.byte	4
 152 0068 00       		.byte	0
 153 0069 05       		.byte	5
 154 006a 01       		.byte	1
 155 006b 05       		.byte	5
 156 006c 00       		.byte	0
 157 006d 06       		.byte	6
 158 006e 01       		.byte	1
 159 006f 06       		.byte	6
 160              		.align	2
 163              	left_bouncer:
 164 0070 00000000 		.word	bouncer_geometry
 165 0074 00000000 		.word	0
 166 0078 00000000 		.word	0
 167 007c 0F000000 		.word	15
 168 0080 20000000 		.word	32
 169 0084 00000000 		.word	draw_object
 170 0088 00000000 		.word	clear_object
 171 008c 00000000 		.word	move_bouncer
 172 0090 00000000 		.word	set_object_speed
 173 0094 00000000 		.word	set_pos
 174 0098 00000000 		.space	4
 175              		.align	2
 178              	right_bouncer:
 179 009c 00000000 		.word	bouncer_geometry
 180 00a0 00000000 		.word	0
 181 00a4 00000000 		.word	0
 182 00a8 71000000 		.word	113
 183 00ac 20000000 		.word	32
 184 00b0 00000000 		.word	draw_object
 185 00b4 00000000 		.word	clear_object
 186 00b8 00000000 		.word	move_bouncer
 187 00bc 00000000 		.word	set_object_speed
 188 00c0 00000000 		.word	set_pos
 189 00c4 00000000 		.space	4
 190              		.align	2
 193              	ball:
 194 00c8 00000000 		.word	ball_geometry
 195 00cc 00000000 		.word	0
 196 00d0 00000000 		.word	0
 197 00d4 40000000 		.word	64
 198 00d8 20000000 		.word	32
 199 00dc 00000000 		.word	draw_object
 200 00e0 00000000 		.word	clear_object
 201 00e4 00000000 		.word	move_ball
 202 00e8 00000000 		.word	set_object_speed
 203 00ec 00000000 		.word	set_pos
 204 00f0 00000000 		.word	check_ball_collision
 205              		.align	2
 208              	Player1:
 209 00f4 70000000 		.word	left_bouncer
 210 00f8 00000000 		.word	0
 211 00fc 706C6179 		.ascii	"player1: \000"
 211      6572313A 
 211      2000
 212 0106 506C6179 		.ascii	"Player1 wins"
 212      65723120 
 212      77696E73 
 213 0112 0000     		.space	2
 214              		.align	2
 217              	Player2:
 218 0114 9C000000 		.word	right_bouncer
 219 0118 00000000 		.word	0
 220 011c 506C6179 		.ascii	"Player2: \000"
 220      6572323A 
 220      2000
 221 0126 504C6179 		.ascii	"PLayer2 wins"
 221      65723220 
 221      77696E73 
 222 0132 0000     		.space	2
 223              		.text
 224              		.align	1
 225              		.syntax unified
 226              		.code	16
 227              		.thumb_func
 228              		.fpu softvfp
 230              	graphic_ctrl_bit_set:
 231              	.LFB1:
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef unsigned int uint32_t;
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef unsigned short int uint16_t;
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef unsigned char uint8_t;
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef struct GPIO { // Struct för GPIO Portar
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint32_t	moder;
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint16_t	otyper;
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint16_t	otReserved;
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint32_t	oSpeedr;
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint32_t	pupdr;
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint8_t		idr_low;
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint8_t		idr_high;
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint16_t	idr_reserved;
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint8_t		odr_low;
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint8_t		odr_high;
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint16_t	odr_reserved;
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** } GPIO;
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef volatile GPIO* gpioptr;
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define GPIO_E (*((gpioptr)0x40021000))
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define GPIO_D (*((gpioptr)0x40020C00))
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define SysTick 0xE000E010
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define B_E 0x40 // Enable
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define B_RST 0x20 // Reset
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define B_CS2 0x10 // Controller Select 2
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define B_CS1 8 // Controller Select 1
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define B_RW 2 // 0 Write, 1 Read
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define B_RS 1 // 0 Command, 1 Data
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define LCD_ON 0x3F // Display on
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define LCD_OFF 0x3E // Display off
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define LCD_DISP_START 0xC0 // Start address
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define LCD_BUSY 0x80 // Read busy status
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define LCD_WIDTH 128 //LC skärmens bredd
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define LCD_HEIGHT 64 //LC skärmens höjd
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define MAX_POINTS 14 //max antal punkter som en Geometry får ha.
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** //#define SIMULATOR //Om man kör i labbsystemet kommentera ut hela raden.
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** #define WinPoints 9 //Poängen man ska få för att vinna.
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** unsigned char Segcodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** unsigned char Key[16]  = {1,2,3,0xA, 4, 5, 6 , 0xB, 7, 8, 9, 0xC, 0xE, 0, 0xF, 0xD};
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** char *AsciiOutPrint; //Pekaren som i Print_To_Ascii
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** // Structs
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef struct tpoint{
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	unsigned char x;
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	unsigned char y;
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }POINT;
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef struct tGeometry{
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int numPoints;
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int sizeX;
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int sizeY;
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	POINT px[MAX_POINTS];
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }GEOMETRY, *PGEOMETRY;
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef struct tObj{
  83:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	PGEOMETRY geo;
  84:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int dirx,diry;
  85:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int posx,posy;
  86:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	void (*draw)(struct tobj*);
  87:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	void (*clear)(struct tobj*);
  88:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	void (*move)(struct tobj*);
  89:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	void (*set_speed)(struct tobj*, int, int);
  90:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	void (*set_pos)(struct tobj*, int, int);
  91:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	void (*check_ball_collision)(struct tobj*);
  92:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }OBJECT, *POBJECT;
  93:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** typedef struct tPlayer{ //Spelar Structen
  94:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	POBJECT objct;
  95:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int points;
  96:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	char PAscii[10];
  97:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	char winMsg[12];
  98:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
  99:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	
 100:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }PLAYER, *PPLAYER;
 101:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 102:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 103:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** //Funktions declarationer
 104:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void graphic_initialize(void);
 105:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
 106:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
 107:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_write(uint8_t value, uint8_t controller);
 108:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_ctrl_bit_clear(uint8_t x);
 109:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void move_bouncer(POBJECT O);
 110:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void move_ball(POBJECT O);
 111:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void clear_object(POBJECT O);
 112:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void draw_object(POBJECT O);
 113:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void set_object_speed(POBJECT O, int speedx, int speedy);
 114:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void set_pos(POBJECT O, int x, int y);
 115:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** unsigned char ascii_read_status(void);
 116:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_write_CMD(unsigned char command);
 117:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void check_ball_collision(POBJECT O);
 118:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 119:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** GEOMETRY ball_geometry ={
 120:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.numPoints = 12,
 121:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.sizeX = 4,
 122:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.sizeY = 4,
 123:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	{
 124:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		/* px[0,1,2 ....] */
 125:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{0,1}, {0,2}, {1,0}, {1,1}, {1,2},
 126:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{1,3}, {2,0}, {2,1}, {2,2}, {2,3},
 127:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{3,1}, {3,2}
 128:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 129:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** };
 130:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** GEOMETRY bouncer_geometry={
 131:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.numPoints = 14,
 132:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.sizeX = 2,
 133:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.sizeY = 6,
 134:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	{
 135:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{0,0},{1,0},
 136:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{0,1},{1,1},
 137:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{0,2},{1,2},
 138:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{0,3},{1,3},
 139:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{0,4},{1,4},
 140:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{0,5},{1,5},
 141:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		{0,6},{1,6}
 142:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 143:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** };
 144:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static OBJECT left_bouncer ={ // Den vänstra "pinnen".
 145:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.geo = &bouncer_geometry,
 146:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.dirx = 0,
 147:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.diry = 0,
 148:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.posx = 15,
 149:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 150:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	draw_object,
 151:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	clear_object,
 152:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	move_bouncer,
 153:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	set_object_speed,
 154:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	set_pos,
 155:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** };
 156:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static OBJECT right_bouncer ={ //Den högra "pinnen".
 157:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.geo = &bouncer_geometry,
 158:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.dirx = 0,
 159:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.diry = 0,
 160:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.posx = LCD_WIDTH-15,
 161:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 162:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	draw_object,
 163:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	clear_object,
 164:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	move_bouncer,
 165:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	set_object_speed,
 166:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	set_pos,
 167:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** };
 168:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 169:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static OBJECT ball = {
 170:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.geo = &ball_geometry,
 171:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.dirx = 0,
 172:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.diry = 0,
 173:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.posx = LCD_WIDTH/2,
 174:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.posy = LCD_HEIGHT/2,
 175:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	draw_object,
 176:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	clear_object,
 177:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	move_ball,
 178:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	set_object_speed,
 179:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	set_pos,
 180:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	check_ball_collision,
 181:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** };
 182:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static PLAYER Player1 = { //Spelare 1
 183:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.objct = &left_bouncer,
 184:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.points = 0, //P1:s poäng.
 185:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.PAscii = "player1: ",
 186:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.winMsg = "Player1 wins"
 187:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** };
 188:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static PLAYER Player2= { //Spelare 2
 189:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.objct = &right_bouncer,
 190:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.points = 0, //P2:s poäng.
 191:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.PAscii = "Player2: ",
 192:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	.winMsg = "PLayer2 wins",
 193:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** };
 194:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 195:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** //                      Functions
 196:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** // LCD functions
 197:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_ctrl_bit_set(uint8_t x) {
 232              		.loc 1 197 0
 233              		.cfi_startproc
 234              		@ args = 0, pretend = 0, frame = 16
 235              		@ frame_needed = 1, uses_anonymous_args = 0
 236 0000 80B5     		push	{r7, lr}
 237              		.cfi_def_cfa_offset 8
 238              		.cfi_offset 7, -8
 239              		.cfi_offset 14, -4
 240 0002 84B0     		sub	sp, sp, #16
 241              		.cfi_def_cfa_offset 24
 242 0004 00AF     		add	r7, sp, #0
 243              		.cfi_def_cfa_register 7
 244 0006 0200     		movs	r2, r0
 245 0008 FB1D     		adds	r3, r7, #7
 246 000a 1A70     		strb	r2, [r3]
 198:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** uint8_t c;
 199:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** c = GPIO_E.odr_low;
 247              		.loc 1 199 0
 248 000c 124A     		ldr	r2, .L3
 249 000e 0F23     		movs	r3, #15
 250 0010 FB18     		adds	r3, r7, r3
 251 0012 127D     		ldrb	r2, [r2, #20]
 252 0014 1A70     		strb	r2, [r3]
 200:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** c &= ~B_SELECT;
 253              		.loc 1 200 0
 254 0016 0F23     		movs	r3, #15
 255 0018 FB18     		adds	r3, r7, r3
 256 001a 0F22     		movs	r2, #15
 257 001c BA18     		adds	r2, r7, r2
 258 001e 1278     		ldrb	r2, [r2]
 259 0020 0421     		movs	r1, #4
 260 0022 8A43     		bics	r2, r1
 261 0024 1A70     		strb	r2, [r3]
 201:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** c |= (~B_SELECT & x);
 262              		.loc 1 201 0
 263 0026 FB1D     		adds	r3, r7, #7
 264 0028 1B78     		ldrb	r3, [r3]
 265 002a 5BB2     		sxtb	r3, r3
 266 002c 0422     		movs	r2, #4
 267 002e 9343     		bics	r3, r2
 268 0030 5AB2     		sxtb	r2, r3
 269 0032 0F23     		movs	r3, #15
 270 0034 FB18     		adds	r3, r7, r3
 271 0036 1B78     		ldrb	r3, [r3]
 272 0038 5BB2     		sxtb	r3, r3
 273 003a 1343     		orrs	r3, r2
 274 003c 5AB2     		sxtb	r2, r3
 275 003e 0F23     		movs	r3, #15
 276 0040 FB18     		adds	r3, r7, r3
 277 0042 1A70     		strb	r2, [r3]
 202:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** GPIO_E.odr_low = c;
 278              		.loc 1 202 0
 279 0044 044A     		ldr	r2, .L3
 280 0046 0F23     		movs	r3, #15
 281 0048 FB18     		adds	r3, r7, r3
 282 004a 1B78     		ldrb	r3, [r3]
 283 004c 1375     		strb	r3, [r2, #20]
 203:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 284              		.loc 1 203 0
 285 004e C046     		nop
 286 0050 BD46     		mov	sp, r7
 287 0052 04B0     		add	sp, sp, #16
 288              		@ sp needed
 289 0054 80BD     		pop	{r7, pc}
 290              	.L4:
 291 0056 C046     		.align	2
 292              	.L3:
 293 0058 00100240 		.word	1073876992
 294              		.cfi_endproc
 295              	.LFE1:
 297              		.align	1
 298              		.syntax unified
 299              		.code	16
 300              		.thumb_func
 301              		.fpu softvfp
 303              	graphic_ctrl_bit_clear:
 304              	.LFB2:
 204:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_ctrl_bit_clear(uint8_t x) {
 305              		.loc 1 204 0
 306              		.cfi_startproc
 307              		@ args = 0, pretend = 0, frame = 16
 308              		@ frame_needed = 1, uses_anonymous_args = 0
 309 005c 80B5     		push	{r7, lr}
 310              		.cfi_def_cfa_offset 8
 311              		.cfi_offset 7, -8
 312              		.cfi_offset 14, -4
 313 005e 84B0     		sub	sp, sp, #16
 314              		.cfi_def_cfa_offset 24
 315 0060 00AF     		add	r7, sp, #0
 316              		.cfi_def_cfa_register 7
 317 0062 0200     		movs	r2, r0
 318 0064 FB1D     		adds	r3, r7, #7
 319 0066 1A70     		strb	r2, [r3]
 205:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** uint8_t c;
 206:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** c = GPIO_E.odr_low;
 320              		.loc 1 206 0
 321 0068 114A     		ldr	r2, .L6
 322 006a 0F23     		movs	r3, #15
 323 006c FB18     		adds	r3, r7, r3
 324 006e 127D     		ldrb	r2, [r2, #20]
 325 0070 1A70     		strb	r2, [r3]
 207:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** c &= ~B_SELECT;
 326              		.loc 1 207 0
 327 0072 0F23     		movs	r3, #15
 328 0074 FB18     		adds	r3, r7, r3
 329 0076 0F22     		movs	r2, #15
 330 0078 BA18     		adds	r2, r7, r2
 331 007a 1278     		ldrb	r2, [r2]
 332 007c 0421     		movs	r1, #4
 333 007e 8A43     		bics	r2, r1
 334 0080 1A70     		strb	r2, [r3]
 208:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** c &= ~x;
 335              		.loc 1 208 0
 336 0082 FB1D     		adds	r3, r7, #7
 337 0084 1B78     		ldrb	r3, [r3]
 338 0086 5BB2     		sxtb	r3, r3
 339 0088 DB43     		mvns	r3, r3
 340 008a 5BB2     		sxtb	r3, r3
 341 008c 0F22     		movs	r2, #15
 342 008e BA18     		adds	r2, r7, r2
 343 0090 1278     		ldrb	r2, [r2]
 344 0092 52B2     		sxtb	r2, r2
 345 0094 1340     		ands	r3, r2
 346 0096 5AB2     		sxtb	r2, r3
 347 0098 0F23     		movs	r3, #15
 348 009a FB18     		adds	r3, r7, r3
 349 009c 1A70     		strb	r2, [r3]
 209:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** GPIO_E.odr_low = c;
 350              		.loc 1 209 0
 351 009e 044A     		ldr	r2, .L6
 352 00a0 0F23     		movs	r3, #15
 353 00a2 FB18     		adds	r3, r7, r3
 354 00a4 1B78     		ldrb	r3, [r3]
 355 00a6 1375     		strb	r3, [r2, #20]
 210:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 356              		.loc 1 210 0
 357 00a8 C046     		nop
 358 00aa BD46     		mov	sp, r7
 359 00ac 04B0     		add	sp, sp, #16
 360              		@ sp needed
 361 00ae 80BD     		pop	{r7, pc}
 362              	.L7:
 363              		.align	2
 364              	.L6:
 365 00b0 00100240 		.word	1073876992
 366              		.cfi_endproc
 367              	.LFE2:
 369              		.align	1
 370              		.syntax unified
 371              		.code	16
 372              		.thumb_func
 373              		.fpu softvfp
 375              	select_controller:
 376              	.LFB3:
 211:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void select_controller(uint8_t controller){
 377              		.loc 1 211 0
 378              		.cfi_startproc
 379              		@ args = 0, pretend = 0, frame = 8
 380              		@ frame_needed = 1, uses_anonymous_args = 0
 381 00b4 80B5     		push	{r7, lr}
 382              		.cfi_def_cfa_offset 8
 383              		.cfi_offset 7, -8
 384              		.cfi_offset 14, -4
 385 00b6 82B0     		sub	sp, sp, #8
 386              		.cfi_def_cfa_offset 16
 387 00b8 00AF     		add	r7, sp, #0
 388              		.cfi_def_cfa_register 7
 389 00ba 0200     		movs	r2, r0
 390 00bc FB1D     		adds	r3, r7, #7
 391 00be 1A70     		strb	r2, [r3]
 212:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	switch(controller){
 392              		.loc 1 212 0
 393 00c0 FB1D     		adds	r3, r7, #7
 394 00c2 1B78     		ldrb	r3, [r3]
 395 00c4 082B     		cmp	r3, #8
 396 00c6 0CD0     		beq	.L10
 397 00c8 02DC     		bgt	.L11
 398 00ca 002B     		cmp	r3, #0
 399 00cc 05D0     		beq	.L12
 213:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 0:
 214:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
 215:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			break;
 216:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case B_CS1 :
 217:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS1);
 218:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 219:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			break;
 220:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case B_CS2 :
 221:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS2);
 222:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 223:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			break;
 224:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case B_CS1|B_CS2 :
 225:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
 226:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			break;
 227:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 228:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 400              		.loc 1 228 0
 401 00ce 1AE0     		b	.L15
 402              	.L11:
 212:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	switch(controller){
 403              		.loc 1 212 0
 404 00d0 102B     		cmp	r3, #16
 405 00d2 0DD0     		beq	.L13
 406 00d4 182B     		cmp	r3, #24
 407 00d6 12D0     		beq	.L14
 408              		.loc 1 228 0
 409 00d8 15E0     		b	.L15
 410              	.L12:
 214:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			break;
 411              		.loc 1 214 0
 412 00da 1820     		movs	r0, #24
 413 00dc FFF7BEFF 		bl	graphic_ctrl_bit_clear
 215:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case B_CS1 :
 414              		.loc 1 215 0
 415 00e0 11E0     		b	.L9
 416              	.L10:
 217:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS2);
 417              		.loc 1 217 0
 418 00e2 0820     		movs	r0, #8
 419 00e4 FFF78CFF 		bl	graphic_ctrl_bit_set
 218:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			break;
 420              		.loc 1 218 0
 421 00e8 1020     		movs	r0, #16
 422 00ea FFF7B7FF 		bl	graphic_ctrl_bit_clear
 219:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case B_CS2 :
 423              		.loc 1 219 0
 424 00ee 0AE0     		b	.L9
 425              	.L13:
 221:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_ctrl_bit_clear(B_CS1);
 426              		.loc 1 221 0
 427 00f0 1020     		movs	r0, #16
 428 00f2 FFF785FF 		bl	graphic_ctrl_bit_set
 222:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			break;
 429              		.loc 1 222 0
 430 00f6 0820     		movs	r0, #8
 431 00f8 FFF7B0FF 		bl	graphic_ctrl_bit_clear
 223:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case B_CS1|B_CS2 :
 432              		.loc 1 223 0
 433 00fc 03E0     		b	.L9
 434              	.L14:
 225:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			break;
 435              		.loc 1 225 0
 436 00fe 1820     		movs	r0, #24
 437 0100 FFF77EFF 		bl	graphic_ctrl_bit_set
 226:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 438              		.loc 1 226 0
 439 0104 C046     		nop
 440              	.L9:
 441              	.L15:
 442              		.loc 1 228 0
 443 0106 C046     		nop
 444 0108 BD46     		mov	sp, r7
 445 010a 02B0     		add	sp, sp, #8
 446              		@ sp needed
 447 010c 80BD     		pop	{r7, pc}
 448              		.cfi_endproc
 449              	.LFE3:
 451              		.align	1
 452              		.global	graphic_initialize
 453              		.syntax unified
 454              		.code	16
 455              		.thumb_func
 456              		.fpu softvfp
 458              	graphic_initialize:
 459              	.LFB4:
 229:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void graphic_initialize(void) {
 460              		.loc 1 229 0
 461              		.cfi_startproc
 462              		@ args = 0, pretend = 0, frame = 0
 463              		@ frame_needed = 1, uses_anonymous_args = 0
 464 010e 80B5     		push	{r7, lr}
 465              		.cfi_def_cfa_offset 8
 466              		.cfi_offset 7, -8
 467              		.cfi_offset 14, -4
 468 0110 00AF     		add	r7, sp, #0
 469              		.cfi_def_cfa_register 7
 230:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 470              		.loc 1 230 0
 471 0112 4020     		movs	r0, #64
 472 0114 FFF774FF 		bl	graphic_ctrl_bit_set
 231:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_mikro(10);
 473              		.loc 1 231 0
 474 0118 0A20     		movs	r0, #10
 475 011a FFF7FEFF 		bl	delay_mikro
 232:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 476              		.loc 1 232 0
 477 011e 7820     		movs	r0, #120
 478 0120 FFF79CFF 		bl	graphic_ctrl_bit_clear
 233:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_milli(30);
 479              		.loc 1 233 0
 480 0124 1E20     		movs	r0, #30
 481 0126 FFF7FEFF 		bl	delay_milli
 234:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RST);
 482              		.loc 1 234 0
 483 012a 2020     		movs	r0, #32
 484 012c FFF768FF 		bl	graphic_ctrl_bit_set
 235:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_milli(100);
 485              		.loc 1 235 0
 486 0130 6420     		movs	r0, #100
 487 0132 FFF7FEFF 		bl	delay_milli
 236:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 488              		.loc 1 236 0
 489 0136 1821     		movs	r1, #24
 490 0138 3E20     		movs	r0, #62
 491 013a 00F0DFF8 		bl	graphic_write_command
 237:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 492              		.loc 1 237 0
 493 013e 1821     		movs	r1, #24
 494 0140 3F20     		movs	r0, #63
 495 0142 00F0DBF8 		bl	graphic_write_command
 238:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 496              		.loc 1 238 0
 497 0146 1821     		movs	r1, #24
 498 0148 C020     		movs	r0, #192
 499 014a 00F0D7F8 		bl	graphic_write_command
 239:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 500              		.loc 1 239 0
 501 014e 1821     		movs	r1, #24
 502 0150 4020     		movs	r0, #64
 503 0152 00F0D3F8 		bl	graphic_write_command
 240:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 504              		.loc 1 240 0
 505 0156 1821     		movs	r1, #24
 506 0158 B820     		movs	r0, #184
 507 015a 00F0CFF8 		bl	graphic_write_command
 241:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	select_controller(0);
 508              		.loc 1 241 0
 509 015e 0020     		movs	r0, #0
 510 0160 FFF7A8FF 		bl	select_controller
 242:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 511              		.loc 1 242 0
 512 0164 C046     		nop
 513 0166 BD46     		mov	sp, r7
 514              		@ sp needed
 515 0168 80BD     		pop	{r7, pc}
 516              		.cfi_endproc
 517              	.LFE4:
 519              		.align	1
 520              		.syntax unified
 521              		.code	16
 522              		.thumb_func
 523              		.fpu softvfp
 525              	graphic_wait_ready:
 526              	.LFB5:
 243:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_wait_ready(void) {
 527              		.loc 1 243 0
 528              		.cfi_startproc
 529              		@ args = 0, pretend = 0, frame = 8
 530              		@ frame_needed = 1, uses_anonymous_args = 0
 531 016a 80B5     		push	{r7, lr}
 532              		.cfi_def_cfa_offset 8
 533              		.cfi_offset 7, -8
 534              		.cfi_offset 14, -4
 535 016c 82B0     		sub	sp, sp, #8
 536              		.cfi_def_cfa_offset 16
 537 016e 00AF     		add	r7, sp, #0
 538              		.cfi_def_cfa_register 7
 244:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint8_t c;
 245:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 539              		.loc 1 245 0
 540 0170 4020     		movs	r0, #64
 541 0172 FFF773FF 		bl	graphic_ctrl_bit_clear
 246:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 542              		.loc 1 246 0
 543 0176 144B     		ldr	r3, .L23
 544 0178 144A     		ldr	r2, .L23+4
 545 017a 1A60     		str	r2, [r3]
 247:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RS);
 546              		.loc 1 247 0
 547 017c 0120     		movs	r0, #1
 548 017e FFF76DFF 		bl	graphic_ctrl_bit_clear
 248:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RW);
 549              		.loc 1 248 0
 550 0182 0220     		movs	r0, #2
 551 0184 FFF73CFF 		bl	graphic_ctrl_bit_set
 249:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_500ns();
 552              		.loc 1 249 0
 553 0188 FFF7FEFF 		bl	delay_500ns
 554              	.L20:
 250:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	while(1) {
 251:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_ctrl_bit_set(B_E);
 555              		.loc 1 251 0
 556 018c 4020     		movs	r0, #64
 557 018e FFF737FF 		bl	graphic_ctrl_bit_set
 252:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_500ns();
 558              		.loc 1 252 0
 559 0192 FFF7FEFF 		bl	delay_500ns
 253:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		c = GPIO_E.idr_high & LCD_BUSY;
 560              		.loc 1 253 0
 561 0196 0C4B     		ldr	r3, .L23
 562 0198 5B7C     		ldrb	r3, [r3, #17]
 563 019a DAB2     		uxtb	r2, r3
 564 019c FB1D     		adds	r3, r7, #7
 565 019e 7F21     		movs	r1, #127
 566 01a0 8A43     		bics	r2, r1
 567 01a2 1A70     		strb	r2, [r3]
 254:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_ctrl_bit_clear(B_E);
 568              		.loc 1 254 0
 569 01a4 4020     		movs	r0, #64
 570 01a6 FFF759FF 		bl	graphic_ctrl_bit_clear
 255:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_500ns();
 571              		.loc 1 255 0
 572 01aa FFF7FEFF 		bl	delay_500ns
 256:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		if( c == 0 ) break;
 573              		.loc 1 256 0
 574 01ae FB1D     		adds	r3, r7, #7
 575 01b0 1B78     		ldrb	r3, [r3]
 576 01b2 002B     		cmp	r3, #0
 577 01b4 00D0     		beq	.L22
 251:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_500ns();
 578              		.loc 1 251 0
 579 01b6 E9E7     		b	.L20
 580              	.L22:
 581              		.loc 1 256 0
 582 01b8 C046     		nop
 257:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 258:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x55555555; // 15-0 outputs
 583              		.loc 1 258 0
 584 01ba 034B     		ldr	r3, .L23
 585 01bc 044A     		ldr	r2, .L23+8
 586 01be 1A60     		str	r2, [r3]
 259:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 587              		.loc 1 259 0
 588 01c0 C046     		nop
 589 01c2 BD46     		mov	sp, r7
 590 01c4 02B0     		add	sp, sp, #8
 591              		@ sp needed
 592 01c6 80BD     		pop	{r7, pc}
 593              	.L24:
 594              		.align	2
 595              	.L23:
 596 01c8 00100240 		.word	1073876992
 597 01cc 55550000 		.word	21845
 598 01d0 55555555 		.word	1431655765
 599              		.cfi_endproc
 600              	.LFE5:
 602              		.align	1
 603              		.syntax unified
 604              		.code	16
 605              		.thumb_func
 606              		.fpu softvfp
 608              	graphic_read:
 609              	.LFB6:
 260:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static uint8_t graphic_read(uint8_t controller) {
 610              		.loc 1 260 0
 611              		.cfi_startproc
 612              		@ args = 0, pretend = 0, frame = 16
 613              		@ frame_needed = 1, uses_anonymous_args = 0
 614 01d4 80B5     		push	{r7, lr}
 615              		.cfi_def_cfa_offset 8
 616              		.cfi_offset 7, -8
 617              		.cfi_offset 14, -4
 618 01d6 84B0     		sub	sp, sp, #16
 619              		.cfi_def_cfa_offset 24
 620 01d8 00AF     		add	r7, sp, #0
 621              		.cfi_def_cfa_register 7
 622 01da 0200     		movs	r2, r0
 623 01dc FB1D     		adds	r3, r7, #7
 624 01de 1A70     		strb	r2, [r3]
 261:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint8_t c;
 262:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 625              		.loc 1 262 0
 626 01e0 4020     		movs	r0, #64
 627 01e2 FFF73BFF 		bl	graphic_ctrl_bit_clear
 263:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 628              		.loc 1 263 0
 629 01e6 1C4B     		ldr	r3, .L29
 630 01e8 1C4A     		ldr	r2, .L29+4
 631 01ea 1A60     		str	r2, [r3]
 264:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 632              		.loc 1 264 0
 633 01ec 0320     		movs	r0, #3
 634 01ee FFF707FF 		bl	graphic_ctrl_bit_set
 265:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	select_controller(controller);
 635              		.loc 1 265 0
 636 01f2 FB1D     		adds	r3, r7, #7
 637 01f4 1B78     		ldrb	r3, [r3]
 638 01f6 1800     		movs	r0, r3
 639 01f8 FFF75CFF 		bl	select_controller
 266:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_500ns();
 640              		.loc 1 266 0
 641 01fc FFF7FEFF 		bl	delay_500ns
 267:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 642              		.loc 1 267 0
 643 0200 4020     		movs	r0, #64
 644 0202 FFF7FDFE 		bl	graphic_ctrl_bit_set
 268:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_500ns();
 645              		.loc 1 268 0
 646 0206 FFF7FEFF 		bl	delay_500ns
 269:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	c = GPIO_E.idr_high;
 647              		.loc 1 269 0
 648 020a 134A     		ldr	r2, .L29
 649 020c 0F23     		movs	r3, #15
 650 020e FB18     		adds	r3, r7, r3
 651 0210 527C     		ldrb	r2, [r2, #17]
 652 0212 1A70     		strb	r2, [r3]
 270:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 653              		.loc 1 270 0
 654 0214 4020     		movs	r0, #64
 655 0216 FFF721FF 		bl	graphic_ctrl_bit_clear
 271:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x55555555; // 15-0 outputs
 656              		.loc 1 271 0
 657 021a 0F4B     		ldr	r3, .L29
 658 021c 104A     		ldr	r2, .L29+8
 659 021e 1A60     		str	r2, [r3]
 272:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if( controller & B_CS1 ) {
 660              		.loc 1 272 0
 661 0220 FB1D     		adds	r3, r7, #7
 662 0222 1B78     		ldrb	r3, [r3]
 663 0224 0822     		movs	r2, #8
 664 0226 1340     		ands	r3, r2
 665 0228 04D0     		beq	.L26
 273:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		select_controller(B_CS1);
 666              		.loc 1 273 0
 667 022a 0820     		movs	r0, #8
 668 022c FFF742FF 		bl	select_controller
 274:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_wait_ready();
 669              		.loc 1 274 0
 670 0230 FFF79BFF 		bl	graphic_wait_ready
 671              	.L26:
 275:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 276:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if( controller & B_CS2 ) {
 672              		.loc 1 276 0
 673 0234 FB1D     		adds	r3, r7, #7
 674 0236 1B78     		ldrb	r3, [r3]
 675 0238 1022     		movs	r2, #16
 676 023a 1340     		ands	r3, r2
 677 023c 04D0     		beq	.L27
 277:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		select_controller(B_CS2);
 678              		.loc 1 277 0
 679 023e 1020     		movs	r0, #16
 680 0240 FFF738FF 		bl	select_controller
 278:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_wait_ready();
 681              		.loc 1 278 0
 682 0244 FFF791FF 		bl	graphic_wait_ready
 683              	.L27:
 279:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 280:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** return c;
 684              		.loc 1 280 0
 685 0248 0F23     		movs	r3, #15
 686 024a FB18     		adds	r3, r7, r3
 687 024c 1B78     		ldrb	r3, [r3]
 281:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 688              		.loc 1 281 0
 689 024e 1800     		movs	r0, r3
 690 0250 BD46     		mov	sp, r7
 691 0252 04B0     		add	sp, sp, #16
 692              		@ sp needed
 693 0254 80BD     		pop	{r7, pc}
 694              	.L30:
 695 0256 C046     		.align	2
 696              	.L29:
 697 0258 00100240 		.word	1073876992
 698 025c 55550000 		.word	21845
 699 0260 55555555 		.word	1431655765
 700              		.cfi_endproc
 701              	.LFE6:
 703              		.align	1
 704              		.syntax unified
 705              		.code	16
 706              		.thumb_func
 707              		.fpu softvfp
 709              	graphic_read_data:
 710              	.LFB7:
 282:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static uint8_t graphic_read_data(uint8_t controller) {
 711              		.loc 1 282 0
 712              		.cfi_startproc
 713              		@ args = 0, pretend = 0, frame = 8
 714              		@ frame_needed = 1, uses_anonymous_args = 0
 715 0264 80B5     		push	{r7, lr}
 716              		.cfi_def_cfa_offset 8
 717              		.cfi_offset 7, -8
 718              		.cfi_offset 14, -4
 719 0266 82B0     		sub	sp, sp, #8
 720              		.cfi_def_cfa_offset 16
 721 0268 00AF     		add	r7, sp, #0
 722              		.cfi_def_cfa_register 7
 723 026a 0200     		movs	r2, r0
 724 026c FB1D     		adds	r3, r7, #7
 725 026e 1A70     		strb	r2, [r3]
 283:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** graphic_read(controller);
 726              		.loc 1 283 0
 727 0270 FB1D     		adds	r3, r7, #7
 728 0272 1B78     		ldrb	r3, [r3]
 729 0274 1800     		movs	r0, r3
 730 0276 FFF7ADFF 		bl	graphic_read
 284:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** return graphic_read(controller);
 731              		.loc 1 284 0
 732 027a FB1D     		adds	r3, r7, #7
 733 027c 1B78     		ldrb	r3, [r3]
 734 027e 1800     		movs	r0, r3
 735 0280 FFF7A8FF 		bl	graphic_read
 736 0284 0300     		movs	r3, r0
 285:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 737              		.loc 1 285 0
 738 0286 1800     		movs	r0, r3
 739 0288 BD46     		mov	sp, r7
 740 028a 02B0     		add	sp, sp, #8
 741              		@ sp needed
 742 028c 80BD     		pop	{r7, pc}
 743              		.cfi_endproc
 744              	.LFE7:
 746              		.align	1
 747              		.syntax unified
 748              		.code	16
 749              		.thumb_func
 750              		.fpu softvfp
 752              	graphic_write:
 753              	.LFB8:
 286:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_write(uint8_t value, uint8_t controller) {
 754              		.loc 1 286 0
 755              		.cfi_startproc
 756              		@ args = 0, pretend = 0, frame = 8
 757              		@ frame_needed = 1, uses_anonymous_args = 0
 758 028e 80B5     		push	{r7, lr}
 759              		.cfi_def_cfa_offset 8
 760              		.cfi_offset 7, -8
 761              		.cfi_offset 14, -4
 762 0290 82B0     		sub	sp, sp, #8
 763              		.cfi_def_cfa_offset 16
 764 0292 00AF     		add	r7, sp, #0
 765              		.cfi_def_cfa_register 7
 766 0294 0200     		movs	r2, r0
 767 0296 FB1D     		adds	r3, r7, #7
 768 0298 1A70     		strb	r2, [r3]
 769 029a BB1D     		adds	r3, r7, #6
 770 029c 0A1C     		adds	r2, r1, #0
 771 029e 1A70     		strb	r2, [r3]
 287:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.odr_high = value;
 772              		.loc 1 287 0
 773 02a0 154A     		ldr	r2, .L37
 774 02a2 FB1D     		adds	r3, r7, #7
 775 02a4 1B78     		ldrb	r3, [r3]
 776 02a6 5375     		strb	r3, [r2, #21]
 288:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	select_controller(controller);
 777              		.loc 1 288 0
 778 02a8 BB1D     		adds	r3, r7, #6
 779 02aa 1B78     		ldrb	r3, [r3]
 780 02ac 1800     		movs	r0, r3
 781 02ae FFF701FF 		bl	select_controller
 289:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_500ns();
 782              		.loc 1 289 0
 783 02b2 FFF7FEFF 		bl	delay_500ns
 290:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_set(B_E);
 784              		.loc 1 290 0
 785 02b6 4020     		movs	r0, #64
 786 02b8 FFF7A2FE 		bl	graphic_ctrl_bit_set
 291:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_500ns();
 787              		.loc 1 291 0
 788 02bc FFF7FEFF 		bl	delay_500ns
 292:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear( B_E );
 789              		.loc 1 292 0
 790 02c0 4020     		movs	r0, #64
 791 02c2 FFF7CBFE 		bl	graphic_ctrl_bit_clear
 293:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(controller & B_CS1) {
 792              		.loc 1 293 0
 793 02c6 BB1D     		adds	r3, r7, #6
 794 02c8 1B78     		ldrb	r3, [r3]
 795 02ca 0822     		movs	r2, #8
 796 02cc 1340     		ands	r3, r2
 797 02ce 04D0     		beq	.L34
 294:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		select_controller( B_CS1);
 798              		.loc 1 294 0
 799 02d0 0820     		movs	r0, #8
 800 02d2 FFF7EFFE 		bl	select_controller
 295:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_wait_ready();
 801              		.loc 1 295 0
 802 02d6 FFF748FF 		bl	graphic_wait_ready
 803              	.L34:
 296:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 297:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(controller & B_CS2) {
 804              		.loc 1 297 0
 805 02da BB1D     		adds	r3, r7, #6
 806 02dc 1B78     		ldrb	r3, [r3]
 807 02de 1022     		movs	r2, #16
 808 02e0 1340     		ands	r3, r2
 809 02e2 04D0     		beq	.L36
 298:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		select_controller( B_CS2);
 810              		.loc 1 298 0
 811 02e4 1020     		movs	r0, #16
 812 02e6 FFF7E5FE 		bl	select_controller
 299:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_wait_ready();
 813              		.loc 1 299 0
 814 02ea FFF73EFF 		bl	graphic_wait_ready
 815              	.L36:
 300:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 301:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 816              		.loc 1 301 0
 817 02ee C046     		nop
 818 02f0 BD46     		mov	sp, r7
 819 02f2 02B0     		add	sp, sp, #8
 820              		@ sp needed
 821 02f4 80BD     		pop	{r7, pc}
 822              	.L38:
 823 02f6 C046     		.align	2
 824              	.L37:
 825 02f8 00100240 		.word	1073876992
 826              		.cfi_endproc
 827              	.LFE8:
 829              		.align	1
 830              		.syntax unified
 831              		.code	16
 832              		.thumb_func
 833              		.fpu softvfp
 835              	graphic_write_command:
 836              	.LFB9:
 302:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 837              		.loc 1 302 0
 838              		.cfi_startproc
 839              		@ args = 0, pretend = 0, frame = 8
 840              		@ frame_needed = 1, uses_anonymous_args = 0
 841 02fc 80B5     		push	{r7, lr}
 842              		.cfi_def_cfa_offset 8
 843              		.cfi_offset 7, -8
 844              		.cfi_offset 14, -4
 845 02fe 82B0     		sub	sp, sp, #8
 846              		.cfi_def_cfa_offset 16
 847 0300 00AF     		add	r7, sp, #0
 848              		.cfi_def_cfa_register 7
 849 0302 0200     		movs	r2, r0
 850 0304 FB1D     		adds	r3, r7, #7
 851 0306 1A70     		strb	r2, [r3]
 852 0308 BB1D     		adds	r3, r7, #6
 853 030a 0A1C     		adds	r2, r1, #0
 854 030c 1A70     		strb	r2, [r3]
 303:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 855              		.loc 1 303 0
 856 030e 4020     		movs	r0, #64
 857 0310 FFF7A4FE 		bl	graphic_ctrl_bit_clear
 304:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	select_controller(controller);
 858              		.loc 1 304 0
 859 0314 BB1D     		adds	r3, r7, #6
 860 0316 1B78     		ldrb	r3, [r3]
 861 0318 1800     		movs	r0, r3
 862 031a FFF7CBFE 		bl	select_controller
 305:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 863              		.loc 1 305 0
 864 031e 0320     		movs	r0, #3
 865 0320 FFF79CFE 		bl	graphic_ctrl_bit_clear
 306:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_write(command, controller);
 866              		.loc 1 306 0
 867 0324 BB1D     		adds	r3, r7, #6
 868 0326 1A78     		ldrb	r2, [r3]
 869 0328 FB1D     		adds	r3, r7, #7
 870 032a 1B78     		ldrb	r3, [r3]
 871 032c 1100     		movs	r1, r2
 872 032e 1800     		movs	r0, r3
 873 0330 FFF7ADFF 		bl	graphic_write
 307:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 874              		.loc 1 307 0
 875 0334 C046     		nop
 876 0336 BD46     		mov	sp, r7
 877 0338 02B0     		add	sp, sp, #8
 878              		@ sp needed
 879 033a 80BD     		pop	{r7, pc}
 880              		.cfi_endproc
 881              	.LFE9:
 883              		.align	1
 884              		.syntax unified
 885              		.code	16
 886              		.thumb_func
 887              		.fpu softvfp
 889              	graphic_write_data:
 890              	.LFB10:
 308:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** static void graphic_write_data(uint8_t data, uint8_t controller) {
 891              		.loc 1 308 0
 892              		.cfi_startproc
 893              		@ args = 0, pretend = 0, frame = 8
 894              		@ frame_needed = 1, uses_anonymous_args = 0
 895 033c 80B5     		push	{r7, lr}
 896              		.cfi_def_cfa_offset 8
 897              		.cfi_offset 7, -8
 898              		.cfi_offset 14, -4
 899 033e 82B0     		sub	sp, sp, #8
 900              		.cfi_def_cfa_offset 16
 901 0340 00AF     		add	r7, sp, #0
 902              		.cfi_def_cfa_register 7
 903 0342 0200     		movs	r2, r0
 904 0344 FB1D     		adds	r3, r7, #7
 905 0346 1A70     		strb	r2, [r3]
 906 0348 BB1D     		adds	r3, r7, #6
 907 034a 0A1C     		adds	r2, r1, #0
 908 034c 1A70     		strb	r2, [r3]
 309:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_E);
 909              		.loc 1 309 0
 910 034e 4020     		movs	r0, #64
 911 0350 FFF784FE 		bl	graphic_ctrl_bit_clear
 310:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	select_controller(controller);
 912              		.loc 1 310 0
 913 0354 BB1D     		adds	r3, r7, #6
 914 0356 1B78     		ldrb	r3, [r3]
 915 0358 1800     		movs	r0, r3
 916 035a FFF7ABFE 		bl	select_controller
 311:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_set(B_RS);
 917              		.loc 1 311 0
 918 035e 0120     		movs	r0, #1
 919 0360 FFF74EFE 		bl	graphic_ctrl_bit_set
 312:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_ctrl_bit_clear(B_RW);
 920              		.loc 1 312 0
 921 0364 0220     		movs	r0, #2
 922 0366 FFF779FE 		bl	graphic_ctrl_bit_clear
 313:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_write(data, controller);
 923              		.loc 1 313 0
 924 036a BB1D     		adds	r3, r7, #6
 925 036c 1A78     		ldrb	r2, [r3]
 926 036e FB1D     		adds	r3, r7, #7
 927 0370 1B78     		ldrb	r3, [r3]
 928 0372 1100     		movs	r1, r2
 929 0374 1800     		movs	r0, r3
 930 0376 FFF78AFF 		bl	graphic_write
 314:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 931              		.loc 1 314 0
 932 037a C046     		nop
 933 037c BD46     		mov	sp, r7
 934 037e 02B0     		add	sp, sp, #8
 935              		@ sp needed
 936 0380 80BD     		pop	{r7, pc}
 937              		.cfi_endproc
 938              	.LFE10:
 940              		.align	1
 941              		.global	graphic_clear_screen
 942              		.syntax unified
 943              		.code	16
 944              		.thumb_func
 945              		.fpu softvfp
 947              	graphic_clear_screen:
 948              	.LFB11:
 315:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void graphic_clear_screen(void) {
 949              		.loc 1 315 0
 950              		.cfi_startproc
 951              		@ args = 0, pretend = 0, frame = 8
 952              		@ frame_needed = 1, uses_anonymous_args = 0
 953 0382 80B5     		push	{r7, lr}
 954              		.cfi_def_cfa_offset 8
 955              		.cfi_offset 7, -8
 956              		.cfi_offset 14, -4
 957 0384 82B0     		sub	sp, sp, #8
 958              		.cfi_def_cfa_offset 16
 959 0386 00AF     		add	r7, sp, #0
 960              		.cfi_def_cfa_register 7
 316:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint8_t i, j;
 317:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for(j = 0; j < 8; j++) {
 961              		.loc 1 317 0
 962 0388 BB1D     		adds	r3, r7, #6
 963 038a 0022     		movs	r2, #0
 964 038c 1A70     		strb	r2, [r3]
 965 038e 23E0     		b	.L42
 966              	.L45:
 318:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 967              		.loc 1 318 0
 968 0390 BB1D     		adds	r3, r7, #6
 969 0392 1B78     		ldrb	r3, [r3]
 970 0394 4822     		movs	r2, #72
 971 0396 5242     		rsbs	r2, r2, #0
 972 0398 1343     		orrs	r3, r2
 973 039a DBB2     		uxtb	r3, r3
 974 039c 1821     		movs	r1, #24
 975 039e 1800     		movs	r0, r3
 976 03a0 FFF7ACFF 		bl	graphic_write_command
 319:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 977              		.loc 1 319 0
 978 03a4 1821     		movs	r1, #24
 979 03a6 4020     		movs	r0, #64
 980 03a8 FFF7A8FF 		bl	graphic_write_command
 320:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 981              		.loc 1 320 0
 982 03ac FB1D     		adds	r3, r7, #7
 983 03ae 0022     		movs	r2, #0
 984 03b0 1A70     		strb	r2, [r3]
 985 03b2 08E0     		b	.L43
 986              	.L44:
 321:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			graphic_write_data(0, B_CS1|B_CS2);
 987              		.loc 1 321 0 discriminator 3
 988 03b4 1821     		movs	r1, #24
 989 03b6 0020     		movs	r0, #0
 990 03b8 FFF7C0FF 		bl	graphic_write_data
 320:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 991              		.loc 1 320 0 discriminator 3
 992 03bc FB1D     		adds	r3, r7, #7
 993 03be 1A78     		ldrb	r2, [r3]
 994 03c0 FB1D     		adds	r3, r7, #7
 995 03c2 0132     		adds	r2, r2, #1
 996 03c4 1A70     		strb	r2, [r3]
 997              	.L43:
 320:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		for(i = 0; i <= 63; i++){
 998              		.loc 1 320 0 is_stmt 0 discriminator 1
 999 03c6 FB1D     		adds	r3, r7, #7
 1000 03c8 1B78     		ldrb	r3, [r3]
 1001 03ca 3F2B     		cmp	r3, #63
 1002 03cc F2D9     		bls	.L44
 317:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 1003              		.loc 1 317 0 is_stmt 1 discriminator 2
 1004 03ce BB1D     		adds	r3, r7, #6
 1005 03d0 1A78     		ldrb	r2, [r3]
 1006 03d2 BB1D     		adds	r3, r7, #6
 1007 03d4 0132     		adds	r2, r2, #1
 1008 03d6 1A70     		strb	r2, [r3]
 1009              	.L42:
 317:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 1010              		.loc 1 317 0 is_stmt 0 discriminator 1
 1011 03d8 BB1D     		adds	r3, r7, #6
 1012 03da 1B78     		ldrb	r3, [r3]
 1013 03dc 072B     		cmp	r3, #7
 1014 03de D7D9     		bls	.L45
 322:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		}
 323:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 324:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1015              		.loc 1 324 0 is_stmt 1
 1016 03e0 C046     		nop
 1017 03e2 BD46     		mov	sp, r7
 1018 03e4 02B0     		add	sp, sp, #8
 1019              		@ sp needed
 1020 03e6 80BD     		pop	{r7, pc}
 1021              		.cfi_endproc
 1022              	.LFE11:
 1024              		.align	1
 1025              		.global	pixel
 1026              		.syntax unified
 1027              		.code	16
 1028              		.thumb_func
 1029              		.fpu softvfp
 1031              	pixel:
 1032              	.LFB12:
 325:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 326:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void pixel(int x, int y, int set) {
 1033              		.loc 1 326 0
 1034              		.cfi_startproc
 1035              		@ args = 0, pretend = 0, frame = 32
 1036              		@ frame_needed = 1, uses_anonymous_args = 0
 1037 03e8 90B5     		push	{r4, r7, lr}
 1038              		.cfi_def_cfa_offset 12
 1039              		.cfi_offset 4, -12
 1040              		.cfi_offset 7, -8
 1041              		.cfi_offset 14, -4
 1042 03ea 89B0     		sub	sp, sp, #36
 1043              		.cfi_def_cfa_offset 48
 1044 03ec 00AF     		add	r7, sp, #0
 1045              		.cfi_def_cfa_register 7
 1046 03ee F860     		str	r0, [r7, #12]
 1047 03f0 B960     		str	r1, [r7, #8]
 1048 03f2 7A60     		str	r2, [r7, #4]
 327:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	uint8_t mask, c, controller;
 328:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int index;
 329:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
 1049              		.loc 1 329 0
 1050 03f4 FB68     		ldr	r3, [r7, #12]
 1051 03f6 002B     		cmp	r3, #0
 1052 03f8 00DC     		bgt	.LCB695
 1053 03fa BCE0     		b	.L67	@long jump
 1054              	.LCB695:
 1055              		.loc 1 329 0 is_stmt 0 discriminator 1
 1056 03fc BB68     		ldr	r3, [r7, #8]
 1057 03fe 002B     		cmp	r3, #0
 1058 0400 00DC     		bgt	.LCB698
 1059 0402 B8E0     		b	.L67	@long jump
 1060              	.LCB698:
 1061              		.loc 1 329 0 discriminator 2
 1062 0404 FB68     		ldr	r3, [r7, #12]
 1063 0406 802B     		cmp	r3, #128
 1064 0408 00DD     		ble	.LCB701
 1065 040a B4E0     		b	.L67	@long jump
 1066              	.LCB701:
 1067              		.loc 1 329 0 discriminator 3
 1068 040c BB68     		ldr	r3, [r7, #8]
 1069 040e 402B     		cmp	r3, #64
 1070 0410 00DD     		ble	.LCB704
 1071 0412 B0E0     		b	.L67	@long jump
 1072              	.LCB704:
 330:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	index = (y-1)/8;
 1073              		.loc 1 330 0 is_stmt 1
 1074 0414 BB68     		ldr	r3, [r7, #8]
 1075 0416 013B     		subs	r3, r3, #1
 1076 0418 002B     		cmp	r3, #0
 1077 041a 00DA     		bge	.L50
 1078 041c 0733     		adds	r3, r3, #7
 1079              	.L50:
 1080 041e DB10     		asrs	r3, r3, #3
 1081 0420 BB61     		str	r3, [r7, #24]
 331:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	switch( (y-1)%8 ) {
 1082              		.loc 1 331 0
 1083 0422 BB68     		ldr	r3, [r7, #8]
 1084 0424 013B     		subs	r3, r3, #1
 1085 0426 564A     		ldr	r2, .L68
 1086 0428 1340     		ands	r3, r2
 1087 042a 04D5     		bpl	.L51
 1088 042c 013B     		subs	r3, r3, #1
 1089 042e 0822     		movs	r2, #8
 1090 0430 5242     		rsbs	r2, r2, #0
 1091 0432 1343     		orrs	r3, r2
 1092 0434 0133     		adds	r3, r3, #1
 1093              	.L51:
 1094 0436 072B     		cmp	r3, #7
 1095 0438 2CD8     		bhi	.L52
 1096 043a 9A00     		lsls	r2, r3, #2
 1097 043c 514B     		ldr	r3, .L68+4
 1098 043e D318     		adds	r3, r2, r3
 1099 0440 1B68     		ldr	r3, [r3]
 1100 0442 9F46     		mov	pc, r3
 1101              		.section	.rodata
 1102              		.align	2
 1103              	.L54:
 1104 0000 44040000 		.word	.L53
 1105 0004 4E040000 		.word	.L55
 1106 0008 58040000 		.word	.L56
 1107 000c 62040000 		.word	.L57
 1108 0010 6C040000 		.word	.L58
 1109 0014 76040000 		.word	.L59
 1110 0018 80040000 		.word	.L60
 1111 001c 8A040000 		.word	.L61
 1112              		.text
 1113              	.L53:
 332:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 0: mask = 1; break;
 1114              		.loc 1 332 0
 1115 0444 1F23     		movs	r3, #31
 1116 0446 FB18     		adds	r3, r7, r3
 1117 0448 0122     		movs	r2, #1
 1118 044a 1A70     		strb	r2, [r3]
 1119 044c 22E0     		b	.L52
 1120              	.L55:
 333:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 1: mask = 2; break;
 1121              		.loc 1 333 0
 1122 044e 1F23     		movs	r3, #31
 1123 0450 FB18     		adds	r3, r7, r3
 1124 0452 0222     		movs	r2, #2
 1125 0454 1A70     		strb	r2, [r3]
 1126 0456 1DE0     		b	.L52
 1127              	.L56:
 334:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 2: mask = 4; break;
 1128              		.loc 1 334 0
 1129 0458 1F23     		movs	r3, #31
 1130 045a FB18     		adds	r3, r7, r3
 1131 045c 0422     		movs	r2, #4
 1132 045e 1A70     		strb	r2, [r3]
 1133 0460 18E0     		b	.L52
 1134              	.L57:
 335:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 3: mask = 8; break;
 1135              		.loc 1 335 0
 1136 0462 1F23     		movs	r3, #31
 1137 0464 FB18     		adds	r3, r7, r3
 1138 0466 0822     		movs	r2, #8
 1139 0468 1A70     		strb	r2, [r3]
 1140 046a 13E0     		b	.L52
 1141              	.L58:
 336:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 4: mask = 0x10; break;
 1142              		.loc 1 336 0
 1143 046c 1F23     		movs	r3, #31
 1144 046e FB18     		adds	r3, r7, r3
 1145 0470 1022     		movs	r2, #16
 1146 0472 1A70     		strb	r2, [r3]
 1147 0474 0EE0     		b	.L52
 1148              	.L59:
 337:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 5: mask = 0x20; break;
 1149              		.loc 1 337 0
 1150 0476 1F23     		movs	r3, #31
 1151 0478 FB18     		adds	r3, r7, r3
 1152 047a 2022     		movs	r2, #32
 1153 047c 1A70     		strb	r2, [r3]
 1154 047e 09E0     		b	.L52
 1155              	.L60:
 338:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 6: mask = 0x40; break;
 1156              		.loc 1 338 0
 1157 0480 1F23     		movs	r3, #31
 1158 0482 FB18     		adds	r3, r7, r3
 1159 0484 4022     		movs	r2, #64
 1160 0486 1A70     		strb	r2, [r3]
 1161 0488 04E0     		b	.L52
 1162              	.L61:
 339:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 7: mask = 0x80; break;
 1163              		.loc 1 339 0
 1164 048a 1F23     		movs	r3, #31
 1165 048c FB18     		adds	r3, r7, r3
 1166 048e 8022     		movs	r2, #128
 1167 0490 1A70     		strb	r2, [r3]
 1168 0492 C046     		nop
 1169              	.L52:
 340:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 341:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		if(set == 0)
 1170              		.loc 1 341 0
 1171 0494 7B68     		ldr	r3, [r7, #4]
 1172 0496 002B     		cmp	r3, #0
 1173 0498 06D1     		bne	.L62
 342:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			mask = ~mask;
 1174              		.loc 1 342 0
 1175 049a 1F23     		movs	r3, #31
 1176 049c FB18     		adds	r3, r7, r3
 1177 049e 1F22     		movs	r2, #31
 1178 04a0 BA18     		adds	r2, r7, r2
 1179 04a2 1278     		ldrb	r2, [r2]
 1180 04a4 D243     		mvns	r2, r2
 1181 04a6 1A70     		strb	r2, [r3]
 1182              	.L62:
 343:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		if(x > 64){
 1183              		.loc 1 343 0
 1184 04a8 FB68     		ldr	r3, [r7, #12]
 1185 04aa 402B     		cmp	r3, #64
 1186 04ac 07DD     		ble	.L63
 344:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			controller = B_CS2;
 1187              		.loc 1 344 0
 1188 04ae 1E23     		movs	r3, #30
 1189 04b0 FB18     		adds	r3, r7, r3
 1190 04b2 1022     		movs	r2, #16
 1191 04b4 1A70     		strb	r2, [r3]
 345:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		x = x - 65;
 1192              		.loc 1 345 0
 1193 04b6 FB68     		ldr	r3, [r7, #12]
 1194 04b8 413B     		subs	r3, r3, #65
 1195 04ba FB60     		str	r3, [r7, #12]
 1196 04bc 06E0     		b	.L64
 1197              	.L63:
 346:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		} 
 347:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		else {
 348:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		controller = B_CS1;
 1198              		.loc 1 348 0
 1199 04be 1E23     		movs	r3, #30
 1200 04c0 FB18     		adds	r3, r7, r3
 1201 04c2 0822     		movs	r2, #8
 1202 04c4 1A70     		strb	r2, [r3]
 349:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		x = x-1;
 1203              		.loc 1 349 0
 1204 04c6 FB68     		ldr	r3, [r7, #12]
 1205 04c8 013B     		subs	r3, r3, #1
 1206 04ca FB60     		str	r3, [r7, #12]
 1207              	.L64:
 350:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		}
 351:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller );
 1208              		.loc 1 351 0
 1209 04cc FB68     		ldr	r3, [r7, #12]
 1210 04ce 5BB2     		sxtb	r3, r3
 1211 04d0 4022     		movs	r2, #64
 1212 04d2 1343     		orrs	r3, r2
 1213 04d4 5BB2     		sxtb	r3, r3
 1214 04d6 DAB2     		uxtb	r2, r3
 1215 04d8 1E23     		movs	r3, #30
 1216 04da FB18     		adds	r3, r7, r3
 1217 04dc 1B78     		ldrb	r3, [r3]
 1218 04de 1900     		movs	r1, r3
 1219 04e0 1000     		movs	r0, r2
 1220 04e2 FFF70BFF 		bl	graphic_write_command
 352:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_write_command(LCD_SET_PAGE | index, controller );
 1221              		.loc 1 352 0
 1222 04e6 BB69     		ldr	r3, [r7, #24]
 1223 04e8 5BB2     		sxtb	r3, r3
 1224 04ea 4822     		movs	r2, #72
 1225 04ec 5242     		rsbs	r2, r2, #0
 1226 04ee 1343     		orrs	r3, r2
 1227 04f0 5BB2     		sxtb	r3, r3
 1228 04f2 DAB2     		uxtb	r2, r3
 1229 04f4 1E23     		movs	r3, #30
 1230 04f6 FB18     		adds	r3, r7, r3
 1231 04f8 1B78     		ldrb	r3, [r3]
 1232 04fa 1900     		movs	r1, r3
 1233 04fc 1000     		movs	r0, r2
 1234 04fe FFF7FDFE 		bl	graphic_write_command
 353:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		c = graphic_read_data(controller);
 1235              		.loc 1 353 0
 1236 0502 1723     		movs	r3, #23
 1237 0504 FC18     		adds	r4, r7, r3
 1238 0506 1E23     		movs	r3, #30
 1239 0508 FB18     		adds	r3, r7, r3
 1240 050a 1B78     		ldrb	r3, [r3]
 1241 050c 1800     		movs	r0, r3
 1242 050e FFF7A9FE 		bl	graphic_read_data
 1243 0512 0300     		movs	r3, r0
 1244 0514 2370     		strb	r3, [r4]
 354:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_write_command(LCD_SET_ADD | x, controller);
 1245              		.loc 1 354 0
 1246 0516 FB68     		ldr	r3, [r7, #12]
 1247 0518 5BB2     		sxtb	r3, r3
 1248 051a 4022     		movs	r2, #64
 1249 051c 1343     		orrs	r3, r2
 1250 051e 5BB2     		sxtb	r3, r3
 1251 0520 DAB2     		uxtb	r2, r3
 1252 0522 1E23     		movs	r3, #30
 1253 0524 FB18     		adds	r3, r7, r3
 1254 0526 1B78     		ldrb	r3, [r3]
 1255 0528 1900     		movs	r1, r3
 1256 052a 1000     		movs	r0, r2
 1257 052c FFF7E6FE 		bl	graphic_write_command
 355:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		if(set)
 1258              		.loc 1 355 0
 1259 0530 7B68     		ldr	r3, [r7, #4]
 1260 0532 002B     		cmp	r3, #0
 1261 0534 0AD0     		beq	.L65
 356:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			mask = mask | c;
 1262              		.loc 1 356 0
 1263 0536 1F23     		movs	r3, #31
 1264 0538 FB18     		adds	r3, r7, r3
 1265 053a 1F22     		movs	r2, #31
 1266 053c B918     		adds	r1, r7, r2
 1267 053e 1722     		movs	r2, #23
 1268 0540 BA18     		adds	r2, r7, r2
 1269 0542 0978     		ldrb	r1, [r1]
 1270 0544 1278     		ldrb	r2, [r2]
 1271 0546 0A43     		orrs	r2, r1
 1272 0548 1A70     		strb	r2, [r3]
 1273 054a 09E0     		b	.L66
 1274              	.L65:
 357:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		else
 358:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			mask = mask & c;
 1275              		.loc 1 358 0
 1276 054c 1F23     		movs	r3, #31
 1277 054e FB18     		adds	r3, r7, r3
 1278 0550 1F22     		movs	r2, #31
 1279 0552 BA18     		adds	r2, r7, r2
 1280 0554 1721     		movs	r1, #23
 1281 0556 7918     		adds	r1, r7, r1
 1282 0558 1278     		ldrb	r2, [r2]
 1283 055a 0978     		ldrb	r1, [r1]
 1284 055c 0A40     		ands	r2, r1
 1285 055e 1A70     		strb	r2, [r3]
 1286              	.L66:
 359:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_write_data(mask, controller);
 1287              		.loc 1 359 0
 1288 0560 1E23     		movs	r3, #30
 1289 0562 FB18     		adds	r3, r7, r3
 1290 0564 1A78     		ldrb	r2, [r3]
 1291 0566 1F23     		movs	r3, #31
 1292 0568 FB18     		adds	r3, r7, r3
 1293 056a 1B78     		ldrb	r3, [r3]
 1294 056c 1100     		movs	r1, r2
 1295 056e 1800     		movs	r0, r3
 1296 0570 FFF7E4FE 		bl	graphic_write_data
 1297 0574 00E0     		b	.L46
 1298              	.L67:
 329:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	index = (y-1)/8;
 1299              		.loc 1 329 0
 1300 0576 C046     		nop
 1301              	.L46:
 360:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1302              		.loc 1 360 0
 1303 0578 BD46     		mov	sp, r7
 1304 057a 09B0     		add	sp, sp, #36
 1305              		@ sp needed
 1306 057c 90BD     		pop	{r4, r7, pc}
 1307              	.L69:
 1308 057e C046     		.align	2
 1309              	.L68:
 1310 0580 07000080 		.word	-2147483641
 1311 0584 00000000 		.word	.L54
 1312              		.cfi_endproc
 1313              	.LFE12:
 1315              		.align	1
 1316              		.global	check_ball_collision
 1317              		.syntax unified
 1318              		.code	16
 1319              		.thumb_func
 1320              		.fpu softvfp
 1322              	check_ball_collision:
 1323              	.LFB13:
 361:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 362:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** // Game object funcions.
 363:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void check_ball_collision(POBJECT O){ //Check if the ball hits anything.
 1324              		.loc 1 363 0
 1325              		.cfi_startproc
 1326              		@ args = 0, pretend = 0, frame = 8
 1327              		@ frame_needed = 1, uses_anonymous_args = 0
 1328 0588 90B5     		push	{r4, r7, lr}
 1329              		.cfi_def_cfa_offset 12
 1330              		.cfi_offset 4, -12
 1331              		.cfi_offset 7, -8
 1332              		.cfi_offset 14, -4
 1333 058a 83B0     		sub	sp, sp, #12
 1334              		.cfi_def_cfa_offset 24
 1335 058c 00AF     		add	r7, sp, #0
 1336              		.cfi_def_cfa_register 7
 1337 058e 7860     		str	r0, [r7, #4]
 364:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	// Check if hits left side. if it does P2 get point.
 365:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(O->posx < 1){
 1338              		.loc 1 365 0
 1339 0590 7B68     		ldr	r3, [r7, #4]
 1340 0592 DB68     		ldr	r3, [r3, #12]
 1341 0594 002B     		cmp	r3, #0
 1342 0596 22DC     		bgt	.L71
 1343              	.LBB2:
 366:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		Player2.points = Player2.points + 1;
 1344              		.loc 1 366 0
 1345 0598 664B     		ldr	r3, .L78
 1346 059a 5B68     		ldr	r3, [r3, #4]
 1347 059c 5A1C     		adds	r2, r3, #1
 1348 059e 654B     		ldr	r3, .L78
 1349 05a0 5A60     		str	r2, [r3, #4]
 367:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ascii_clear_dsplay();
 1350              		.loc 1 367 0
 1351 05a2 FFF7FEFF 		bl	ascii_clear_dsplay
 368:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 1352              		.loc 1 368 0
 1353 05a6 644B     		ldr	r3, .L78+4
 1354 05a8 5B68     		ldr	r3, [r3, #4]
 1355 05aa 3033     		adds	r3, r3, #48
 1356 05ac 1900     		movs	r1, r3
 1357 05ae 634B     		ldr	r3, .L78+8
 1358 05b0 0122     		movs	r2, #1
 1359 05b2 1800     		movs	r0, r3
 1360 05b4 FFF7FEFF 		bl	print_to_ascii
 369:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 1361              		.loc 1 369 0
 1362 05b8 5E4B     		ldr	r3, .L78
 1363 05ba 5B68     		ldr	r3, [r3, #4]
 1364 05bc 3033     		adds	r3, r3, #48
 1365 05be 1900     		movs	r1, r3
 1366 05c0 5F4B     		ldr	r3, .L78+12
 1367 05c2 0222     		movs	r2, #2
 1368 05c4 1800     		movs	r0, r3
 1369 05c6 FFF7FEFF 		bl	print_to_ascii
 370:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 1370              		.loc 1 370 0
 1371 05ca 7B68     		ldr	r3, [r7, #4]
 1372 05cc 5B6A     		ldr	r3, [r3, #36]
 1373 05ce 7868     		ldr	r0, [r7, #4]
 1374 05d0 2022     		movs	r2, #32
 1375 05d2 4021     		movs	r1, #64
 1376 05d4 9847     		blx	r3
 1377              	.LVL0:
 371:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_milli(200);
 1378              		.loc 1 371 0
 1379 05d6 C820     		movs	r0, #200
 1380 05d8 FFF7FEFF 		bl	delay_milli
 1381              	.LBE2:
 372:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 373:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	// Check if hits right side. if it does P1 get point.
 374:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	else if(O->posx > LCD_WIDTH){
 375:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		Player1.points = Player1.points + 1;
 376:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ascii_clear_dsplay();
 377:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 378:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 379:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 380:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_milli(200);
 381:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 382:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 383:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	//Check if the ball hits the roof or floor it changes Y direction.
 384:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	else if(O->posy < 3 || O->posy >= LCD_HEIGHT - O->geo->sizeY){
 385:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->diry = -(O->diry);
 386:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 387:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	//If the ball hits player1's paddle, change direction.
 388:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	else if(O->posx <= Player1.objct->posx + 6 && Player1.objct->posy -2 <= O->posy && O->posy <= Play
 389:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 390:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->set_pos(O, Player1.objct->posx + 5, O->posy);
 391:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 392:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	//If the ball hits player1's paddle, change direction.
 393:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	else if(O->posx >= Player2.objct->posx - 6 && Player2.objct->posy -2 <= O->posy && O->posy <= Play
 394:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 395:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->set_pos(O, Player2.objct->posx - 5, O->posy);
 396:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 397:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1382              		.loc 1 397 0
 1383 05dc A5E0     		b	.L77
 1384              	.L71:
 374:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		Player1.points = Player1.points + 1;
 1385              		.loc 1 374 0
 1386 05de 7B68     		ldr	r3, [r7, #4]
 1387 05e0 DB68     		ldr	r3, [r3, #12]
 1388 05e2 802B     		cmp	r3, #128
 1389 05e4 22DD     		ble	.L73
 1390              	.LBB3:
 375:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ascii_clear_dsplay();
 1391              		.loc 1 375 0
 1392 05e6 544B     		ldr	r3, .L78+4
 1393 05e8 5B68     		ldr	r3, [r3, #4]
 1394 05ea 5A1C     		adds	r2, r3, #1
 1395 05ec 524B     		ldr	r3, .L78+4
 1396 05ee 5A60     		str	r2, [r3, #4]
 376:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		print_to_ascii(Player1.PAscii, ('0' + Player1.points), 1);
 1397              		.loc 1 376 0
 1398 05f0 FFF7FEFF 		bl	ascii_clear_dsplay
 377:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		print_to_ascii(Player2.PAscii, ('0' + Player2.points), 2);
 1399              		.loc 1 377 0
 1400 05f4 504B     		ldr	r3, .L78+4
 1401 05f6 5B68     		ldr	r3, [r3, #4]
 1402 05f8 3033     		adds	r3, r3, #48
 1403 05fa 1900     		movs	r1, r3
 1404 05fc 4F4B     		ldr	r3, .L78+8
 1405 05fe 0122     		movs	r2, #1
 1406 0600 1800     		movs	r0, r3
 1407 0602 FFF7FEFF 		bl	print_to_ascii
 378:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->set_pos(O,LCD_WIDTH/2,LCD_HEIGHT/2);
 1408              		.loc 1 378 0
 1409 0606 4B4B     		ldr	r3, .L78
 1410 0608 5B68     		ldr	r3, [r3, #4]
 1411 060a 3033     		adds	r3, r3, #48
 1412 060c 1900     		movs	r1, r3
 1413 060e 4C4B     		ldr	r3, .L78+12
 1414 0610 0222     		movs	r2, #2
 1415 0612 1800     		movs	r0, r3
 1416 0614 FFF7FEFF 		bl	print_to_ascii
 379:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_milli(200);
 1417              		.loc 1 379 0
 1418 0618 7B68     		ldr	r3, [r7, #4]
 1419 061a 5B6A     		ldr	r3, [r3, #36]
 1420 061c 7868     		ldr	r0, [r7, #4]
 1421 061e 2022     		movs	r2, #32
 1422 0620 4021     		movs	r1, #64
 1423 0622 9847     		blx	r3
 1424              	.LVL1:
 380:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 1425              		.loc 1 380 0
 1426 0624 C820     		movs	r0, #200
 1427 0626 FFF7FEFF 		bl	delay_milli
 1428              	.LBE3:
 1429              		.loc 1 397 0
 1430 062a 7EE0     		b	.L77
 1431              	.L73:
 384:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->diry = -(O->diry);
 1432              		.loc 1 384 0
 1433 062c 7B68     		ldr	r3, [r7, #4]
 1434 062e 1B69     		ldr	r3, [r3, #16]
 1435 0630 022B     		cmp	r3, #2
 1436 0632 08DD     		ble	.L74
 384:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->diry = -(O->diry);
 1437              		.loc 1 384 0 is_stmt 0 discriminator 1
 1438 0634 7B68     		ldr	r3, [r7, #4]
 1439 0636 1A69     		ldr	r2, [r3, #16]
 1440 0638 7B68     		ldr	r3, [r7, #4]
 1441 063a 1B68     		ldr	r3, [r3]
 1442 063c 9B68     		ldr	r3, [r3, #8]
 1443 063e 4021     		movs	r1, #64
 1444 0640 CB1A     		subs	r3, r1, r3
 1445 0642 9A42     		cmp	r2, r3
 1446 0644 05DB     		blt	.L75
 1447              	.L74:
 385:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 1448              		.loc 1 385 0 is_stmt 1
 1449 0646 7B68     		ldr	r3, [r7, #4]
 1450 0648 9B68     		ldr	r3, [r3, #8]
 1451 064a 5A42     		rsbs	r2, r3, #0
 1452 064c 7B68     		ldr	r3, [r7, #4]
 1453 064e 9A60     		str	r2, [r3, #8]
 1454 0650 6BE0     		b	.L72
 1455              	.L75:
 388:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1456              		.loc 1 388 0
 1457 0652 7B68     		ldr	r3, [r7, #4]
 1458 0654 DA68     		ldr	r2, [r3, #12]
 1459 0656 384B     		ldr	r3, .L78+4
 1460 0658 1B68     		ldr	r3, [r3]
 1461 065a DB68     		ldr	r3, [r3, #12]
 1462 065c 0633     		adds	r3, r3, #6
 1463 065e 9A42     		cmp	r2, r3
 1464 0660 2DDC     		bgt	.L76
 388:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1465              		.loc 1 388 0 is_stmt 0 discriminator 1
 1466 0662 354B     		ldr	r3, .L78+4
 1467 0664 1B68     		ldr	r3, [r3]
 1468 0666 1B69     		ldr	r3, [r3, #16]
 1469 0668 9A1E     		subs	r2, r3, #2
 1470 066a 7B68     		ldr	r3, [r7, #4]
 1471 066c 1B69     		ldr	r3, [r3, #16]
 1472 066e 9A42     		cmp	r2, r3
 1473 0670 25DC     		bgt	.L76
 388:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1474              		.loc 1 388 0 discriminator 2
 1475 0672 7B68     		ldr	r3, [r7, #4]
 1476 0674 1A69     		ldr	r2, [r3, #16]
 1477 0676 304B     		ldr	r3, .L78+4
 1478 0678 1B68     		ldr	r3, [r3]
 1479 067a 1969     		ldr	r1, [r3, #16]
 1480 067c 2E4B     		ldr	r3, .L78+4
 1481 067e 1B68     		ldr	r3, [r3]
 1482 0680 1B68     		ldr	r3, [r3]
 1483 0682 9B68     		ldr	r3, [r3, #8]
 1484 0684 CB18     		adds	r3, r1, r3
 1485 0686 0133     		adds	r3, r3, #1
 1486 0688 9A42     		cmp	r2, r3
 1487 068a 18DC     		bgt	.L76
 388:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1488              		.loc 1 388 0 discriminator 3
 1489 068c 7B68     		ldr	r3, [r7, #4]
 1490 068e DA68     		ldr	r2, [r3, #12]
 1491 0690 294B     		ldr	r3, .L78+4
 1492 0692 1B68     		ldr	r3, [r3]
 1493 0694 DB68     		ldr	r3, [r3, #12]
 1494 0696 043B     		subs	r3, r3, #4
 1495 0698 9A42     		cmp	r2, r3
 1496 069a 10DD     		ble	.L76
 389:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->set_pos(O, Player1.objct->posx + 5, O->posy);
 1497              		.loc 1 389 0 is_stmt 1
 1498 069c 7B68     		ldr	r3, [r7, #4]
 1499 069e 5B68     		ldr	r3, [r3, #4]
 1500 06a0 5A42     		rsbs	r2, r3, #0
 1501 06a2 7B68     		ldr	r3, [r7, #4]
 1502 06a4 5A60     		str	r2, [r3, #4]
 390:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 1503              		.loc 1 390 0
 1504 06a6 7B68     		ldr	r3, [r7, #4]
 1505 06a8 5C6A     		ldr	r4, [r3, #36]
 1506 06aa 234B     		ldr	r3, .L78+4
 1507 06ac 1B68     		ldr	r3, [r3]
 1508 06ae DB68     		ldr	r3, [r3, #12]
 1509 06b0 591D     		adds	r1, r3, #5
 1510 06b2 7B68     		ldr	r3, [r7, #4]
 1511 06b4 1A69     		ldr	r2, [r3, #16]
 1512 06b6 7B68     		ldr	r3, [r7, #4]
 1513 06b8 1800     		movs	r0, r3
 1514 06ba A047     		blx	r4
 1515              	.LVL2:
 1516 06bc 35E0     		b	.L72
 1517              	.L76:
 393:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1518              		.loc 1 393 0
 1519 06be 7B68     		ldr	r3, [r7, #4]
 1520 06c0 DA68     		ldr	r2, [r3, #12]
 1521 06c2 1C4B     		ldr	r3, .L78
 1522 06c4 1B68     		ldr	r3, [r3]
 1523 06c6 DB68     		ldr	r3, [r3, #12]
 1524 06c8 063B     		subs	r3, r3, #6
 1525 06ca 9A42     		cmp	r2, r3
 1526 06cc 2DDB     		blt	.L77
 393:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1527              		.loc 1 393 0 is_stmt 0 discriminator 1
 1528 06ce 194B     		ldr	r3, .L78
 1529 06d0 1B68     		ldr	r3, [r3]
 1530 06d2 1B69     		ldr	r3, [r3, #16]
 1531 06d4 9A1E     		subs	r2, r3, #2
 1532 06d6 7B68     		ldr	r3, [r7, #4]
 1533 06d8 1B69     		ldr	r3, [r3, #16]
 1534 06da 9A42     		cmp	r2, r3
 1535 06dc 25DC     		bgt	.L77
 393:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1536              		.loc 1 393 0 discriminator 2
 1537 06de 7B68     		ldr	r3, [r7, #4]
 1538 06e0 1A69     		ldr	r2, [r3, #16]
 1539 06e2 144B     		ldr	r3, .L78
 1540 06e4 1B68     		ldr	r3, [r3]
 1541 06e6 1969     		ldr	r1, [r3, #16]
 1542 06e8 124B     		ldr	r3, .L78
 1543 06ea 1B68     		ldr	r3, [r3]
 1544 06ec 1B68     		ldr	r3, [r3]
 1545 06ee 9B68     		ldr	r3, [r3, #8]
 1546 06f0 CB18     		adds	r3, r1, r3
 1547 06f2 0133     		adds	r3, r3, #1
 1548 06f4 9A42     		cmp	r2, r3
 1549 06f6 18DC     		bgt	.L77
 393:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->dirx = -(O->dirx);
 1550              		.loc 1 393 0 discriminator 3
 1551 06f8 7B68     		ldr	r3, [r7, #4]
 1552 06fa DA68     		ldr	r2, [r3, #12]
 1553 06fc 0D4B     		ldr	r3, .L78
 1554 06fe 1B68     		ldr	r3, [r3]
 1555 0700 DB68     		ldr	r3, [r3, #12]
 1556 0702 0433     		adds	r3, r3, #4
 1557 0704 9A42     		cmp	r2, r3
 1558 0706 10DA     		bge	.L77
 394:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->set_pos(O, Player2.objct->posx - 5, O->posy);
 1559              		.loc 1 394 0 is_stmt 1
 1560 0708 7B68     		ldr	r3, [r7, #4]
 1561 070a 5B68     		ldr	r3, [r3, #4]
 1562 070c 5A42     		rsbs	r2, r3, #0
 1563 070e 7B68     		ldr	r3, [r7, #4]
 1564 0710 5A60     		str	r2, [r3, #4]
 395:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 1565              		.loc 1 395 0
 1566 0712 7B68     		ldr	r3, [r7, #4]
 1567 0714 5C6A     		ldr	r4, [r3, #36]
 1568 0716 074B     		ldr	r3, .L78
 1569 0718 1B68     		ldr	r3, [r3]
 1570 071a DB68     		ldr	r3, [r3, #12]
 1571 071c 591F     		subs	r1, r3, #5
 1572 071e 7B68     		ldr	r3, [r7, #4]
 1573 0720 1A69     		ldr	r2, [r3, #16]
 1574 0722 7B68     		ldr	r3, [r7, #4]
 1575 0724 1800     		movs	r0, r3
 1576 0726 A047     		blx	r4
 1577              	.LVL3:
 1578              		.loc 1 397 0
 1579 0728 FFE7     		b	.L77
 1580              	.L72:
 1581              	.L77:
 1582 072a C046     		nop
 1583 072c BD46     		mov	sp, r7
 1584 072e 03B0     		add	sp, sp, #12
 1585              		@ sp needed
 1586 0730 90BD     		pop	{r4, r7, pc}
 1587              	.L79:
 1588 0732 C046     		.align	2
 1589              	.L78:
 1590 0734 14010000 		.word	Player2
 1591 0738 F4000000 		.word	Player1
 1592 073c FC000000 		.word	Player1+8
 1593 0740 1C010000 		.word	Player2+8
 1594              		.cfi_endproc
 1595              	.LFE13:
 1597              		.align	1
 1598              		.global	set_object_speed
 1599              		.syntax unified
 1600              		.code	16
 1601              		.thumb_func
 1602              		.fpu softvfp
 1604              	set_object_speed:
 1605              	.LFB14:
 398:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void set_object_speed(POBJECT O, int speedx, int speedy){
 1606              		.loc 1 398 0
 1607              		.cfi_startproc
 1608              		@ args = 0, pretend = 0, frame = 16
 1609              		@ frame_needed = 1, uses_anonymous_args = 0
 1610 0744 80B5     		push	{r7, lr}
 1611              		.cfi_def_cfa_offset 8
 1612              		.cfi_offset 7, -8
 1613              		.cfi_offset 14, -4
 1614 0746 84B0     		sub	sp, sp, #16
 1615              		.cfi_def_cfa_offset 24
 1616 0748 00AF     		add	r7, sp, #0
 1617              		.cfi_def_cfa_register 7
 1618 074a F860     		str	r0, [r7, #12]
 1619 074c B960     		str	r1, [r7, #8]
 1620 074e 7A60     		str	r2, [r7, #4]
 399:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	O->dirx = speedx;
 1621              		.loc 1 399 0
 1622 0750 FB68     		ldr	r3, [r7, #12]
 1623 0752 BA68     		ldr	r2, [r7, #8]
 1624 0754 5A60     		str	r2, [r3, #4]
 400:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	O->diry = speedy;
 1625              		.loc 1 400 0
 1626 0756 FB68     		ldr	r3, [r7, #12]
 1627 0758 7A68     		ldr	r2, [r7, #4]
 1628 075a 9A60     		str	r2, [r3, #8]
 401:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1629              		.loc 1 401 0
 1630 075c C046     		nop
 1631 075e BD46     		mov	sp, r7
 1632 0760 04B0     		add	sp, sp, #16
 1633              		@ sp needed
 1634 0762 80BD     		pop	{r7, pc}
 1635              		.cfi_endproc
 1636              	.LFE14:
 1638              		.align	1
 1639              		.global	draw_object
 1640              		.syntax unified
 1641              		.code	16
 1642              		.thumb_func
 1643              		.fpu softvfp
 1645              	draw_object:
 1646              	.LFB15:
 402:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void draw_object(POBJECT O){
 1647              		.loc 1 402 0
 1648              		.cfi_startproc
 1649              		@ args = 0, pretend = 0, frame = 16
 1650              		@ frame_needed = 1, uses_anonymous_args = 0
 1651 0764 80B5     		push	{r7, lr}
 1652              		.cfi_def_cfa_offset 8
 1653              		.cfi_offset 7, -8
 1654              		.cfi_offset 14, -4
 1655 0766 84B0     		sub	sp, sp, #16
 1656              		.cfi_def_cfa_offset 24
 1657 0768 00AF     		add	r7, sp, #0
 1658              		.cfi_def_cfa_register 7
 1659 076a 7860     		str	r0, [r7, #4]
 1660              	.LBB4:
 403:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1661              		.loc 1 403 0
 1662 076c 0023     		movs	r3, #0
 1663 076e FB60     		str	r3, [r7, #12]
 1664 0770 1CE0     		b	.L82
 1665              	.L83:
 404:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 1);
 1666              		.loc 1 404 0 discriminator 3
 1667 0772 7B68     		ldr	r3, [r7, #4]
 1668 0774 DA68     		ldr	r2, [r3, #12]
 1669 0776 7B68     		ldr	r3, [r7, #4]
 1670 0778 1968     		ldr	r1, [r3]
 1671 077a FB68     		ldr	r3, [r7, #12]
 1672 077c 0433     		adds	r3, r3, #4
 1673 077e 5B00     		lsls	r3, r3, #1
 1674 0780 CB18     		adds	r3, r1, r3
 1675 0782 0433     		adds	r3, r3, #4
 1676 0784 1B78     		ldrb	r3, [r3]
 1677 0786 D018     		adds	r0, r2, r3
 1678 0788 7B68     		ldr	r3, [r7, #4]
 1679 078a 1A69     		ldr	r2, [r3, #16]
 1680 078c 7B68     		ldr	r3, [r7, #4]
 1681 078e 1968     		ldr	r1, [r3]
 1682 0790 FB68     		ldr	r3, [r7, #12]
 1683 0792 0433     		adds	r3, r3, #4
 1684 0794 5B00     		lsls	r3, r3, #1
 1685 0796 CB18     		adds	r3, r1, r3
 1686 0798 0533     		adds	r3, r3, #5
 1687 079a 1B78     		ldrb	r3, [r3]
 1688 079c D318     		adds	r3, r2, r3
 1689 079e 0122     		movs	r2, #1
 1690 07a0 1900     		movs	r1, r3
 1691 07a2 FFF7FEFF 		bl	pixel
 403:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1692              		.loc 1 403 0 discriminator 3
 1693 07a6 FB68     		ldr	r3, [r7, #12]
 1694 07a8 0133     		adds	r3, r3, #1
 1695 07aa FB60     		str	r3, [r7, #12]
 1696              	.L82:
 403:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS ;i++){
 1697              		.loc 1 403 0 is_stmt 0 discriminator 1
 1698 07ac FB68     		ldr	r3, [r7, #12]
 1699 07ae 0D2B     		cmp	r3, #13
 1700 07b0 DFDD     		ble	.L83
 1701              	.LBE4:
 405:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 406:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1702              		.loc 1 406 0 is_stmt 1
 1703 07b2 C046     		nop
 1704 07b4 BD46     		mov	sp, r7
 1705 07b6 04B0     		add	sp, sp, #16
 1706              		@ sp needed
 1707 07b8 80BD     		pop	{r7, pc}
 1708              		.cfi_endproc
 1709              	.LFE15:
 1711              		.align	1
 1712              		.global	clear_object
 1713              		.syntax unified
 1714              		.code	16
 1715              		.thumb_func
 1716              		.fpu softvfp
 1718              	clear_object:
 1719              	.LFB16:
 407:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void clear_object(POBJECT O){
 1720              		.loc 1 407 0
 1721              		.cfi_startproc
 1722              		@ args = 0, pretend = 0, frame = 16
 1723              		@ frame_needed = 1, uses_anonymous_args = 0
 1724 07ba 80B5     		push	{r7, lr}
 1725              		.cfi_def_cfa_offset 8
 1726              		.cfi_offset 7, -8
 1727              		.cfi_offset 14, -4
 1728 07bc 84B0     		sub	sp, sp, #16
 1729              		.cfi_def_cfa_offset 24
 1730 07be 00AF     		add	r7, sp, #0
 1731              		.cfi_def_cfa_register 7
 1732 07c0 7860     		str	r0, [r7, #4]
 1733              	.LBB5:
 408:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1734              		.loc 1 408 0
 1735 07c2 0023     		movs	r3, #0
 1736 07c4 FB60     		str	r3, [r7, #12]
 1737 07c6 1CE0     		b	.L85
 1738              	.L86:
 409:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		pixel(O->posx + O->geo->px[i].x, O->posy + O->geo->px[i].y, 0);
 1739              		.loc 1 409 0 discriminator 3
 1740 07c8 7B68     		ldr	r3, [r7, #4]
 1741 07ca DA68     		ldr	r2, [r3, #12]
 1742 07cc 7B68     		ldr	r3, [r7, #4]
 1743 07ce 1968     		ldr	r1, [r3]
 1744 07d0 FB68     		ldr	r3, [r7, #12]
 1745 07d2 0433     		adds	r3, r3, #4
 1746 07d4 5B00     		lsls	r3, r3, #1
 1747 07d6 CB18     		adds	r3, r1, r3
 1748 07d8 0433     		adds	r3, r3, #4
 1749 07da 1B78     		ldrb	r3, [r3]
 1750 07dc D018     		adds	r0, r2, r3
 1751 07de 7B68     		ldr	r3, [r7, #4]
 1752 07e0 1A69     		ldr	r2, [r3, #16]
 1753 07e2 7B68     		ldr	r3, [r7, #4]
 1754 07e4 1968     		ldr	r1, [r3]
 1755 07e6 FB68     		ldr	r3, [r7, #12]
 1756 07e8 0433     		adds	r3, r3, #4
 1757 07ea 5B00     		lsls	r3, r3, #1
 1758 07ec CB18     		adds	r3, r1, r3
 1759 07ee 0533     		adds	r3, r3, #5
 1760 07f0 1B78     		ldrb	r3, [r3]
 1761 07f2 D318     		adds	r3, r2, r3
 1762 07f4 0022     		movs	r2, #0
 1763 07f6 1900     		movs	r1, r3
 1764 07f8 FFF7FEFF 		bl	pixel
 408:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1765              		.loc 1 408 0 discriminator 3
 1766 07fc FB68     		ldr	r3, [r7, #12]
 1767 07fe 0133     		adds	r3, r3, #1
 1768 0800 FB60     		str	r3, [r7, #12]
 1769              	.L85:
 408:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for(int i = 0; i < MAX_POINTS; i++){
 1770              		.loc 1 408 0 is_stmt 0 discriminator 1
 1771 0802 FB68     		ldr	r3, [r7, #12]
 1772 0804 0D2B     		cmp	r3, #13
 1773 0806 DFDD     		ble	.L86
 1774              	.LBE5:
 410:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 411:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1775              		.loc 1 411 0 is_stmt 1
 1776 0808 C046     		nop
 1777 080a BD46     		mov	sp, r7
 1778 080c 04B0     		add	sp, sp, #16
 1779              		@ sp needed
 1780 080e 80BD     		pop	{r7, pc}
 1781              		.cfi_endproc
 1782              	.LFE16:
 1784              		.align	1
 1785              		.global	set_pos
 1786              		.syntax unified
 1787              		.code	16
 1788              		.thumb_func
 1789              		.fpu softvfp
 1791              	set_pos:
 1792              	.LFB17:
 412:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void set_pos(POBJECT O, int x, int y){
 1793              		.loc 1 412 0
 1794              		.cfi_startproc
 1795              		@ args = 0, pretend = 0, frame = 16
 1796              		@ frame_needed = 1, uses_anonymous_args = 0
 1797 0810 80B5     		push	{r7, lr}
 1798              		.cfi_def_cfa_offset 8
 1799              		.cfi_offset 7, -8
 1800              		.cfi_offset 14, -4
 1801 0812 84B0     		sub	sp, sp, #16
 1802              		.cfi_def_cfa_offset 24
 1803 0814 00AF     		add	r7, sp, #0
 1804              		.cfi_def_cfa_register 7
 1805 0816 F860     		str	r0, [r7, #12]
 1806 0818 B960     		str	r1, [r7, #8]
 1807 081a 7A60     		str	r2, [r7, #4]
 413:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	O->posx = x;
 1808              		.loc 1 413 0
 1809 081c FB68     		ldr	r3, [r7, #12]
 1810 081e BA68     		ldr	r2, [r7, #8]
 1811 0820 DA60     		str	r2, [r3, #12]
 414:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	O->posy = y;
 1812              		.loc 1 414 0
 1813 0822 FB68     		ldr	r3, [r7, #12]
 1814 0824 7A68     		ldr	r2, [r7, #4]
 1815 0826 1A61     		str	r2, [r3, #16]
 415:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1816              		.loc 1 415 0
 1817 0828 C046     		nop
 1818 082a BD46     		mov	sp, r7
 1819 082c 04B0     		add	sp, sp, #16
 1820              		@ sp needed
 1821 082e 80BD     		pop	{r7, pc}
 1822              		.cfi_endproc
 1823              	.LFE17:
 1825              		.align	1
 1826              		.global	move_ball
 1827              		.syntax unified
 1828              		.code	16
 1829              		.thumb_func
 1830              		.fpu softvfp
 1832              	move_ball:
 1833              	.LFB18:
 416:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void move_ball(POBJECT O){
 1834              		.loc 1 416 0
 1835              		.cfi_startproc
 1836              		@ args = 0, pretend = 0, frame = 8
 1837              		@ frame_needed = 1, uses_anonymous_args = 0
 1838 0830 80B5     		push	{r7, lr}
 1839              		.cfi_def_cfa_offset 8
 1840              		.cfi_offset 7, -8
 1841              		.cfi_offset 14, -4
 1842 0832 82B0     		sub	sp, sp, #8
 1843              		.cfi_def_cfa_offset 16
 1844 0834 00AF     		add	r7, sp, #0
 1845              		.cfi_def_cfa_register 7
 1846 0836 7860     		str	r0, [r7, #4]
 417:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	clear_object(O);
 1847              		.loc 1 417 0
 1848 0838 7B68     		ldr	r3, [r7, #4]
 1849 083a 1800     		movs	r0, r3
 1850 083c FFF7FEFF 		bl	clear_object
 418:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	O->check_ball_collision(O);
 1851              		.loc 1 418 0
 1852 0840 7B68     		ldr	r3, [r7, #4]
 1853 0842 9B6A     		ldr	r3, [r3, #40]
 1854 0844 7A68     		ldr	r2, [r7, #4]
 1855 0846 1000     		movs	r0, r2
 1856 0848 9847     		blx	r3
 1857              	.LVL4:
 419:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	O->posx += O->dirx;
 1858              		.loc 1 419 0
 1859 084a 7B68     		ldr	r3, [r7, #4]
 1860 084c DA68     		ldr	r2, [r3, #12]
 1861 084e 7B68     		ldr	r3, [r7, #4]
 1862 0850 5B68     		ldr	r3, [r3, #4]
 1863 0852 D218     		adds	r2, r2, r3
 1864 0854 7B68     		ldr	r3, [r7, #4]
 1865 0856 DA60     		str	r2, [r3, #12]
 420:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	O->posy += O->diry;
 1866              		.loc 1 420 0
 1867 0858 7B68     		ldr	r3, [r7, #4]
 1868 085a 1A69     		ldr	r2, [r3, #16]
 1869 085c 7B68     		ldr	r3, [r7, #4]
 1870 085e 9B68     		ldr	r3, [r3, #8]
 1871 0860 D218     		adds	r2, r2, r3
 1872 0862 7B68     		ldr	r3, [r7, #4]
 1873 0864 1A61     		str	r2, [r3, #16]
 421:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	draw_object(O);
 1874              		.loc 1 421 0
 1875 0866 7B68     		ldr	r3, [r7, #4]
 1876 0868 1800     		movs	r0, r3
 1877 086a FFF7FEFF 		bl	draw_object
 422:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1878              		.loc 1 422 0
 1879 086e C046     		nop
 1880 0870 BD46     		mov	sp, r7
 1881 0872 02B0     		add	sp, sp, #8
 1882              		@ sp needed
 1883 0874 80BD     		pop	{r7, pc}
 1884              		.cfi_endproc
 1885              	.LFE18:
 1887              		.align	1
 1888              		.global	move_bouncer
 1889              		.syntax unified
 1890              		.code	16
 1891              		.thumb_func
 1892              		.fpu softvfp
 1894              	move_bouncer:
 1895              	.LFB19:
 423:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void move_bouncer(POBJECT O){
 1896              		.loc 1 423 0
 1897              		.cfi_startproc
 1898              		@ args = 0, pretend = 0, frame = 8
 1899              		@ frame_needed = 1, uses_anonymous_args = 0
 1900 0876 80B5     		push	{r7, lr}
 1901              		.cfi_def_cfa_offset 8
 1902              		.cfi_offset 7, -8
 1903              		.cfi_offset 14, -4
 1904 0878 82B0     		sub	sp, sp, #8
 1905              		.cfi_def_cfa_offset 16
 1906 087a 00AF     		add	r7, sp, #0
 1907              		.cfi_def_cfa_register 7
 1908 087c 7860     		str	r0, [r7, #4]
 424:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	clear_object(O);
 1909              		.loc 1 424 0
 1910 087e 7B68     		ldr	r3, [r7, #4]
 1911 0880 1800     		movs	r0, r3
 1912 0882 FFF7FEFF 		bl	clear_object
 425:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	// Check if at top or bottom of scren and if so change the Y-dirrection.
 426:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(O->posy > 3 && O->diry < 0){
 1913              		.loc 1 426 0
 1914 0886 7B68     		ldr	r3, [r7, #4]
 1915 0888 1B69     		ldr	r3, [r3, #16]
 1916 088a 032B     		cmp	r3, #3
 1917 088c 0BDD     		ble	.L90
 1918              		.loc 1 426 0 is_stmt 0 discriminator 1
 1919 088e 7B68     		ldr	r3, [r7, #4]
 1920 0890 9B68     		ldr	r3, [r3, #8]
 1921 0892 002B     		cmp	r3, #0
 1922 0894 07DA     		bge	.L90
 427:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->posy += O->diry;
 1923              		.loc 1 427 0 is_stmt 1
 1924 0896 7B68     		ldr	r3, [r7, #4]
 1925 0898 1A69     		ldr	r2, [r3, #16]
 1926 089a 7B68     		ldr	r3, [r7, #4]
 1927 089c 9B68     		ldr	r3, [r3, #8]
 1928 089e D218     		adds	r2, r2, r3
 1929 08a0 7B68     		ldr	r3, [r7, #4]
 1930 08a2 1A61     		str	r2, [r3, #16]
 1931 08a4 13E0     		b	.L91
 1932              	.L90:
 428:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 429:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	else if(O->posy < LCD_HEIGHT - O->geo->sizeY-2 && O->diry > 0){
 1933              		.loc 1 429 0
 1934 08a6 7B68     		ldr	r3, [r7, #4]
 1935 08a8 1A69     		ldr	r2, [r3, #16]
 1936 08aa 7B68     		ldr	r3, [r7, #4]
 1937 08ac 1B68     		ldr	r3, [r3]
 1938 08ae 9B68     		ldr	r3, [r3, #8]
 1939 08b0 3E21     		movs	r1, #62
 1940 08b2 CB1A     		subs	r3, r1, r3
 1941 08b4 9A42     		cmp	r2, r3
 1942 08b6 0ADA     		bge	.L91
 1943              		.loc 1 429 0 is_stmt 0 discriminator 1
 1944 08b8 7B68     		ldr	r3, [r7, #4]
 1945 08ba 9B68     		ldr	r3, [r3, #8]
 1946 08bc 002B     		cmp	r3, #0
 1947 08be 06DD     		ble	.L91
 430:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		O->posy += O->diry;
 1948              		.loc 1 430 0 is_stmt 1
 1949 08c0 7B68     		ldr	r3, [r7, #4]
 1950 08c2 1A69     		ldr	r2, [r3, #16]
 1951 08c4 7B68     		ldr	r3, [r7, #4]
 1952 08c6 9B68     		ldr	r3, [r3, #8]
 1953 08c8 D218     		adds	r2, r2, r3
 1954 08ca 7B68     		ldr	r3, [r7, #4]
 1955 08cc 1A61     		str	r2, [r3, #16]
 1956              	.L91:
 431:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 432:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	//Move the bouncer to the new cordinates.
 433:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	
 434:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	//Set diry to zero so the bouncer stops.
 435:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	O->diry = 0;
 1957              		.loc 1 435 0
 1958 08ce 7B68     		ldr	r3, [r7, #4]
 1959 08d0 0022     		movs	r2, #0
 1960 08d2 9A60     		str	r2, [r3, #8]
 436:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	draw_object(O);
 1961              		.loc 1 436 0
 1962 08d4 7B68     		ldr	r3, [r7, #4]
 1963 08d6 1800     		movs	r0, r3
 1964 08d8 FFF7FEFF 		bl	draw_object
 437:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	
 438:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 1965              		.loc 1 438 0
 1966 08dc C046     		nop
 1967 08de BD46     		mov	sp, r7
 1968 08e0 02B0     		add	sp, sp, #8
 1969              		@ sp needed
 1970 08e2 80BD     		pop	{r7, pc}
 1971              		.cfi_endproc
 1972              	.LFE19:
 1974              		.align	1
 1975              		.global	delay_250ns
 1976              		.syntax unified
 1977              		.code	16
 1978              		.thumb_func
 1979              		.fpu softvfp
 1981              	delay_250ns:
 1982              	.LFB20:
 439:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 440:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** //Delay funktioner
 441:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void delay_250ns ( void ) {
 1983              		.loc 1 441 0
 1984              		.cfi_startproc
 1985              		@ args = 0, pretend = 0, frame = 0
 1986              		@ frame_needed = 1, uses_anonymous_args = 0
 1987 08e4 80B5     		push	{r7, lr}
 1988              		.cfi_def_cfa_offset 8
 1989              		.cfi_offset 7, -8
 1990              		.cfi_offset 14, -4
 1991 08e6 00AF     		add	r7, sp, #0
 1992              		.cfi_def_cfa_register 7
 442:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		*STK_CTRL = 0x00;
 1993              		.loc 1 442 0
 1994 08e8 0C4B     		ldr	r3, .L94
 1995 08ea 0022     		movs	r2, #0
 1996 08ec 1A60     		str	r2, [r3]
 443:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		*STK_LOAD = ((168/4) - 1);
 1997              		.loc 1 443 0
 1998 08ee 0C4B     		ldr	r3, .L94+4
 1999 08f0 2922     		movs	r2, #41
 2000 08f2 1A60     		str	r2, [r3]
 444:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		*STK_VAL = 0;
 2001              		.loc 1 444 0
 2002 08f4 0B4B     		ldr	r3, .L94+8
 2003 08f6 0022     		movs	r2, #0
 2004 08f8 1A60     		str	r2, [r3]
 445:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		*STK_CTRL = 5;
 2005              		.loc 1 445 0
 2006 08fa 084B     		ldr	r3, .L94
 2007 08fc 0522     		movs	r2, #5
 2008 08fe 1A60     		str	r2, [r3]
 446:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 2009              		.loc 1 446 0
 2010 0900 C046     		nop
 2011              	.L93:
 2012              		.loc 1 446 0 is_stmt 0 discriminator 1
 2013 0902 064B     		ldr	r3, .L94
 2014 0904 1A68     		ldr	r2, [r3]
 2015 0906 8023     		movs	r3, #128
 2016 0908 5B02     		lsls	r3, r3, #9
 2017 090a 1340     		ands	r3, r2
 2018 090c F9D0     		beq	.L93
 447:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		*STK_CTRL = 0;
 2019              		.loc 1 447 0 is_stmt 1
 2020 090e 034B     		ldr	r3, .L94
 2021 0910 0022     		movs	r2, #0
 2022 0912 1A60     		str	r2, [r3]
 448:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2023              		.loc 1 448 0
 2024 0914 C046     		nop
 2025 0916 BD46     		mov	sp, r7
 2026              		@ sp needed
 2027 0918 80BD     		pop	{r7, pc}
 2028              	.L95:
 2029 091a C046     		.align	2
 2030              	.L94:
 2031 091c 10E000E0 		.word	-536813552
 2032 0920 14E000E0 		.word	-536813548
 2033 0924 18E000E0 		.word	-536813544
 2034              		.cfi_endproc
 2035              	.LFE20:
 2037              		.align	1
 2038              		.global	delay_500ns
 2039              		.syntax unified
 2040              		.code	16
 2041              		.thumb_func
 2042              		.fpu softvfp
 2044              	delay_500ns:
 2045              	.LFB21:
 449:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void delay_500ns(void){
 2046              		.loc 1 449 0
 2047              		.cfi_startproc
 2048              		@ args = 0, pretend = 0, frame = 0
 2049              		@ frame_needed = 1, uses_anonymous_args = 0
 2050 0928 80B5     		push	{r7, lr}
 2051              		.cfi_def_cfa_offset 8
 2052              		.cfi_offset 7, -8
 2053              		.cfi_offset 14, -4
 2054 092a 00AF     		add	r7, sp, #0
 2055              		.cfi_def_cfa_register 7
 450:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_250ns();
 2056              		.loc 1 450 0
 2057 092c FFF7FEFF 		bl	delay_250ns
 451:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_250ns();
 2058              		.loc 1 451 0
 2059 0930 FFF7FEFF 		bl	delay_250ns
 452:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2060              		.loc 1 452 0
 2061 0934 C046     		nop
 2062 0936 BD46     		mov	sp, r7
 2063              		@ sp needed
 2064 0938 80BD     		pop	{r7, pc}
 2065              		.cfi_endproc
 2066              	.LFE21:
 2068              		.align	1
 2069              		.global	delay_mikro
 2070              		.syntax unified
 2071              		.code	16
 2072              		.thumb_func
 2073              		.fpu softvfp
 2075              	delay_mikro:
 2076              	.LFB22:
 453:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void delay_mikro (unsigned int us){
 2077              		.loc 1 453 0
 2078              		.cfi_startproc
 2079              		@ args = 0, pretend = 0, frame = 16
 2080              		@ frame_needed = 1, uses_anonymous_args = 0
 2081 093a 80B5     		push	{r7, lr}
 2082              		.cfi_def_cfa_offset 8
 2083              		.cfi_offset 7, -8
 2084              		.cfi_offset 14, -4
 2085 093c 84B0     		sub	sp, sp, #16
 2086              		.cfi_def_cfa_offset 24
 2087 093e 00AF     		add	r7, sp, #0
 2088              		.cfi_def_cfa_register 7
 2089 0940 7860     		str	r0, [r7, #4]
 2090              	.LBB6:
 454:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for (int i = 0; i < us; i++) {
 2091              		.loc 1 454 0
 2092 0942 0023     		movs	r3, #0
 2093 0944 FB60     		str	r3, [r7, #12]
 2094 0946 0AE0     		b	.L98
 2095              	.L99:
 455:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_250ns();
 2096              		.loc 1 455 0 discriminator 3
 2097 0948 FFF7FEFF 		bl	delay_250ns
 456:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_250ns();
 2098              		.loc 1 456 0 discriminator 3
 2099 094c FFF7FEFF 		bl	delay_250ns
 457:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_250ns();
 2100              		.loc 1 457 0 discriminator 3
 2101 0950 FFF7FEFF 		bl	delay_250ns
 458:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_250ns();
 2102              		.loc 1 458 0 discriminator 3
 2103 0954 FFF7FEFF 		bl	delay_250ns
 454:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_250ns();
 2104              		.loc 1 454 0 discriminator 3
 2105 0958 FB68     		ldr	r3, [r7, #12]
 2106 095a 0133     		adds	r3, r3, #1
 2107 095c FB60     		str	r3, [r7, #12]
 2108              	.L98:
 454:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_250ns();
 2109              		.loc 1 454 0 is_stmt 0 discriminator 1
 2110 095e FA68     		ldr	r2, [r7, #12]
 2111 0960 7B68     		ldr	r3, [r7, #4]
 2112 0962 9A42     		cmp	r2, r3
 2113 0964 F0D3     		bcc	.L99
 2114              	.LBE6:
 459:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		}
 460:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }	
 2115              		.loc 1 460 0 is_stmt 1
 2116 0966 C046     		nop
 2117 0968 BD46     		mov	sp, r7
 2118 096a 04B0     		add	sp, sp, #16
 2119              		@ sp needed
 2120 096c 80BD     		pop	{r7, pc}
 2121              		.cfi_endproc
 2122              	.LFE22:
 2124              		.align	1
 2125              		.global	delay_milli
 2126              		.syntax unified
 2127              		.code	16
 2128              		.thumb_func
 2129              		.fpu softvfp
 2131              	delay_milli:
 2132              	.LFB23:
 461:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void delay_milli (unsigned int ms){
 2133              		.loc 1 461 0
 2134              		.cfi_startproc
 2135              		@ args = 0, pretend = 0, frame = 8
 2136              		@ frame_needed = 1, uses_anonymous_args = 0
 2137 096e 80B5     		push	{r7, lr}
 2138              		.cfi_def_cfa_offset 8
 2139              		.cfi_offset 7, -8
 2140              		.cfi_offset 14, -4
 2141 0970 82B0     		sub	sp, sp, #8
 2142              		.cfi_def_cfa_offset 16
 2143 0972 00AF     		add	r7, sp, #0
 2144              		.cfi_def_cfa_register 7
 2145 0974 7860     		str	r0, [r7, #4]
 462:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	#ifdef SIMULATOR
 463:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_mikro(ms);
 464:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	#else
 465:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_mikro(ms * 1000);
 2146              		.loc 1 465 0
 2147 0976 7B68     		ldr	r3, [r7, #4]
 2148 0978 FA22     		movs	r2, #250
 2149 097a 9200     		lsls	r2, r2, #2
 2150 097c 5343     		muls	r3, r2
 2151 097e 1800     		movs	r0, r3
 2152 0980 FFF7FEFF 		bl	delay_mikro
 466:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	#endif
 467:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2153              		.loc 1 467 0
 2154 0984 C046     		nop
 2155 0986 BD46     		mov	sp, r7
 2156 0988 02B0     		add	sp, sp, #8
 2157              		@ sp needed
 2158 098a 80BD     		pop	{r7, pc}
 2159              		.cfi_endproc
 2160              	.LFE23:
 2162              		.align	1
 2163              		.global	keyb
 2164              		.syntax unified
 2165              		.code	16
 2166              		.thumb_func
 2167              		.fpu softvfp
 2169              	keyb:
 2170              	.LFB24:
 468:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 469:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** //Keypad Funktioner
 470:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** unsigned char keyb(void){
 2171              		.loc 1 470 0
 2172              		.cfi_startproc
 2173              		@ args = 0, pretend = 0, frame = 8
 2174              		@ frame_needed = 1, uses_anonymous_args = 0
 2175 098c 80B5     		push	{r7, lr}
 2176              		.cfi_def_cfa_offset 8
 2177              		.cfi_offset 7, -8
 2178              		.cfi_offset 14, -4
 2179 098e 82B0     		sub	sp, sp, #8
 2180              		.cfi_def_cfa_offset 16
 2181 0990 00AF     		add	r7, sp, #0
 2182              		.cfi_def_cfa_register 7
 471:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int row, column;
 472:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	for (row = 1; row <= 4; row++){
 2183              		.loc 1 472 0
 2184 0992 0123     		movs	r3, #1
 2185 0994 7B60     		str	r3, [r7, #4]
 2186 0996 19E0     		b	.L102
 2187              	.L105:
 2188              	.LBB7:
 473:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ActivateRow(row);
 2189              		.loc 1 473 0
 2190 0998 7B68     		ldr	r3, [r7, #4]
 2191 099a 1800     		movs	r0, r3
 2192 099c FFF7FEFF 		bl	ActivateRow
 2193              	.LBB8:
 474:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		if (column = ReadColumn()){
 2194              		.loc 1 474 0
 2195 09a0 FFF7FEFF 		bl	ReadColumn
 2196 09a4 0300     		movs	r3, r0
 2197 09a6 3B60     		str	r3, [r7]
 2198 09a8 3B68     		ldr	r3, [r7]
 2199 09aa 002B     		cmp	r3, #0
 2200 09ac 0BD0     		beq	.L103
 475:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			ActivateRow(0);
 2201              		.loc 1 475 0
 2202 09ae 0020     		movs	r0, #0
 2203 09b0 FFF7FEFF 		bl	ActivateRow
 476:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			return Key[4*(row-1) + (column-1)];
 2204              		.loc 1 476 0
 2205 09b4 7B68     		ldr	r3, [r7, #4]
 2206 09b6 013B     		subs	r3, r3, #1
 2207 09b8 9A00     		lsls	r2, r3, #2
 2208 09ba 3B68     		ldr	r3, [r7]
 2209 09bc 013B     		subs	r3, r3, #1
 2210 09be D318     		adds	r3, r2, r3
 2211 09c0 084A     		ldr	r2, .L106
 2212 09c2 D35C     		ldrb	r3, [r2, r3]
 2213 09c4 09E0     		b	.L104
 2214              	.L103:
 2215              	.LBE8:
 2216              	.LBE7:
 472:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ActivateRow(row);
 2217              		.loc 1 472 0 discriminator 2
 2218 09c6 7B68     		ldr	r3, [r7, #4]
 2219 09c8 0133     		adds	r3, r3, #1
 2220 09ca 7B60     		str	r3, [r7, #4]
 2221              	.L102:
 472:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ActivateRow(row);
 2222              		.loc 1 472 0 is_stmt 0 discriminator 1
 2223 09cc 7B68     		ldr	r3, [r7, #4]
 2224 09ce 042B     		cmp	r3, #4
 2225 09d0 E2DD     		ble	.L105
 477:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		}
 478:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 479:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ActivateRow(0);
 2226              		.loc 1 479 0 is_stmt 1
 2227 09d2 0020     		movs	r0, #0
 2228 09d4 FFF7FEFF 		bl	ActivateRow
 480:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	return 0xFF;
 2229              		.loc 1 480 0
 2230 09d8 FF23     		movs	r3, #255
 2231              	.L104:
 481:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2232              		.loc 1 481 0
 2233 09da 1800     		movs	r0, r3
 2234 09dc BD46     		mov	sp, r7
 2235 09de 02B0     		add	sp, sp, #8
 2236              		@ sp needed
 2237 09e0 80BD     		pop	{r7, pc}
 2238              	.L107:
 2239 09e2 C046     		.align	2
 2240              	.L106:
 2241 09e4 00000000 		.word	Key
 2242              		.cfi_endproc
 2243              	.LFE24:
 2245              		.align	1
 2246              		.global	ActivateRow
 2247              		.syntax unified
 2248              		.code	16
 2249              		.thumb_func
 2250              		.fpu softvfp
 2252              	ActivateRow:
 2253              	.LFB25:
 482:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ActivateRow(char row){
 2254              		.loc 1 482 0
 2255              		.cfi_startproc
 2256              		@ args = 0, pretend = 0, frame = 8
 2257              		@ frame_needed = 1, uses_anonymous_args = 0
 2258 09e8 80B5     		push	{r7, lr}
 2259              		.cfi_def_cfa_offset 8
 2260              		.cfi_offset 7, -8
 2261              		.cfi_offset 14, -4
 2262 09ea 82B0     		sub	sp, sp, #8
 2263              		.cfi_def_cfa_offset 16
 2264 09ec 00AF     		add	r7, sp, #0
 2265              		.cfi_def_cfa_register 7
 2266 09ee 0200     		movs	r2, r0
 2267 09f0 FB1D     		adds	r3, r7, #7
 2268 09f2 1A70     		strb	r2, [r3]
 483:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	switch(row){
 2269              		.loc 1 483 0
 2270 09f4 FB1D     		adds	r3, r7, #7
 2271 09f6 1B78     		ldrb	r3, [r3]
 2272 09f8 042B     		cmp	r3, #4
 2273 09fa 18D8     		bhi	.L116
 2274 09fc 9A00     		lsls	r2, r3, #2
 2275 09fe 0E4B     		ldr	r3, .L117
 2276 0a00 D318     		adds	r3, r2, r3
 2277 0a02 1B68     		ldr	r3, [r3]
 2278 0a04 9F46     		mov	pc, r3
 2279              		.section	.rodata
 2280              		.align	2
 2281              	.L111:
 2282 0020 260A0000 		.word	.L110
 2283 0024 060A0000 		.word	.L112
 2284 0028 0E0A0000 		.word	.L113
 2285 002c 160A0000 		.word	.L114
 2286 0030 1E0A0000 		.word	.L115
 2287              		.text
 2288              	.L112:
 484:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 1: GPIO_D.odr_high = 0x10; break;
 2289              		.loc 1 484 0
 2290 0a06 0D4B     		ldr	r3, .L117+4
 2291 0a08 1022     		movs	r2, #16
 2292 0a0a 5A75     		strb	r2, [r3, #21]
 2293 0a0c 0FE0     		b	.L109
 2294              	.L113:
 485:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 2: GPIO_D.odr_high = 0x20; break;
 2295              		.loc 1 485 0
 2296 0a0e 0B4B     		ldr	r3, .L117+4
 2297 0a10 2022     		movs	r2, #32
 2298 0a12 5A75     		strb	r2, [r3, #21]
 2299 0a14 0BE0     		b	.L109
 2300              	.L114:
 486:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 3: GPIO_D.odr_high = 0x40; break;
 2301              		.loc 1 486 0
 2302 0a16 094B     		ldr	r3, .L117+4
 2303 0a18 4022     		movs	r2, #64
 2304 0a1a 5A75     		strb	r2, [r3, #21]
 2305 0a1c 07E0     		b	.L109
 2306              	.L115:
 487:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 4: GPIO_D.odr_high = 0x80; break;
 2307              		.loc 1 487 0
 2308 0a1e 074B     		ldr	r3, .L117+4
 2309 0a20 8022     		movs	r2, #128
 2310 0a22 5A75     		strb	r2, [r3, #21]
 2311 0a24 03E0     		b	.L109
 2312              	.L110:
 488:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		case 0: GPIO_D.odr_high = 0x00; break;
 2313              		.loc 1 488 0
 2314 0a26 054B     		ldr	r3, .L117+4
 2315 0a28 0022     		movs	r2, #0
 2316 0a2a 5A75     		strb	r2, [r3, #21]
 2317 0a2c C046     		nop
 2318              	.L109:
 2319              	.L116:
 489:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 490:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2320              		.loc 1 490 0
 2321 0a2e C046     		nop
 2322 0a30 BD46     		mov	sp, r7
 2323 0a32 02B0     		add	sp, sp, #8
 2324              		@ sp needed
 2325 0a34 80BD     		pop	{r7, pc}
 2326              	.L118:
 2327 0a36 C046     		.align	2
 2328              	.L117:
 2329 0a38 20000000 		.word	.L111
 2330 0a3c 000C0240 		.word	1073875968
 2331              		.cfi_endproc
 2332              	.LFE25:
 2334              		.align	1
 2335              		.global	ReadColumn
 2336              		.syntax unified
 2337              		.code	16
 2338              		.thumb_func
 2339              		.fpu softvfp
 2341              	ReadColumn:
 2342              	.LFB26:
 491:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** int ReadColumn (void){
 2343              		.loc 1 491 0
 2344              		.cfi_startproc
 2345              		@ args = 0, pretend = 0, frame = 8
 2346              		@ frame_needed = 1, uses_anonymous_args = 0
 2347 0a40 80B5     		push	{r7, lr}
 2348              		.cfi_def_cfa_offset 8
 2349              		.cfi_offset 7, -8
 2350              		.cfi_offset 14, -4
 2351 0a42 82B0     		sub	sp, sp, #8
 2352              		.cfi_def_cfa_offset 16
 2353 0a44 00AF     		add	r7, sp, #0
 2354              		.cfi_def_cfa_register 7
 492:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	unsigned char c;
 493:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	c = GPIO_D.idr_high;
 2355              		.loc 1 493 0
 2356 0a46 124A     		ldr	r2, .L125
 2357 0a48 FB1D     		adds	r3, r7, #7
 2358 0a4a 527C     		ldrb	r2, [r2, #17]
 2359 0a4c 1A70     		strb	r2, [r3]
 494:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(c & 0x8) return 4;
 2360              		.loc 1 494 0
 2361 0a4e FB1D     		adds	r3, r7, #7
 2362 0a50 1B78     		ldrb	r3, [r3]
 2363 0a52 0822     		movs	r2, #8
 2364 0a54 1340     		ands	r3, r2
 2365 0a56 01D0     		beq	.L120
 2366              		.loc 1 494 0 is_stmt 0 discriminator 1
 2367 0a58 0423     		movs	r3, #4
 2368 0a5a 15E0     		b	.L121
 2369              	.L120:
 495:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(c & 0x4) return 3;
 2370              		.loc 1 495 0 is_stmt 1
 2371 0a5c FB1D     		adds	r3, r7, #7
 2372 0a5e 1B78     		ldrb	r3, [r3]
 2373 0a60 0422     		movs	r2, #4
 2374 0a62 1340     		ands	r3, r2
 2375 0a64 01D0     		beq	.L122
 2376              		.loc 1 495 0 is_stmt 0 discriminator 1
 2377 0a66 0323     		movs	r3, #3
 2378 0a68 0EE0     		b	.L121
 2379              	.L122:
 496:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(c & 0x2) return 2;
 2380              		.loc 1 496 0 is_stmt 1
 2381 0a6a FB1D     		adds	r3, r7, #7
 2382 0a6c 1B78     		ldrb	r3, [r3]
 2383 0a6e 0222     		movs	r2, #2
 2384 0a70 1340     		ands	r3, r2
 2385 0a72 01D0     		beq	.L123
 2386              		.loc 1 496 0 is_stmt 0 discriminator 1
 2387 0a74 0223     		movs	r3, #2
 2388 0a76 07E0     		b	.L121
 2389              	.L123:
 497:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(c & 0x1) return 1;
 2390              		.loc 1 497 0 is_stmt 1
 2391 0a78 FB1D     		adds	r3, r7, #7
 2392 0a7a 1B78     		ldrb	r3, [r3]
 2393 0a7c 0122     		movs	r2, #1
 2394 0a7e 1340     		ands	r3, r2
 2395 0a80 01D0     		beq	.L124
 2396              		.loc 1 497 0 is_stmt 0 discriminator 1
 2397 0a82 0123     		movs	r3, #1
 2398 0a84 00E0     		b	.L121
 2399              	.L124:
 498:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	return 0;
 2400              		.loc 1 498 0 is_stmt 1
 2401 0a86 0023     		movs	r3, #0
 2402              	.L121:
 499:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2403              		.loc 1 499 0
 2404 0a88 1800     		movs	r0, r3
 2405 0a8a BD46     		mov	sp, r7
 2406 0a8c 02B0     		add	sp, sp, #8
 2407              		@ sp needed
 2408 0a8e 80BD     		pop	{r7, pc}
 2409              	.L126:
 2410              		.align	2
 2411              	.L125:
 2412 0a90 000C0240 		.word	1073875968
 2413              		.cfi_endproc
 2414              	.LFE26:
 2416              		.align	1
 2417              		.global	out7seg
 2418              		.syntax unified
 2419              		.code	16
 2420              		.thumb_func
 2421              		.fpu softvfp
 2423              	out7seg:
 2424              	.LFB27:
 500:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void out7seg(unsigned char c){
 2425              		.loc 1 500 0
 2426              		.cfi_startproc
 2427              		@ args = 0, pretend = 0, frame = 8
 2428              		@ frame_needed = 1, uses_anonymous_args = 0
 2429 0a94 80B5     		push	{r7, lr}
 2430              		.cfi_def_cfa_offset 8
 2431              		.cfi_offset 7, -8
 2432              		.cfi_offset 14, -4
 2433 0a96 82B0     		sub	sp, sp, #8
 2434              		.cfi_def_cfa_offset 16
 2435 0a98 00AF     		add	r7, sp, #0
 2436              		.cfi_def_cfa_register 7
 2437 0a9a 0200     		movs	r2, r0
 2438 0a9c FB1D     		adds	r3, r7, #7
 2439 0a9e 1A70     		strb	r2, [r3]
 501:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if (c > 0xF){
 2440              		.loc 1 501 0
 2441 0aa0 FB1D     		adds	r3, r7, #7
 2442 0aa2 1B78     		ldrb	r3, [r3]
 2443 0aa4 0F2B     		cmp	r3, #15
 2444 0aa6 03D9     		bls	.L128
 502:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		GPIO_D.odr_low = 0x00;
 2445              		.loc 1 502 0
 2446 0aa8 064B     		ldr	r3, .L131
 2447 0aaa 0022     		movs	r2, #0
 2448 0aac 1A75     		strb	r2, [r3, #20]
 503:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 504:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	else GPIO_D.odr_low = Segcodes[c];
 505:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 2449              		.loc 1 505 0
 2450 0aae 05E0     		b	.L130
 2451              	.L128:
 504:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 2452              		.loc 1 504 0
 2453 0ab0 0449     		ldr	r1, .L131
 2454 0ab2 FB1D     		adds	r3, r7, #7
 2455 0ab4 1B78     		ldrb	r3, [r3]
 2456 0ab6 044A     		ldr	r2, .L131+4
 2457 0ab8 D35C     		ldrb	r3, [r2, r3]
 2458 0aba 0B75     		strb	r3, [r1, #20]
 2459              	.L130:
 2460              		.loc 1 505 0
 2461 0abc C046     		nop
 2462 0abe BD46     		mov	sp, r7
 2463 0ac0 02B0     		add	sp, sp, #8
 2464              		@ sp needed
 2465 0ac2 80BD     		pop	{r7, pc}
 2466              	.L132:
 2467              		.align	2
 2468              	.L131:
 2469 0ac4 000C0240 		.word	1073875968
 2470 0ac8 00000000 		.word	Segcodes
 2471              		.cfi_endproc
 2472              	.LFE27:
 2474              		.align	1
 2475              		.global	ascii_init
 2476              		.syntax unified
 2477              		.code	16
 2478              		.thumb_func
 2479              		.fpu softvfp
 2481              	ascii_init:
 2482              	.LFB28:
 506:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 507:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** //ascii Funktioner
 508:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_init(void){
 2483              		.loc 1 508 0
 2484              		.cfi_startproc
 2485              		@ args = 0, pretend = 0, frame = 0
 2486              		@ frame_needed = 1, uses_anonymous_args = 0
 2487 0acc 80B5     		push	{r7, lr}
 2488              		.cfi_def_cfa_offset 8
 2489              		.cfi_offset 7, -8
 2490              		.cfi_offset 14, -4
 2491 0ace 00AF     		add	r7, sp, #0
 2492              		.cfi_def_cfa_register 7
 509:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 2493              		.loc 1 509 0
 2494 0ad0 C046     		nop
 2495              	.L134:
 2496              		.loc 1 509 0 is_stmt 0 discriminator 1
 2497 0ad2 FFF7FEFF 		bl	ascii_read_status
 2498 0ad6 0300     		movs	r3, r0
 2499 0ad8 1A00     		movs	r2, r3
 2500 0ada 8023     		movs	r3, #128
 2501 0adc 1340     		ands	r3, r2
 2502 0ade 802B     		cmp	r3, #128
 2503 0ae0 F7D0     		beq	.L134
 510:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_mikro(8);
 2504              		.loc 1 510 0 is_stmt 1
 2505 0ae2 0820     		movs	r0, #8
 2506 0ae4 FFF7FEFF 		bl	delay_mikro
 511:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ascii_write_CMD(0x38);
 2507              		.loc 1 511 0
 2508 0ae8 3820     		movs	r0, #56
 2509 0aea FFF7FEFF 		bl	ascii_write_CMD
 512:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_mikro(39);
 2510              		.loc 1 512 0
 2511 0aee 2720     		movs	r0, #39
 2512 0af0 FFF7FEFF 		bl	delay_mikro
 513:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ascii_write_CMD(0x0E);
 2513              		.loc 1 513 0
 2514 0af4 0E20     		movs	r0, #14
 2515 0af6 FFF7FEFF 		bl	ascii_write_CMD
 514:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_mikro(39);
 2516              		.loc 1 514 0
 2517 0afa 2720     		movs	r0, #39
 2518 0afc FFF7FEFF 		bl	delay_mikro
 515:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ascii_write_CMD(0x06);
 2519              		.loc 1 515 0
 2520 0b00 0620     		movs	r0, #6
 2521 0b02 FFF7FEFF 		bl	ascii_write_CMD
 516:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_mikro(39);
 2522              		.loc 1 516 0
 2523 0b06 2720     		movs	r0, #39
 2524 0b08 FFF7FEFF 		bl	delay_mikro
 517:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2525              		.loc 1 517 0
 2526 0b0c C046     		nop
 2527 0b0e BD46     		mov	sp, r7
 2528              		@ sp needed
 2529 0b10 80BD     		pop	{r7, pc}
 2530              		.cfi_endproc
 2531              	.LFE28:
 2533              		.align	1
 2534              		.global	ascii_gotoxy
 2535              		.syntax unified
 2536              		.code	16
 2537              		.thumb_func
 2538              		.fpu softvfp
 2540              	ascii_gotoxy:
 2541              	.LFB29:
 518:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_gotoxy(int x, int y){
 2542              		.loc 1 518 0
 2543              		.cfi_startproc
 2544              		@ args = 0, pretend = 0, frame = 16
 2545              		@ frame_needed = 1, uses_anonymous_args = 0
 2546 0b12 80B5     		push	{r7, lr}
 2547              		.cfi_def_cfa_offset 8
 2548              		.cfi_offset 7, -8
 2549              		.cfi_offset 14, -4
 2550 0b14 84B0     		sub	sp, sp, #16
 2551              		.cfi_def_cfa_offset 24
 2552 0b16 00AF     		add	r7, sp, #0
 2553              		.cfi_def_cfa_register 7
 2554 0b18 7860     		str	r0, [r7, #4]
 2555 0b1a 3960     		str	r1, [r7]
 519:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	int address = x - 1;
 2556              		.loc 1 519 0
 2557 0b1c 7B68     		ldr	r3, [r7, #4]
 2558 0b1e 013B     		subs	r3, r3, #1
 2559 0b20 FB60     		str	r3, [r7, #12]
 520:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	if(y == 2){
 2560              		.loc 1 520 0
 2561 0b22 3B68     		ldr	r3, [r7]
 2562 0b24 022B     		cmp	r3, #2
 2563 0b26 02D1     		bne	.L136
 521:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		address = address + 0x40;
 2564              		.loc 1 521 0
 2565 0b28 FB68     		ldr	r3, [r7, #12]
 2566 0b2a 4033     		adds	r3, r3, #64
 2567 0b2c FB60     		str	r3, [r7, #12]
 2568              	.L136:
 522:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	}
 523:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_write_CMD(0x80 | address);
 2569              		.loc 1 523 0
 2570 0b2e FB68     		ldr	r3, [r7, #12]
 2571 0b30 5BB2     		sxtb	r3, r3
 2572 0b32 8022     		movs	r2, #128
 2573 0b34 5242     		rsbs	r2, r2, #0
 2574 0b36 1343     		orrs	r3, r2
 2575 0b38 5BB2     		sxtb	r3, r3
 2576 0b3a DBB2     		uxtb	r3, r3
 2577 0b3c 1800     		movs	r0, r3
 2578 0b3e FFF7FEFF 		bl	ascii_write_CMD
 524:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2579              		.loc 1 524 0
 2580 0b42 C046     		nop
 2581 0b44 BD46     		mov	sp, r7
 2582 0b46 04B0     		add	sp, sp, #16
 2583              		@ sp needed
 2584 0b48 80BD     		pop	{r7, pc}
 2585              		.cfi_endproc
 2586              	.LFE29:
 2588              		.align	1
 2589              		.global	ascii_write_char
 2590              		.syntax unified
 2591              		.code	16
 2592              		.thumb_func
 2593              		.fpu softvfp
 2595              	ascii_write_char:
 2596              	.LFB30:
 525:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_write_char(unsigned char c){
 2597              		.loc 1 525 0
 2598              		.cfi_startproc
 2599              		@ args = 0, pretend = 0, frame = 8
 2600              		@ frame_needed = 1, uses_anonymous_args = 0
 2601 0b4a 80B5     		push	{r7, lr}
 2602              		.cfi_def_cfa_offset 8
 2603              		.cfi_offset 7, -8
 2604              		.cfi_offset 14, -4
 2605 0b4c 82B0     		sub	sp, sp, #8
 2606              		.cfi_def_cfa_offset 16
 2607 0b4e 00AF     		add	r7, sp, #0
 2608              		.cfi_def_cfa_register 7
 2609 0b50 0200     		movs	r2, r0
 2610 0b52 FB1D     		adds	r3, r7, #7
 2611 0b54 1A70     		strb	r2, [r3]
 526:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 2612              		.loc 1 526 0
 2613 0b56 C046     		nop
 2614              	.L138:
 2615              		.loc 1 526 0 is_stmt 0 discriminator 1
 2616 0b58 FFF7FEFF 		bl	ascii_read_status
 2617 0b5c 0300     		movs	r3, r0
 2618 0b5e 1A00     		movs	r2, r3
 2619 0b60 8023     		movs	r3, #128
 2620 0b62 1340     		ands	r3, r2
 2621 0b64 802B     		cmp	r3, #128
 2622 0b66 F7D0     		beq	.L138
 527:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_mikro(8);
 2623              		.loc 1 527 0 is_stmt 1
 2624 0b68 0820     		movs	r0, #8
 2625 0b6a FFF7FEFF 		bl	delay_mikro
 528:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_write_data(c);
 2626              		.loc 1 528 0
 2627 0b6e FB1D     		adds	r3, r7, #7
 2628 0b70 1B78     		ldrb	r3, [r3]
 2629 0b72 1800     		movs	r0, r3
 2630 0b74 FFF7FEFF 		bl	ascii_write_data
 529:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_mikro(43);
 2631              		.loc 1 529 0
 2632 0b78 2B20     		movs	r0, #43
 2633 0b7a FFF7FEFF 		bl	delay_mikro
 530:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2634              		.loc 1 530 0
 2635 0b7e C046     		nop
 2636 0b80 BD46     		mov	sp, r7
 2637 0b82 02B0     		add	sp, sp, #8
 2638              		@ sp needed
 2639 0b84 80BD     		pop	{r7, pc}
 2640              		.cfi_endproc
 2641              	.LFE30:
 2643              		.align	1
 2644              		.global	ascii_ctrl_bit_set
 2645              		.syntax unified
 2646              		.code	16
 2647              		.thumb_func
 2648              		.fpu softvfp
 2650              	ascii_ctrl_bit_set:
 2651              	.LFB31:
 531:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 532:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_ctrl_bit_set( unsigned char x ){ /* Funktion för att 1-ställa bitar */
 2652              		.loc 1 532 0
 2653              		.cfi_startproc
 2654              		@ args = 0, pretend = 0, frame = 16
 2655              		@ frame_needed = 1, uses_anonymous_args = 0
 2656 0b86 80B5     		push	{r7, lr}
 2657              		.cfi_def_cfa_offset 8
 2658              		.cfi_offset 7, -8
 2659              		.cfi_offset 14, -4
 2660 0b88 84B0     		sub	sp, sp, #16
 2661              		.cfi_def_cfa_offset 24
 2662 0b8a 00AF     		add	r7, sp, #0
 2663              		.cfi_def_cfa_register 7
 2664 0b8c 0200     		movs	r2, r0
 2665 0b8e FB1D     		adds	r3, r7, #7
 2666 0b90 1A70     		strb	r2, [r3]
 533:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	unsigned char c;
 534:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	c = GPIO_E.odr_low;
 2667              		.loc 1 534 0
 2668 0b92 0D4A     		ldr	r2, .L140
 2669 0b94 0F23     		movs	r3, #15
 2670 0b96 FB18     		adds	r3, r7, r3
 2671 0b98 127D     		ldrb	r2, [r2, #20]
 2672 0b9a 1A70     		strb	r2, [r3]
 535:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	c |= ( B_SELECT | x );
 2673              		.loc 1 535 0
 2674 0b9c FA1D     		adds	r2, r7, #7
 2675 0b9e 0F23     		movs	r3, #15
 2676 0ba0 FB18     		adds	r3, r7, r3
 2677 0ba2 1278     		ldrb	r2, [r2]
 2678 0ba4 1B78     		ldrb	r3, [r3]
 2679 0ba6 1343     		orrs	r3, r2
 2680 0ba8 DAB2     		uxtb	r2, r3
 2681 0baa 0F23     		movs	r3, #15
 2682 0bac FB18     		adds	r3, r7, r3
 2683 0bae 0421     		movs	r1, #4
 2684 0bb0 0A43     		orrs	r2, r1
 2685 0bb2 1A70     		strb	r2, [r3]
 536:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.odr_low = c;
 2686              		.loc 1 536 0
 2687 0bb4 044A     		ldr	r2, .L140
 2688 0bb6 0F23     		movs	r3, #15
 2689 0bb8 FB18     		adds	r3, r7, r3
 2690 0bba 1B78     		ldrb	r3, [r3]
 2691 0bbc 1375     		strb	r3, [r2, #20]
 537:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2692              		.loc 1 537 0
 2693 0bbe C046     		nop
 2694 0bc0 BD46     		mov	sp, r7
 2695 0bc2 04B0     		add	sp, sp, #16
 2696              		@ sp needed
 2697 0bc4 80BD     		pop	{r7, pc}
 2698              	.L141:
 2699 0bc6 C046     		.align	2
 2700              	.L140:
 2701 0bc8 00100240 		.word	1073876992
 2702              		.cfi_endproc
 2703              	.LFE31:
 2705              		.align	1
 2706              		.global	ascii_ctrl_bit_clear
 2707              		.syntax unified
 2708              		.code	16
 2709              		.thumb_func
 2710              		.fpu softvfp
 2712              	ascii_ctrl_bit_clear:
 2713              	.LFB32:
 538:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_ctrl_bit_clear( unsigned char x ){
 2714              		.loc 1 538 0
 2715              		.cfi_startproc
 2716              		@ args = 0, pretend = 0, frame = 16
 2717              		@ frame_needed = 1, uses_anonymous_args = 0
 2718 0bcc 80B5     		push	{r7, lr}
 2719              		.cfi_def_cfa_offset 8
 2720              		.cfi_offset 7, -8
 2721              		.cfi_offset 14, -4
 2722 0bce 84B0     		sub	sp, sp, #16
 2723              		.cfi_def_cfa_offset 24
 2724 0bd0 00AF     		add	r7, sp, #0
 2725              		.cfi_def_cfa_register 7
 2726 0bd2 0200     		movs	r2, r0
 2727 0bd4 FB1D     		adds	r3, r7, #7
 2728 0bd6 1A70     		strb	r2, [r3]
 539:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	unsigned char c;
 540:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	c = GPIO_E.odr_low;
 2729              		.loc 1 540 0
 2730 0bd8 0F4A     		ldr	r2, .L143
 2731 0bda 0F23     		movs	r3, #15
 2732 0bdc FB18     		adds	r3, r7, r3
 2733 0bde 127D     		ldrb	r2, [r2, #20]
 2734 0be0 1A70     		strb	r2, [r3]
 541:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	c = B_SELECT | ( c & ~x );
 2735              		.loc 1 541 0
 2736 0be2 FB1D     		adds	r3, r7, #7
 2737 0be4 1B78     		ldrb	r3, [r3]
 2738 0be6 5BB2     		sxtb	r3, r3
 2739 0be8 DB43     		mvns	r3, r3
 2740 0bea 5BB2     		sxtb	r3, r3
 2741 0bec 0F22     		movs	r2, #15
 2742 0bee BA18     		adds	r2, r7, r2
 2743 0bf0 1278     		ldrb	r2, [r2]
 2744 0bf2 52B2     		sxtb	r2, r2
 2745 0bf4 1340     		ands	r3, r2
 2746 0bf6 5BB2     		sxtb	r3, r3
 2747 0bf8 0422     		movs	r2, #4
 2748 0bfa 1343     		orrs	r3, r2
 2749 0bfc 5AB2     		sxtb	r2, r3
 2750 0bfe 0F23     		movs	r3, #15
 2751 0c00 FB18     		adds	r3, r7, r3
 2752 0c02 1A70     		strb	r2, [r3]
 542:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.odr_low = c;
 2753              		.loc 1 542 0
 2754 0c04 044A     		ldr	r2, .L143
 2755 0c06 0F23     		movs	r3, #15
 2756 0c08 FB18     		adds	r3, r7, r3
 2757 0c0a 1B78     		ldrb	r3, [r3]
 2758 0c0c 1375     		strb	r3, [r2, #20]
 543:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** } 
 2759              		.loc 1 543 0
 2760 0c0e C046     		nop
 2761 0c10 BD46     		mov	sp, r7
 2762 0c12 04B0     		add	sp, sp, #16
 2763              		@ sp needed
 2764 0c14 80BD     		pop	{r7, pc}
 2765              	.L144:
 2766 0c16 C046     		.align	2
 2767              	.L143:
 2768 0c18 00100240 		.word	1073876992
 2769              		.cfi_endproc
 2770              	.LFE32:
 2772              		.align	1
 2773              		.global	ascii_write_controller
 2774              		.syntax unified
 2775              		.code	16
 2776              		.thumb_func
 2777              		.fpu softvfp
 2779              	ascii_write_controller:
 2780              	.LFB33:
 544:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 545:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_write_controller(unsigned char c){
 2781              		.loc 1 545 0
 2782              		.cfi_startproc
 2783              		@ args = 0, pretend = 0, frame = 8
 2784              		@ frame_needed = 1, uses_anonymous_args = 0
 2785 0c1c 80B5     		push	{r7, lr}
 2786              		.cfi_def_cfa_offset 8
 2787              		.cfi_offset 7, -8
 2788              		.cfi_offset 14, -4
 2789 0c1e 82B0     		sub	sp, sp, #8
 2790              		.cfi_def_cfa_offset 16
 2791 0c20 00AF     		add	r7, sp, #0
 2792              		.cfi_def_cfa_register 7
 2793 0c22 0200     		movs	r2, r0
 2794 0c24 FB1D     		adds	r3, r7, #7
 2795 0c26 1A70     		strb	r2, [r3]
 546:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_set(B_E);
 2796              		.loc 1 546 0
 2797 0c28 4020     		movs	r0, #64
 2798 0c2a FFF7FEFF 		bl	ascii_ctrl_bit_set
 547:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.odr_high = c;
 2799              		.loc 1 547 0
 2800 0c2e 064A     		ldr	r2, .L146
 2801 0c30 FB1D     		adds	r3, r7, #7
 2802 0c32 1B78     		ldrb	r3, [r3]
 2803 0c34 5375     		strb	r3, [r2, #21]
 548:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_250ns();
 2804              		.loc 1 548 0
 2805 0c36 FFF7FEFF 		bl	delay_250ns
 549:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_E);
 2806              		.loc 1 549 0
 2807 0c3a 4020     		movs	r0, #64
 2808 0c3c FFF7FEFF 		bl	ascii_ctrl_bit_clear
 550:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2809              		.loc 1 550 0
 2810 0c40 C046     		nop
 2811 0c42 BD46     		mov	sp, r7
 2812 0c44 02B0     		add	sp, sp, #8
 2813              		@ sp needed
 2814 0c46 80BD     		pop	{r7, pc}
 2815              	.L147:
 2816              		.align	2
 2817              	.L146:
 2818 0c48 00100240 		.word	1073876992
 2819              		.cfi_endproc
 2820              	.LFE33:
 2822              		.align	1
 2823              		.global	ascii_write_CMD
 2824              		.syntax unified
 2825              		.code	16
 2826              		.thumb_func
 2827              		.fpu softvfp
 2829              	ascii_write_CMD:
 2830              	.LFB34:
 551:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_write_CMD(unsigned char command){
 2831              		.loc 1 551 0
 2832              		.cfi_startproc
 2833              		@ args = 0, pretend = 0, frame = 8
 2834              		@ frame_needed = 1, uses_anonymous_args = 0
 2835 0c4c 80B5     		push	{r7, lr}
 2836              		.cfi_def_cfa_offset 8
 2837              		.cfi_offset 7, -8
 2838              		.cfi_offset 14, -4
 2839 0c4e 82B0     		sub	sp, sp, #8
 2840              		.cfi_def_cfa_offset 16
 2841 0c50 00AF     		add	r7, sp, #0
 2842              		.cfi_def_cfa_register 7
 2843 0c52 0200     		movs	r2, r0
 2844 0c54 FB1D     		adds	r3, r7, #7
 2845 0c56 1A70     		strb	r2, [r3]
 552:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RS);
 2846              		.loc 1 552 0
 2847 0c58 0120     		movs	r0, #1
 2848 0c5a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 553:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RW);
 2849              		.loc 1 553 0
 2850 0c5e 0220     		movs	r0, #2
 2851 0c60 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 554:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_write_controller(command);
 2852              		.loc 1 554 0
 2853 0c64 FB1D     		adds	r3, r7, #7
 2854 0c66 1B78     		ldrb	r3, [r3]
 2855 0c68 1800     		movs	r0, r3
 2856 0c6a FFF7FEFF 		bl	ascii_write_controller
 555:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2857              		.loc 1 555 0
 2858 0c6e C046     		nop
 2859 0c70 BD46     		mov	sp, r7
 2860 0c72 02B0     		add	sp, sp, #8
 2861              		@ sp needed
 2862 0c74 80BD     		pop	{r7, pc}
 2863              		.cfi_endproc
 2864              	.LFE34:
 2866              		.align	1
 2867              		.global	ascii_write_data
 2868              		.syntax unified
 2869              		.code	16
 2870              		.thumb_func
 2871              		.fpu softvfp
 2873              	ascii_write_data:
 2874              	.LFB35:
 556:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_write_data(unsigned char data){
 2875              		.loc 1 556 0
 2876              		.cfi_startproc
 2877              		@ args = 0, pretend = 0, frame = 8
 2878              		@ frame_needed = 1, uses_anonymous_args = 0
 2879 0c76 80B5     		push	{r7, lr}
 2880              		.cfi_def_cfa_offset 8
 2881              		.cfi_offset 7, -8
 2882              		.cfi_offset 14, -4
 2883 0c78 82B0     		sub	sp, sp, #8
 2884              		.cfi_def_cfa_offset 16
 2885 0c7a 00AF     		add	r7, sp, #0
 2886              		.cfi_def_cfa_register 7
 2887 0c7c 0200     		movs	r2, r0
 2888 0c7e FB1D     		adds	r3, r7, #7
 2889 0c80 1A70     		strb	r2, [r3]
 557:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RS);
 2890              		.loc 1 557 0
 2891 0c82 0120     		movs	r0, #1
 2892 0c84 FFF7FEFF 		bl	ascii_ctrl_bit_set
 558:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RW);
 2893              		.loc 1 558 0
 2894 0c88 0220     		movs	r0, #2
 2895 0c8a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 559:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_write_controller(data);
 2896              		.loc 1 559 0
 2897 0c8e FB1D     		adds	r3, r7, #7
 2898 0c90 1B78     		ldrb	r3, [r3]
 2899 0c92 1800     		movs	r0, r3
 2900 0c94 FFF7FEFF 		bl	ascii_write_controller
 560:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2901              		.loc 1 560 0
 2902 0c98 C046     		nop
 2903 0c9a BD46     		mov	sp, r7
 2904 0c9c 02B0     		add	sp, sp, #8
 2905              		@ sp needed
 2906 0c9e 80BD     		pop	{r7, pc}
 2907              		.cfi_endproc
 2908              	.LFE35:
 2910              		.align	1
 2911              		.global	ascii_read_controller
 2912              		.syntax unified
 2913              		.code	16
 2914              		.thumb_func
 2915              		.fpu softvfp
 2917              	ascii_read_controller:
 2918              	.LFB36:
 561:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** unsigned char ascii_read_controller(void){
 2919              		.loc 1 561 0
 2920              		.cfi_startproc
 2921              		@ args = 0, pretend = 0, frame = 8
 2922              		@ frame_needed = 1, uses_anonymous_args = 0
 2923 0ca0 80B5     		push	{r7, lr}
 2924              		.cfi_def_cfa_offset 8
 2925              		.cfi_offset 7, -8
 2926              		.cfi_offset 14, -4
 2927 0ca2 82B0     		sub	sp, sp, #8
 2928              		.cfi_def_cfa_offset 16
 2929 0ca4 00AF     		add	r7, sp, #0
 2930              		.cfi_def_cfa_register 7
 562:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_set(B_E);
 2931              		.loc 1 562 0
 2932 0ca6 4020     		movs	r0, #64
 2933 0ca8 FFF7FEFF 		bl	ascii_ctrl_bit_set
 563:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_250ns();
 2934              		.loc 1 563 0
 2935 0cac FFF7FEFF 		bl	delay_250ns
 564:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	delay_250ns();
 2936              		.loc 1 564 0
 2937 0cb0 FFF7FEFF 		bl	delay_250ns
 565:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	unsigned char r = GPIO_E.idr_high;
 2938              		.loc 1 565 0
 2939 0cb4 064A     		ldr	r2, .L152
 2940 0cb6 FB1D     		adds	r3, r7, #7
 2941 0cb8 527C     		ldrb	r2, [r2, #17]
 2942 0cba 1A70     		strb	r2, [r3]
 566:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_E);
 2943              		.loc 1 566 0
 2944 0cbc 4020     		movs	r0, #64
 2945 0cbe FFF7FEFF 		bl	ascii_ctrl_bit_clear
 567:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	return r;
 2946              		.loc 1 567 0
 2947 0cc2 FB1D     		adds	r3, r7, #7
 2948 0cc4 1B78     		ldrb	r3, [r3]
 568:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 2949              		.loc 1 568 0
 2950 0cc6 1800     		movs	r0, r3
 2951 0cc8 BD46     		mov	sp, r7
 2952 0cca 02B0     		add	sp, sp, #8
 2953              		@ sp needed
 2954 0ccc 80BD     		pop	{r7, pc}
 2955              	.L153:
 2956 0cce C046     		.align	2
 2957              	.L152:
 2958 0cd0 00100240 		.word	1073876992
 2959              		.cfi_endproc
 2960              	.LFE36:
 2962              		.align	1
 2963              		.global	ascii_read_status
 2964              		.syntax unified
 2965              		.code	16
 2966              		.thumb_func
 2967              		.fpu softvfp
 2969              	ascii_read_status:
 2970              	.LFB37:
 569:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** unsigned char ascii_read_status(void){
 2971              		.loc 1 569 0
 2972              		.cfi_startproc
 2973              		@ args = 0, pretend = 0, frame = 8
 2974              		@ frame_needed = 1, uses_anonymous_args = 0
 2975 0cd4 90B5     		push	{r4, r7, lr}
 2976              		.cfi_def_cfa_offset 12
 2977              		.cfi_offset 4, -12
 2978              		.cfi_offset 7, -8
 2979              		.cfi_offset 14, -4
 2980 0cd6 83B0     		sub	sp, sp, #12
 2981              		.cfi_def_cfa_offset 24
 2982 0cd8 00AF     		add	r7, sp, #0
 2983              		.cfi_def_cfa_register 7
 570:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x00005555;
 2984              		.loc 1 570 0
 2985 0cda 0B4B     		ldr	r3, .L156
 2986 0cdc 0B4A     		ldr	r2, .L156+4
 2987 0cde 1A60     		str	r2, [r3]
 571:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_clear(B_RS);
 2988              		.loc 1 571 0
 2989 0ce0 0120     		movs	r0, #1
 2990 0ce2 FFF7FEFF 		bl	ascii_ctrl_bit_clear
 572:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RW);
 2991              		.loc 1 572 0
 2992 0ce6 0220     		movs	r0, #2
 2993 0ce8 FFF7FEFF 		bl	ascii_ctrl_bit_set
 573:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	unsigned char r = ascii_read_controller();
 2994              		.loc 1 573 0
 2995 0cec FC1D     		adds	r4, r7, #7
 2996 0cee FFF7FEFF 		bl	ascii_read_controller
 2997 0cf2 0300     		movs	r3, r0
 2998 0cf4 2370     		strb	r3, [r4]
 574:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 2999              		.loc 1 574 0
 3000 0cf6 044B     		ldr	r3, .L156
 3001 0cf8 054A     		ldr	r2, .L156+8
 3002 0cfa 1A60     		str	r2, [r3]
 575:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	return r;
 3003              		.loc 1 575 0
 3004 0cfc FB1D     		adds	r3, r7, #7
 3005 0cfe 1B78     		ldrb	r3, [r3]
 576:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 3006              		.loc 1 576 0
 3007 0d00 1800     		movs	r0, r3
 3008 0d02 BD46     		mov	sp, r7
 3009 0d04 03B0     		add	sp, sp, #12
 3010              		@ sp needed
 3011 0d06 90BD     		pop	{r4, r7, pc}
 3012              	.L157:
 3013              		.align	2
 3014              	.L156:
 3015 0d08 00100240 		.word	1073876992
 3016 0d0c 55550000 		.word	21845
 3017 0d10 55555555 		.word	1431655765
 3018              		.cfi_endproc
 3019              	.LFE37:
 3021              		.align	1
 3022              		.global	ascii_read_data
 3023              		.syntax unified
 3024              		.code	16
 3025              		.thumb_func
 3026              		.fpu softvfp
 3028              	ascii_read_data:
 3029              	.LFB38:
 577:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** unsigned char ascii_read_data(void){
 3030              		.loc 1 577 0
 3031              		.cfi_startproc
 3032              		@ args = 0, pretend = 0, frame = 8
 3033              		@ frame_needed = 1, uses_anonymous_args = 0
 3034 0d14 80B5     		push	{r7, lr}
 3035              		.cfi_def_cfa_offset 8
 3036              		.cfi_offset 7, -8
 3037              		.cfi_offset 14, -4
 3038 0d16 82B0     		sub	sp, sp, #8
 3039              		.cfi_def_cfa_offset 16
 3040 0d18 00AF     		add	r7, sp, #0
 3041              		.cfi_def_cfa_register 7
 578:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	unsigned char rv;
 579:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x00005555;
 3042              		.loc 1 579 0
 3043 0d1a 0A4B     		ldr	r3, .L160
 3044 0d1c 0A4A     		ldr	r2, .L160+4
 3045 0d1e 1A60     		str	r2, [r3]
 580:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RS);
 3046              		.loc 1 580 0
 3047 0d20 0120     		movs	r0, #1
 3048 0d22 FFF7FEFF 		bl	ascii_ctrl_bit_set
 581:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_ctrl_bit_set(B_RW);
 3049              		.loc 1 581 0
 3050 0d26 0220     		movs	r0, #2
 3051 0d28 FFF7FEFF 		bl	ascii_ctrl_bit_set
 582:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	rv = ascii_read_controller;
 3052              		.loc 1 582 0
 3053 0d2c 074A     		ldr	r2, .L160+8
 3054 0d2e FB1D     		adds	r3, r7, #7
 3055 0d30 1A70     		strb	r2, [r3]
 583:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 3056              		.loc 1 583 0
 3057 0d32 044B     		ldr	r3, .L160
 3058 0d34 064A     		ldr	r2, .L160+12
 3059 0d36 1A60     		str	r2, [r3]
 584:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	return rv;
 3060              		.loc 1 584 0
 3061 0d38 FB1D     		adds	r3, r7, #7
 3062 0d3a 1B78     		ldrb	r3, [r3]
 585:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 3063              		.loc 1 585 0
 3064 0d3c 1800     		movs	r0, r3
 3065 0d3e BD46     		mov	sp, r7
 3066 0d40 02B0     		add	sp, sp, #8
 3067              		@ sp needed
 3068 0d42 80BD     		pop	{r7, pc}
 3069              	.L161:
 3070              		.align	2
 3071              	.L160:
 3072 0d44 00100240 		.word	1073876992
 3073 0d48 55550000 		.word	21845
 3074 0d4c 00000000 		.word	ascii_read_controller
 3075 0d50 55555555 		.word	1431655765
 3076              		.cfi_endproc
 3077              	.LFE38:
 3079              		.align	1
 3080              		.global	ascii_clear_dsplay
 3081              		.syntax unified
 3082              		.code	16
 3083              		.thumb_func
 3084              		.fpu softvfp
 3086              	ascii_clear_dsplay:
 3087              	.LFB39:
 586:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void ascii_clear_dsplay(void){
 3088              		.loc 1 586 0
 3089              		.cfi_startproc
 3090              		@ args = 0, pretend = 0, frame = 0
 3091              		@ frame_needed = 1, uses_anonymous_args = 0
 3092 0d54 80B5     		push	{r7, lr}
 3093              		.cfi_def_cfa_offset 8
 3094              		.cfi_offset 7, -8
 3095              		.cfi_offset 14, -4
 3096 0d56 00AF     		add	r7, sp, #0
 3097              		.cfi_def_cfa_register 7
 587:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_write_CMD(1);
 3098              		.loc 1 587 0
 3099 0d58 0120     		movs	r0, #1
 3100 0d5a FFF7FEFF 		bl	ascii_write_CMD
 588:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 3101              		.loc 1 588 0
 3102 0d5e C046     		nop
 3103 0d60 BD46     		mov	sp, r7
 3104              		@ sp needed
 3105 0d62 80BD     		pop	{r7, pc}
 3106              		.cfi_endproc
 3107              	.LFE39:
 3109              		.align	1
 3110              		.global	print_to_ascii
 3111              		.syntax unified
 3112              		.code	16
 3113              		.thumb_func
 3114              		.fpu softvfp
 3116              	print_to_ascii:
 3117              	.LFB40:
 589:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** //skriver ut det som finns i PAscii till AsciiDisplayen.
 590:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void print_to_ascii(char line[], signed char x, char i){		
 3118              		.loc 1 590 0
 3119              		.cfi_startproc
 3120              		@ args = 0, pretend = 0, frame = 8
 3121              		@ frame_needed = 1, uses_anonymous_args = 0
 3122 0d64 80B5     		push	{r7, lr}
 3123              		.cfi_def_cfa_offset 8
 3124              		.cfi_offset 7, -8
 3125              		.cfi_offset 14, -4
 3126 0d66 82B0     		sub	sp, sp, #8
 3127              		.cfi_def_cfa_offset 16
 3128 0d68 00AF     		add	r7, sp, #0
 3129              		.cfi_def_cfa_register 7
 3130 0d6a 7860     		str	r0, [r7, #4]
 3131 0d6c 0800     		movs	r0, r1
 3132 0d6e 1100     		movs	r1, r2
 3133 0d70 FB1C     		adds	r3, r7, #3
 3134 0d72 021C     		adds	r2, r0, #0
 3135 0d74 1A70     		strb	r2, [r3]
 3136 0d76 BB1C     		adds	r3, r7, #2
 3137 0d78 0A1C     		adds	r2, r1, #0
 3138 0d7a 1A70     		strb	r2, [r3]
 591:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ascii_gotoxy(1,i);
 3139              		.loc 1 591 0
 3140 0d7c BB1C     		adds	r3, r7, #2
 3141 0d7e 1B78     		ldrb	r3, [r3]
 3142 0d80 1900     		movs	r1, r3
 3143 0d82 0120     		movs	r0, #1
 3144 0d84 FFF7FEFF 		bl	ascii_gotoxy
 592:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		while(*line)
 3145              		.loc 1 592 0
 3146 0d88 06E0     		b	.L164
 3147              	.L165:
 593:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			ascii_write_char(*line++);
 3148              		.loc 1 593 0
 3149 0d8a 7B68     		ldr	r3, [r7, #4]
 3150 0d8c 5A1C     		adds	r2, r3, #1
 3151 0d8e 7A60     		str	r2, [r7, #4]
 3152 0d90 1B78     		ldrb	r3, [r3]
 3153 0d92 1800     		movs	r0, r3
 3154 0d94 FFF7FEFF 		bl	ascii_write_char
 3155              	.L164:
 592:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		while(*line)
 3156              		.loc 1 592 0
 3157 0d98 7B68     		ldr	r3, [r7, #4]
 3158 0d9a 1B78     		ldrb	r3, [r3]
 3159 0d9c 002B     		cmp	r3, #0
 3160 0d9e F4D1     		bne	.L165
 594:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		if(x >= 0){ //If X is negative, don't print the players point.
 3161              		.loc 1 594 0
 3162 0da0 FB1C     		adds	r3, r7, #3
 3163 0da2 1B78     		ldrb	r3, [r3]
 3164 0da4 7F2B     		cmp	r3, #127
 3165 0da6 04D8     		bhi	.L167
 595:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			ascii_write_char(x);
 3166              		.loc 1 595 0
 3167 0da8 FB1C     		adds	r3, r7, #3
 3168 0daa 1B78     		ldrb	r3, [r3]
 3169 0dac 1800     		movs	r0, r3
 3170 0dae FFF7FEFF 		bl	ascii_write_char
 3171              	.L167:
 596:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		}
 597:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 598:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 3172              		.loc 1 598 0
 3173 0db2 C046     		nop
 3174 0db4 BD46     		mov	sp, r7
 3175 0db6 02B0     		add	sp, sp, #8
 3176              		@ sp needed
 3177 0db8 80BD     		pop	{r7, pc}
 3178              		.cfi_endproc
 3179              	.LFE40:
 3181              		.align	1
 3182              		.global	init_app
 3183              		.syntax unified
 3184              		.code	16
 3185              		.thumb_func
 3186              		.fpu softvfp
 3188              	init_app:
 3189              	.LFB41:
 599:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 600:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** //Sets values to their initiall value.
 601:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void init_app(void){ 
 3190              		.loc 1 601 0
 3191              		.cfi_startproc
 3192              		@ args = 0, pretend = 0, frame = 0
 3193              		@ frame_needed = 1, uses_anonymous_args = 0
 3194 0dba 80B5     		push	{r7, lr}
 3195              		.cfi_def_cfa_offset 8
 3196              		.cfi_offset 7, -8
 3197              		.cfi_offset 14, -4
 3198 0dbc 00AF     		add	r7, sp, #0
 3199              		.cfi_def_cfa_register 7
 602:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	#ifdef USBDM
 603:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		*((unsigned long*)0x40023830) = 0x18;
 3200              		.loc 1 603 0
 3201 0dbe 0A4B     		ldr	r3, .L169
 3202 0dc0 1822     		movs	r2, #24
 3203 0dc2 1A60     		str	r2, [r3]
 604:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		__asm volatile( "LDR R0, =0x8000209\n BLX R0\n");
 3204              		.loc 1 604 0
 3205              		.syntax divided
 3206              	@ 604 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG/pong.c" 1
 3207 0dc4 B248     		LDR R0, =0x8000209
 3208 0dc6 8047     	 BLX R0
 3209              	
 3210              	@ 0 "" 2
 605:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	#endif
 606:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	
 607:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	
 608:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_E.moder = 0x55555555;
 3211              		.loc 1 608 0
 3212              		.thumb
 3213              		.syntax unified
 3214 0dc8 084B     		ldr	r3, .L169+4
 3215 0dca 094A     		ldr	r2, .L169+8
 3216 0dcc 1A60     		str	r2, [r3]
 609:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_D.moder = 0x55005555;
 3217              		.loc 1 609 0
 3218 0dce 094B     		ldr	r3, .L169+12
 3219 0dd0 094A     		ldr	r2, .L169+16
 3220 0dd2 1A60     		str	r2, [r3]
 610:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_D.otyper = 0x0F00;
 3221              		.loc 1 610 0
 3222 0dd4 074B     		ldr	r3, .L169+12
 3223 0dd6 F022     		movs	r2, #240
 3224 0dd8 1201     		lsls	r2, r2, #4
 3225 0dda 9A80     		strh	r2, [r3, #4]
 611:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	GPIO_D.pupdr = 0xAAAA0000;
 3226              		.loc 1 611 0
 3227 0ddc 054B     		ldr	r3, .L169+12
 3228 0dde 074A     		ldr	r2, .L169+20
 3229 0de0 DA60     		str	r2, [r3, #12]
 612:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }	
 3230              		.loc 1 612 0
 3231 0de2 C046     		nop
 3232 0de4 BD46     		mov	sp, r7
 3233              		@ sp needed
 3234 0de6 80BD     		pop	{r7, pc}
 3235              	.L170:
 3236              		.align	2
 3237              	.L169:
 3238 0de8 30380240 		.word	1073887280
 3239 0dec 00100240 		.word	1073876992
 3240 0df0 55555555 		.word	1431655765
 3241 0df4 000C0240 		.word	1073875968
 3242 0df8 55550055 		.word	1426085205
 3243 0dfc 0000AAAA 		.word	-1431699456
 3244              		.cfi_endproc
 3245              	.LFE41:
 3247              		.align	1
 3248              		.global	game_init
 3249              		.syntax unified
 3250              		.code	16
 3251              		.thumb_func
 3252              		.fpu softvfp
 3254              	game_init:
 3255              	.LFB42:
 613:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void game_init(POBJECT BALL, PPLAYER P1, PPLAYER P2){
 3256              		.loc 1 613 0
 3257              		.cfi_startproc
 3258              		@ args = 0, pretend = 0, frame = 16
 3259              		@ frame_needed = 1, uses_anonymous_args = 0
 3260 0e00 80B5     		push	{r7, lr}
 3261              		.cfi_def_cfa_offset 8
 3262              		.cfi_offset 7, -8
 3263              		.cfi_offset 14, -4
 3264 0e02 84B0     		sub	sp, sp, #16
 3265              		.cfi_def_cfa_offset 24
 3266 0e04 00AF     		add	r7, sp, #0
 3267              		.cfi_def_cfa_register 7
 3268 0e06 F860     		str	r0, [r7, #12]
 3269 0e08 B960     		str	r1, [r7, #8]
 3270 0e0a 7A60     		str	r2, [r7, #4]
 614:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		//Reset points
 615:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		P1->points = 0;
 3271              		.loc 1 615 0
 3272 0e0c BB68     		ldr	r3, [r7, #8]
 3273 0e0e 0022     		movs	r2, #0
 3274 0e10 5A60     		str	r2, [r3, #4]
 616:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		P2->points = 0;
 3275              		.loc 1 616 0
 3276 0e12 7B68     		ldr	r3, [r7, #4]
 3277 0e14 0022     		movs	r2, #0
 3278 0e16 5A60     		str	r2, [r3, #4]
 617:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		// Reset bouncer positions.
 618:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		P1->objct->posx = 6;
 3279              		.loc 1 618 0
 3280 0e18 BB68     		ldr	r3, [r7, #8]
 3281 0e1a 1B68     		ldr	r3, [r3]
 3282 0e1c 0622     		movs	r2, #6
 3283 0e1e DA60     		str	r2, [r3, #12]
 619:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		P1->objct->posy = 32;
 3284              		.loc 1 619 0
 3285 0e20 BB68     		ldr	r3, [r7, #8]
 3286 0e22 1B68     		ldr	r3, [r3]
 3287 0e24 2022     		movs	r2, #32
 3288 0e26 1A61     		str	r2, [r3, #16]
 620:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		P2->objct->posx = LCD_WIDTH - 6;
 3289              		.loc 1 620 0
 3290 0e28 7B68     		ldr	r3, [r7, #4]
 3291 0e2a 1B68     		ldr	r3, [r3]
 3292 0e2c 7A22     		movs	r2, #122
 3293 0e2e DA60     		str	r2, [r3, #12]
 621:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		P2->objct->posy = 32;
 3294              		.loc 1 621 0
 3295 0e30 7B68     		ldr	r3, [r7, #4]
 3296 0e32 1B68     		ldr	r3, [r3]
 3297 0e34 2022     		movs	r2, #32
 3298 0e36 1A61     		str	r2, [r3, #16]
 622:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		
 623:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		//Clears LCD screen
 624:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		graphic_clear_screen();
 3299              		.loc 1 624 0
 3300 0e38 FFF7FEFF 		bl	graphic_clear_screen
 625:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		
 626:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		// Writes the startup values to the AsciiDisplay.
 627:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		ascii_clear_dsplay();
 3301              		.loc 1 627 0
 3302 0e3c FFF7FEFF 		bl	ascii_clear_dsplay
 628:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		print_to_ascii(Player1.PAscii,'0' + Player1.points, 1);
 3303              		.loc 1 628 0
 3304 0e40 194B     		ldr	r3, .L172
 3305 0e42 5B68     		ldr	r3, [r3, #4]
 3306 0e44 DBB2     		uxtb	r3, r3
 3307 0e46 3033     		adds	r3, r3, #48
 3308 0e48 DBB2     		uxtb	r3, r3
 3309 0e4a 59B2     		sxtb	r1, r3
 3310 0e4c 174B     		ldr	r3, .L172+4
 3311 0e4e 0122     		movs	r2, #1
 3312 0e50 1800     		movs	r0, r3
 3313 0e52 FFF7FEFF 		bl	print_to_ascii
 629:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		print_to_ascii(Player2.PAscii,'0' + Player2.points, 2);
 3314              		.loc 1 629 0
 3315 0e56 164B     		ldr	r3, .L172+8
 3316 0e58 5B68     		ldr	r3, [r3, #4]
 3317 0e5a DBB2     		uxtb	r3, r3
 3318 0e5c 3033     		adds	r3, r3, #48
 3319 0e5e DBB2     		uxtb	r3, r3
 3320 0e60 59B2     		sxtb	r1, r3
 3321 0e62 144B     		ldr	r3, .L172+12
 3322 0e64 0222     		movs	r2, #2
 3323 0e66 1800     		movs	r0, r3
 3324 0e68 FFF7FEFF 		bl	print_to_ascii
 630:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		
 631:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		P1->objct->move(P1->objct); //Flyttar P1 "pinne"
 3325              		.loc 1 631 0
 3326 0e6c BB68     		ldr	r3, [r7, #8]
 3327 0e6e 1B68     		ldr	r3, [r3]
 3328 0e70 DA69     		ldr	r2, [r3, #28]
 3329 0e72 BB68     		ldr	r3, [r7, #8]
 3330 0e74 1B68     		ldr	r3, [r3]
 3331 0e76 1800     		movs	r0, r3
 3332 0e78 9047     		blx	r2
 3333              	.LVL5:
 632:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		P2->objct->move(P2->objct); //Flyttar P2 "pinne"
 3334              		.loc 1 632 0
 3335 0e7a 7B68     		ldr	r3, [r7, #4]
 3336 0e7c 1B68     		ldr	r3, [r3]
 3337 0e7e DA69     		ldr	r2, [r3, #28]
 3338 0e80 7B68     		ldr	r3, [r7, #4]
 3339 0e82 1B68     		ldr	r3, [r3]
 3340 0e84 1800     		movs	r0, r3
 3341 0e86 9047     		blx	r2
 3342              	.LVL6:
 633:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		
 634:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		// Gives the ball it's speedfactor.
 635:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		BALL->set_speed(BALL,2,1);
 3343              		.loc 1 635 0
 3344 0e88 FB68     		ldr	r3, [r7, #12]
 3345 0e8a 1B6A     		ldr	r3, [r3, #32]
 3346 0e8c F868     		ldr	r0, [r7, #12]
 3347 0e8e 0122     		movs	r2, #1
 3348 0e90 0221     		movs	r1, #2
 3349 0e92 9847     		blx	r3
 3350              	.LVL7:
 636:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_milli(300);
 3351              		.loc 1 636 0
 3352 0e94 9623     		movs	r3, #150
 3353 0e96 5B00     		lsls	r3, r3, #1
 3354 0e98 1800     		movs	r0, r3
 3355 0e9a FFF7FEFF 		bl	delay_milli
 637:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** }
 3356              		.loc 1 637 0
 3357 0e9e C046     		nop
 3358 0ea0 BD46     		mov	sp, r7
 3359 0ea2 04B0     		add	sp, sp, #16
 3360              		@ sp needed
 3361 0ea4 80BD     		pop	{r7, pc}
 3362              	.L173:
 3363 0ea6 C046     		.align	2
 3364              	.L172:
 3365 0ea8 F4000000 		.word	Player1
 3366 0eac FC000000 		.word	Player1+8
 3367 0eb0 14010000 		.word	Player2
 3368 0eb4 1C010000 		.word	Player2+8
 3369              		.cfi_endproc
 3370              	.LFE42:
 3372              		.section	.rodata
 3373              		.align	2
 3374              	.LC16:
 3375 0034 50726573 		.ascii	"Press 5 to restart\000"
 3375      73203520 
 3375      746F2072 
 3375      65737461 
 3375      727400
 3376              		.text
 3377              		.align	1
 3378              		.global	main
 3379              		.syntax unified
 3380              		.code	16
 3381              		.thumb_func
 3382              		.fpu softvfp
 3384              	main:
 3385              	.LFB43:
 638:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 639:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** void main(void){
 3386              		.loc 1 639 0
 3387              		.cfi_startproc
 3388              		@ args = 0, pretend = 0, frame = 40
 3389              		@ frame_needed = 1, uses_anonymous_args = 0
 3390 0eb8 90B5     		push	{r4, r7, lr}
 3391              		.cfi_def_cfa_offset 12
 3392              		.cfi_offset 4, -12
 3393              		.cfi_offset 7, -8
 3394              		.cfi_offset 14, -4
 3395 0eba 8BB0     		sub	sp, sp, #44
 3396              		.cfi_def_cfa_offset 56
 3397 0ebc 00AF     		add	r7, sp, #0
 3398              		.cfi_def_cfa_register 7
 640:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	char c;
 641:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	POBJECT BALL = &ball;
 3399              		.loc 1 641 0
 3400 0ebe 6D4B     		ldr	r3, .L188
 3401 0ec0 3B62     		str	r3, [r7, #32]
 642:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	PPLAYER P1 = &Player1;
 3402              		.loc 1 642 0
 3403 0ec2 6D4B     		ldr	r3, .L188+4
 3404 0ec4 FB61     		str	r3, [r7, #28]
 643:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	PPLAYER P2 = &Player2;
 3405              		.loc 1 643 0
 3406 0ec6 6D4B     		ldr	r3, .L188+8
 3407 0ec8 BB61     		str	r3, [r7, #24]
 644:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	
 645:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	init_app(); //Initierar register
 3408              		.loc 1 645 0
 3409 0eca FFF7FEFF 		bl	init_app
 646:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	ascii_init(); //Initierar Ascii displayen
 3410              		.loc 1 646 0
 3411 0ece FFF7FEFF 		bl	ascii_init
 647:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	graphic_initialize(); //initierar LC displayen
 3412              		.loc 1 647 0
 3413 0ed2 FFF7FEFF 		bl	graphic_initialize
 648:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	game_init(BALL, P1, P2); //initierar spelet
 3414              		.loc 1 648 0
 3415 0ed6 BA69     		ldr	r2, [r7, #24]
 3416 0ed8 F969     		ldr	r1, [r7, #28]
 3417 0eda 3B6A     		ldr	r3, [r7, #32]
 3418 0edc 1800     		movs	r0, r3
 3419 0ede FFF7FEFF 		bl	game_init
 3420              	.L187:
 649:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 	while(1){
 650:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		BALL->move(BALL); //sätter bollen i rörelse
 3421              		.loc 1 650 0
 3422 0ee2 3B6A     		ldr	r3, [r7, #32]
 3423 0ee4 DB69     		ldr	r3, [r3, #28]
 3424 0ee6 3A6A     		ldr	r2, [r7, #32]
 3425 0ee8 1000     		movs	r0, r2
 3426 0eea 9847     		blx	r3
 3427              	.LVL8:
 651:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_milli(10);
 3428              		.loc 1 651 0
 3429 0eec 0A20     		movs	r0, #10
 3430 0eee FFF7FEFF 		bl	delay_milli
 652:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		c = keyb(); //Kollar om någon tryckt
 3431              		.loc 1 652 0
 3432 0ef2 1723     		movs	r3, #23
 3433 0ef4 FC18     		adds	r4, r7, r3
 3434 0ef6 FFF7FEFF 		bl	keyb
 3435 0efa 0300     		movs	r3, r0
 3436 0efc 2370     		strb	r3, [r4]
 653:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		GPIO_D.odr_low = c;
 3437              		.loc 1 653 0
 3438 0efe 604A     		ldr	r2, .L188+12
 3439 0f00 1723     		movs	r3, #23
 3440 0f02 FB18     		adds	r3, r7, r3
 3441 0f04 1B78     		ldrb	r3, [r3]
 3442 0f06 1375     		strb	r3, [r2, #20]
 654:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		switch(c){
 3443              		.loc 1 654 0
 3444 0f08 1723     		movs	r3, #23
 3445 0f0a FB18     		adds	r3, r7, r3
 3446 0f0c 1B78     		ldrb	r3, [r3]
 3447 0f0e 032B     		cmp	r3, #3
 3448 0f10 2BD0     		beq	.L176
 3449 0f12 02DC     		bgt	.L177
 3450 0f14 012B     		cmp	r3, #1
 3451 0f16 05D0     		beq	.L178
 3452 0f18 4AE0     		b	.L175
 3453              	.L177:
 3454 0f1a 072B     		cmp	r3, #7
 3455 0f1c 14D0     		beq	.L179
 3456 0f1e 092B     		cmp	r3, #9
 3457 0f20 35D0     		beq	.L180
 3458 0f22 45E0     		b	.L175
 3459              	.L178:
 655:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			case 1: P1->objct->set_speed(P1->objct, 0, -2);
 3460              		.loc 1 655 0
 3461 0f24 FB69     		ldr	r3, [r7, #28]
 3462 0f26 1B68     		ldr	r3, [r3]
 3463 0f28 1C6A     		ldr	r4, [r3, #32]
 3464 0f2a FB69     		ldr	r3, [r7, #28]
 3465 0f2c 1868     		ldr	r0, [r3]
 3466 0f2e 0223     		movs	r3, #2
 3467 0f30 5B42     		rsbs	r3, r3, #0
 3468 0f32 1A00     		movs	r2, r3
 3469 0f34 0021     		movs	r1, #0
 3470 0f36 A047     		blx	r4
 3471              	.LVL9:
 656:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				P1->objct->move(P1->objct);
 3472              		.loc 1 656 0
 3473 0f38 FB69     		ldr	r3, [r7, #28]
 3474 0f3a 1B68     		ldr	r3, [r3]
 3475 0f3c DA69     		ldr	r2, [r3, #28]
 3476 0f3e FB69     		ldr	r3, [r7, #28]
 3477 0f40 1B68     		ldr	r3, [r3]
 3478 0f42 1800     		movs	r0, r3
 3479 0f44 9047     		blx	r2
 3480              	.LVL10:
 657:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				break;
 3481              		.loc 1 657 0
 3482 0f46 33E0     		b	.L175
 3483              	.L179:
 658:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			case 7: P1->objct->set_speed(P1->objct, 0, 2);
 3484              		.loc 1 658 0
 3485 0f48 FB69     		ldr	r3, [r7, #28]
 3486 0f4a 1B68     		ldr	r3, [r3]
 3487 0f4c 1C6A     		ldr	r4, [r3, #32]
 3488 0f4e FB69     		ldr	r3, [r7, #28]
 3489 0f50 1B68     		ldr	r3, [r3]
 3490 0f52 0222     		movs	r2, #2
 3491 0f54 0021     		movs	r1, #0
 3492 0f56 1800     		movs	r0, r3
 3493 0f58 A047     		blx	r4
 3494              	.LVL11:
 659:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				P1->objct->move(P1->objct);
 3495              		.loc 1 659 0
 3496 0f5a FB69     		ldr	r3, [r7, #28]
 3497 0f5c 1B68     		ldr	r3, [r3]
 3498 0f5e DA69     		ldr	r2, [r3, #28]
 3499 0f60 FB69     		ldr	r3, [r7, #28]
 3500 0f62 1B68     		ldr	r3, [r3]
 3501 0f64 1800     		movs	r0, r3
 3502 0f66 9047     		blx	r2
 3503              	.LVL12:
 660:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				break;
 3504              		.loc 1 660 0
 3505 0f68 22E0     		b	.L175
 3506              	.L176:
 661:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			case 3: P2->objct->set_speed(P2->objct, 0, -2);
 3507              		.loc 1 661 0
 3508 0f6a BB69     		ldr	r3, [r7, #24]
 3509 0f6c 1B68     		ldr	r3, [r3]
 3510 0f6e 1C6A     		ldr	r4, [r3, #32]
 3511 0f70 BB69     		ldr	r3, [r7, #24]
 3512 0f72 1868     		ldr	r0, [r3]
 3513 0f74 0223     		movs	r3, #2
 3514 0f76 5B42     		rsbs	r3, r3, #0
 3515 0f78 1A00     		movs	r2, r3
 3516 0f7a 0021     		movs	r1, #0
 3517 0f7c A047     		blx	r4
 3518              	.LVL13:
 662:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				P2->objct->move(P2->objct);
 3519              		.loc 1 662 0
 3520 0f7e BB69     		ldr	r3, [r7, #24]
 3521 0f80 1B68     		ldr	r3, [r3]
 3522 0f82 DA69     		ldr	r2, [r3, #28]
 3523 0f84 BB69     		ldr	r3, [r7, #24]
 3524 0f86 1B68     		ldr	r3, [r3]
 3525 0f88 1800     		movs	r0, r3
 3526 0f8a 9047     		blx	r2
 3527              	.LVL14:
 663:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				break;
 3528              		.loc 1 663 0
 3529 0f8c 10E0     		b	.L175
 3530              	.L180:
 664:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			case 9: P2->objct->set_speed(P2->objct, 0, 2);
 3531              		.loc 1 664 0
 3532 0f8e BB69     		ldr	r3, [r7, #24]
 3533 0f90 1B68     		ldr	r3, [r3]
 3534 0f92 1C6A     		ldr	r4, [r3, #32]
 3535 0f94 BB69     		ldr	r3, [r7, #24]
 3536 0f96 1B68     		ldr	r3, [r3]
 3537 0f98 0222     		movs	r2, #2
 3538 0f9a 0021     		movs	r1, #0
 3539 0f9c 1800     		movs	r0, r3
 3540 0f9e A047     		blx	r4
 3541              	.LVL15:
 665:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				P2->objct->move(P2->objct);
 3542              		.loc 1 665 0
 3543 0fa0 BB69     		ldr	r3, [r7, #24]
 3544 0fa2 1B68     		ldr	r3, [r3]
 3545 0fa4 DA69     		ldr	r2, [r3, #28]
 3546 0fa6 BB69     		ldr	r3, [r7, #24]
 3547 0fa8 1B68     		ldr	r3, [r3]
 3548 0faa 1800     		movs	r0, r3
 3549 0fac 9047     		blx	r2
 3550              	.LVL16:
 666:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				break;
 3551              		.loc 1 666 0
 3552 0fae C046     		nop
 3553              	.L175:
 667:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 668:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		}
 669:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		if(P1->points >= WinPoints||P2->points >= WinPoints){ //Om någon har nåt poängen för att vinn
 3554              		.loc 1 669 0
 3555 0fb0 FB69     		ldr	r3, [r7, #28]
 3556 0fb2 5B68     		ldr	r3, [r3, #4]
 3557 0fb4 082B     		cmp	r3, #8
 3558 0fb6 03DC     		bgt	.L181
 3559              		.loc 1 669 0 is_stmt 0 discriminator 1
 3560 0fb8 BB69     		ldr	r3, [r7, #24]
 3561 0fba 5B68     		ldr	r3, [r3, #4]
 3562 0fbc 082B     		cmp	r3, #8
 3563 0fbe 90DD     		ble	.L187
 3564              	.L181:
 3565              	.LBB9:
 670:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			char press[] = "Press 5 to restart";
 3566              		.loc 1 670 0 is_stmt 1
 3567 0fc0 3B00     		movs	r3, r7
 3568 0fc2 304A     		ldr	r2, .L188+16
 3569 0fc4 13CA     		ldmia	r2!, {r0, r1, r4}
 3570 0fc6 13C3     		stmia	r3!, {r0, r1, r4}
 3571 0fc8 1168     		ldr	r1, [r2]
 3572 0fca 1960     		str	r1, [r3]
 3573 0fcc 9188     		ldrh	r1, [r2, #4]
 3574 0fce 9980     		strh	r1, [r3, #4]
 3575 0fd0 9279     		ldrb	r2, [r2, #6]
 3576 0fd2 9A71     		strb	r2, [r3, #6]
 671:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			char restart = 1; //sätt restart variabeln till 1
 3577              		.loc 1 671 0
 3578 0fd4 2723     		movs	r3, #39
 3579 0fd6 FB18     		adds	r3, r7, r3
 3580 0fd8 0122     		movs	r2, #1
 3581 0fda 1A70     		strb	r2, [r3]
 672:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			if(P1->points >= WinPoints){ // Om player 1 har vunnit sätt Ascii displayerna till Player1 Wins
 3582              		.loc 1 672 0
 3583 0fdc FB69     		ldr	r3, [r7, #28]
 3584 0fde 5B68     		ldr	r3, [r3, #4]
 3585 0fe0 082B     		cmp	r3, #8
 3586 0fe2 10DD     		ble	.L183
 673:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				ascii_clear_dsplay();
 3587              		.loc 1 673 0
 3588 0fe4 FFF7FEFF 		bl	ascii_clear_dsplay
 674:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				print_to_ascii(Player1.winMsg, -1, 1);
 3589              		.loc 1 674 0
 3590 0fe8 0123     		movs	r3, #1
 3591 0fea 5942     		rsbs	r1, r3, #0
 3592 0fec 264B     		ldr	r3, .L188+20
 3593 0fee 0122     		movs	r2, #1
 3594 0ff0 1800     		movs	r0, r3
 3595 0ff2 FFF7FEFF 		bl	print_to_ascii
 675:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				print_to_ascii(press, -1, 2);
 3596              		.loc 1 675 0
 3597 0ff6 0123     		movs	r3, #1
 3598 0ff8 5942     		rsbs	r1, r3, #0
 3599 0ffa 3B00     		movs	r3, r7
 3600 0ffc 0222     		movs	r2, #2
 3601 0ffe 1800     		movs	r0, r3
 3602 1000 FFF7FEFF 		bl	print_to_ascii
 3603 1004 2FE0     		b	.L185
 3604              	.L183:
 676:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 
 677:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			}
 678:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			else if(P2->points >= WinPoints){ // Om player 2 har vunnit sätt Ascii displayerna till Player2
 3605              		.loc 1 678 0
 3606 1006 BB69     		ldr	r3, [r7, #24]
 3607 1008 5B68     		ldr	r3, [r3, #4]
 3608 100a 082B     		cmp	r3, #8
 3609 100c 2BDD     		ble	.L185
 679:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			ascii_clear_dsplay();
 3610              		.loc 1 679 0
 3611 100e FFF7FEFF 		bl	ascii_clear_dsplay
 680:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			print_to_ascii(Player2.winMsg, -1, 1);
 3612              		.loc 1 680 0
 3613 1012 0123     		movs	r3, #1
 3614 1014 5942     		rsbs	r1, r3, #0
 3615 1016 1D4B     		ldr	r3, .L188+24
 3616 1018 0122     		movs	r2, #1
 3617 101a 1800     		movs	r0, r3
 3618 101c FFF7FEFF 		bl	print_to_ascii
 681:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			print_to_ascii(press, -1, 2);
 3619              		.loc 1 681 0
 3620 1020 0123     		movs	r3, #1
 3621 1022 5942     		rsbs	r1, r3, #0
 3622 1024 3B00     		movs	r3, r7
 3623 1026 0222     		movs	r2, #2
 3624 1028 1800     		movs	r0, r3
 3625 102a FFF7FEFF 		bl	print_to_ascii
 682:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			}
 683:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 			while(restart){ //Så länge inte knapp 5 på Keypaden har tryckts så står är spelet låst
 3626              		.loc 1 683 0
 3627 102e 1AE0     		b	.L185
 3628              	.L186:
 3629              	.LBB10:
 684:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				char button = keyb(); //reads the keyboard.
 3630              		.loc 1 684 0
 3631 1030 1623     		movs	r3, #22
 3632 1032 FC18     		adds	r4, r7, r3
 3633 1034 FFF7FEFF 		bl	keyb
 3634 1038 0300     		movs	r3, r0
 3635 103a 2370     		strb	r3, [r4]
 3636 103c 2723     		movs	r3, #39
 3637 103e FB18     		adds	r3, r7, r3
 3638 1040 2722     		movs	r2, #39
 3639 1042 BA18     		adds	r2, r7, r2
 3640 1044 1278     		ldrb	r2, [r2]
 3641 1046 1A70     		strb	r2, [r3]
 685:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				if(button == 5){
 3642              		.loc 1 685 0
 3643 1048 1623     		movs	r3, #22
 3644 104a FB18     		adds	r3, r7, r3
 3645 104c 1B78     		ldrb	r3, [r3]
 3646 104e 052B     		cmp	r3, #5
 3647 1050 09D1     		bne	.L185
 686:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 					game_init(BALL, P1, P2); // startar om spelet
 3648              		.loc 1 686 0
 3649 1052 BA69     		ldr	r2, [r7, #24]
 3650 1054 F969     		ldr	r1, [r7, #28]
 3651 1056 3B6A     		ldr	r3, [r7, #32]
 3652 1058 1800     		movs	r0, r3
 3653 105a FFF7FEFF 		bl	game_init
 687:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 					restart = 0; //Set restar to 0.
 3654              		.loc 1 687 0
 3655 105e 2723     		movs	r3, #39
 3656 1060 FB18     		adds	r3, r7, r3
 3657 1062 0022     		movs	r2, #0
 3658 1064 1A70     		strb	r2, [r3]
 3659              	.L185:
 3660              	.LBE10:
 683:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 				char button = keyb(); //reads the keyboard.
 3661              		.loc 1 683 0
 3662 1066 2723     		movs	r3, #39
 3663 1068 FB18     		adds	r3, r7, r3
 3664 106a 1B78     		ldrb	r3, [r3]
 3665 106c 002B     		cmp	r3, #0
 3666 106e DFD1     		bne	.L186
 3667              	.LBE9:
 650:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/PONG\pong.c **** 		delay_milli(10);
 3668              		.loc 1 650 0 discriminator 1
 3669 1070 37E7     		b	.L187
 3670              	.L189:
 3671 1072 C046     		.align	2
 3672              	.L188:
 3673 1074 C8000000 		.word	ball
 3674 1078 F4000000 		.word	Player1
 3675 107c 14010000 		.word	Player2
 3676 1080 000C0240 		.word	1073875968
 3677 1084 34000000 		.word	.LC16
 3678 1088 06010000 		.word	Player1+18
 3679 108c 26010000 		.word	Player2+18
 3680              		.cfi_endproc
 3681              	.LFE43:
 3683              	.Letext0:
