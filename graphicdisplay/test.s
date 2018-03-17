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
  11              		.file	"graphicdisplay.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay/
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void startup ( void ){
  26              		.loc 1 7 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** __asm volatile(
  31              		.loc 1 8 0
  32              		.syntax divided
  33              	@ 8 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay/graph
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	" MOV SP,R0\n"
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	" BL main\n"				/* call main */
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	"_exit: B .\n"				/* never return */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	) ;
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
  40              		.loc 1 14 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.text
  48              		.align	1
  49              		.global	init_app
  50              		.syntax unified
  51              		.code	16
  52              		.thumb_func
  53              		.fpu softvfp
  55              	init_app:
  56              	.LFB1:
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define PORT_DISPLAY_BASE 0x40021000 // MD407 port E
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define portModer ((volatile unsigned int *) (PORT_DISPLAY_BASE))
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define portOtyper ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x4))
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define portOspeedr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0x8))
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define portPupdr ((volatile unsigned int *) (PORT_DISPLAY_BASE+0xC))
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define portIdr ((volatile unsigned short *) (PORT_DISPLAY_BASE+0x10))
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define portIdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x11))
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define portOdrLow ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14))
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define portOdrHigh ((volatile unsigned char *) (PORT_DISPLAY_BASE+0x14+1))
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define SysTick 0xE000E010
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define B_E 0x40 // Enable
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define B_RST 0x20 // Reset
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define B_CS2 0x10 // Controller Select 2
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define B_CS1 8 // Controller Select 1
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define B_RW 2 // 0 Write, 1 Read
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define B_RS 1 // 0 Command, 1 Data
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define LCD_ON 0x3F // Display on
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define LCD_OFF 0x3E // Display off
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define LCD_DISP_START 0xC0 // Start address
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define LCD_BUSY 0x80 // Read busy status
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** #define SIMULATOR 1
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** typedef unsigned char uint8_t;
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** //funktions declarationer
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void graphic_initialize(void);
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_write_command(uint8_t command, uint8_t controller);
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_write_data(uint8_t data, uint8_t controller);
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_write(uint8_t value, uint8_t controller);
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_ctrl_bit_clear(uint8_t x);
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void init_app(void){ 
  57              		.loc 1 55 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x55555555;
  67              		.loc 1 56 0
  68 0004 024B     		ldr	r3, .L3
  69 0006 034A     		ldr	r2, .L3+4
  70 0008 1A60     		str	r2, [r3]
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }	
  71              		.loc 1 57 0
  72 000a C046     		nop
  73 000c BD46     		mov	sp, r7
  74              		@ sp needed
  75 000e 80BD     		pop	{r7, pc}
  76              	.L4:
  77              		.align	2
  78              	.L3:
  79 0010 00100240 		.word	1073876992
  80 0014 55555555 		.word	1431655765
  81              		.cfi_endproc
  82              	.LFE1:
  84              		.align	1
  85              		.syntax unified
  86              		.code	16
  87              		.thumb_func
  88              		.fpu softvfp
  90              	graphic_ctrl_bit_set:
  91              	.LFB2:
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** // Funktioner
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_ctrl_bit_set(uint8_t x) {
  92              		.loc 1 60 0
  93              		.cfi_startproc
  94              		@ args = 0, pretend = 0, frame = 16
  95              		@ frame_needed = 1, uses_anonymous_args = 0
  96 0018 80B5     		push	{r7, lr}
  97              		.cfi_def_cfa_offset 8
  98              		.cfi_offset 7, -8
  99              		.cfi_offset 14, -4
 100 001a 84B0     		sub	sp, sp, #16
 101              		.cfi_def_cfa_offset 24
 102 001c 00AF     		add	r7, sp, #0
 103              		.cfi_def_cfa_register 7
 104 001e 0200     		movs	r2, r0
 105 0020 FB1D     		adds	r3, r7, #7
 106 0022 1A70     		strb	r2, [r3]
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** uint8_t c;
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** c = *portOdrLow;
 107              		.loc 1 62 0
 108 0024 124A     		ldr	r2, .L6
 109 0026 0F23     		movs	r3, #15
 110 0028 FB18     		adds	r3, r7, r3
 111 002a 1278     		ldrb	r2, [r2]
 112 002c 1A70     		strb	r2, [r3]
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** c &= ~B_SELECT;
 113              		.loc 1 63 0
 114 002e 0F23     		movs	r3, #15
 115 0030 FB18     		adds	r3, r7, r3
 116 0032 0F22     		movs	r2, #15
 117 0034 BA18     		adds	r2, r7, r2
 118 0036 1278     		ldrb	r2, [r2]
 119 0038 0421     		movs	r1, #4
 120 003a 8A43     		bics	r2, r1
 121 003c 1A70     		strb	r2, [r3]
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** c |= (~B_SELECT & x);
 122              		.loc 1 64 0
 123 003e FB1D     		adds	r3, r7, #7
 124 0040 1B78     		ldrb	r3, [r3]
 125 0042 5BB2     		sxtb	r3, r3
 126 0044 0422     		movs	r2, #4
 127 0046 9343     		bics	r3, r2
 128 0048 5AB2     		sxtb	r2, r3
 129 004a 0F23     		movs	r3, #15
 130 004c FB18     		adds	r3, r7, r3
 131 004e 1B78     		ldrb	r3, [r3]
 132 0050 5BB2     		sxtb	r3, r3
 133 0052 1343     		orrs	r3, r2
 134 0054 5AB2     		sxtb	r2, r3
 135 0056 0F23     		movs	r3, #15
 136 0058 FB18     		adds	r3, r7, r3
 137 005a 1A70     		strb	r2, [r3]
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** *portOdrLow = c;
 138              		.loc 1 65 0
 139 005c 044A     		ldr	r2, .L6
 140 005e 0F23     		movs	r3, #15
 141 0060 FB18     		adds	r3, r7, r3
 142 0062 1B78     		ldrb	r3, [r3]
 143 0064 1370     		strb	r3, [r2]
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 144              		.loc 1 66 0
 145 0066 C046     		nop
 146 0068 BD46     		mov	sp, r7
 147 006a 04B0     		add	sp, sp, #16
 148              		@ sp needed
 149 006c 80BD     		pop	{r7, pc}
 150              	.L7:
 151 006e C046     		.align	2
 152              	.L6:
 153 0070 14100240 		.word	1073877012
 154              		.cfi_endproc
 155              	.LFE2:
 157              		.align	1
 158              		.syntax unified
 159              		.code	16
 160              		.thumb_func
 161              		.fpu softvfp
 163              	graphic_ctrl_bit_clear:
 164              	.LFB3:
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_ctrl_bit_clear(uint8_t x) {
 165              		.loc 1 67 0
 166              		.cfi_startproc
 167              		@ args = 0, pretend = 0, frame = 16
 168              		@ frame_needed = 1, uses_anonymous_args = 0
 169 0074 80B5     		push	{r7, lr}
 170              		.cfi_def_cfa_offset 8
 171              		.cfi_offset 7, -8
 172              		.cfi_offset 14, -4
 173 0076 84B0     		sub	sp, sp, #16
 174              		.cfi_def_cfa_offset 24
 175 0078 00AF     		add	r7, sp, #0
 176              		.cfi_def_cfa_register 7
 177 007a 0200     		movs	r2, r0
 178 007c FB1D     		adds	r3, r7, #7
 179 007e 1A70     		strb	r2, [r3]
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** uint8_t c;
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** c = *portOdrLow;
 180              		.loc 1 69 0
 181 0080 114A     		ldr	r2, .L9
 182 0082 0F23     		movs	r3, #15
 183 0084 FB18     		adds	r3, r7, r3
 184 0086 1278     		ldrb	r2, [r2]
 185 0088 1A70     		strb	r2, [r3]
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** c &= ~B_SELECT;
 186              		.loc 1 70 0
 187 008a 0F23     		movs	r3, #15
 188 008c FB18     		adds	r3, r7, r3
 189 008e 0F22     		movs	r2, #15
 190 0090 BA18     		adds	r2, r7, r2
 191 0092 1278     		ldrb	r2, [r2]
 192 0094 0421     		movs	r1, #4
 193 0096 8A43     		bics	r2, r1
 194 0098 1A70     		strb	r2, [r3]
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** c &= ~x;
 195              		.loc 1 71 0
 196 009a FB1D     		adds	r3, r7, #7
 197 009c 1B78     		ldrb	r3, [r3]
 198 009e 5BB2     		sxtb	r3, r3
 199 00a0 DB43     		mvns	r3, r3
 200 00a2 5BB2     		sxtb	r3, r3
 201 00a4 0F22     		movs	r2, #15
 202 00a6 BA18     		adds	r2, r7, r2
 203 00a8 1278     		ldrb	r2, [r2]
 204 00aa 52B2     		sxtb	r2, r2
 205 00ac 1340     		ands	r3, r2
 206 00ae 5AB2     		sxtb	r2, r3
 207 00b0 0F23     		movs	r3, #15
 208 00b2 FB18     		adds	r3, r7, r3
 209 00b4 1A70     		strb	r2, [r3]
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** *portOdrLow = c;
 210              		.loc 1 72 0
 211 00b6 044A     		ldr	r2, .L9
 212 00b8 0F23     		movs	r3, #15
 213 00ba FB18     		adds	r3, r7, r3
 214 00bc 1B78     		ldrb	r3, [r3]
 215 00be 1370     		strb	r3, [r2]
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 216              		.loc 1 73 0
 217 00c0 C046     		nop
 218 00c2 BD46     		mov	sp, r7
 219 00c4 04B0     		add	sp, sp, #16
 220              		@ sp needed
 221 00c6 80BD     		pop	{r7, pc}
 222              	.L10:
 223              		.align	2
 224              	.L9:
 225 00c8 14100240 		.word	1073877012
 226              		.cfi_endproc
 227              	.LFE3:
 229              		.align	1
 230              		.syntax unified
 231              		.code	16
 232              		.thumb_func
 233              		.fpu softvfp
 235              	select_controller:
 236              	.LFB4:
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void select_controller(uint8_t controller){
 237              		.loc 1 74 0
 238              		.cfi_startproc
 239              		@ args = 0, pretend = 0, frame = 8
 240              		@ frame_needed = 1, uses_anonymous_args = 0
 241 00cc 80B5     		push	{r7, lr}
 242              		.cfi_def_cfa_offset 8
 243              		.cfi_offset 7, -8
 244              		.cfi_offset 14, -4
 245 00ce 82B0     		sub	sp, sp, #8
 246              		.cfi_def_cfa_offset 16
 247 00d0 00AF     		add	r7, sp, #0
 248              		.cfi_def_cfa_register 7
 249 00d2 0200     		movs	r2, r0
 250 00d4 FB1D     		adds	r3, r7, #7
 251 00d6 1A70     		strb	r2, [r3]
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	switch(controller){
 252              		.loc 1 75 0
 253 00d8 FB1D     		adds	r3, r7, #7
 254 00da 1B78     		ldrb	r3, [r3]
 255 00dc 082B     		cmp	r3, #8
 256 00de 0CD0     		beq	.L13
 257 00e0 02DC     		bgt	.L14
 258 00e2 002B     		cmp	r3, #0
 259 00e4 05D0     		beq	.L15
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 0:
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1|B_CS2);
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			break;
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case B_CS1 :
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS1);
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS2);
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			break;
  83:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case B_CS2 :
  84:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS2);
  85:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1);
  86:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			break;
  87:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case B_CS1|B_CS2 :
  88:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_set(B_CS1|B_CS2);
  89:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			break;
  90:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
  91:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 260              		.loc 1 91 0
 261 00e6 1AE0     		b	.L18
 262              	.L14:
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	switch(controller){
 263              		.loc 1 75 0
 264 00e8 102B     		cmp	r3, #16
 265 00ea 0DD0     		beq	.L16
 266 00ec 182B     		cmp	r3, #24
 267 00ee 12D0     		beq	.L17
 268              		.loc 1 91 0
 269 00f0 15E0     		b	.L18
 270              	.L15:
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			break;
 271              		.loc 1 77 0
 272 00f2 1820     		movs	r0, #24
 273 00f4 FFF7BEFF 		bl	graphic_ctrl_bit_clear
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case B_CS1 :
 274              		.loc 1 78 0
 275 00f8 11E0     		b	.L12
 276              	.L13:
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS2);
 277              		.loc 1 80 0
 278 00fa 0820     		movs	r0, #8
 279 00fc FFF78CFF 		bl	graphic_ctrl_bit_set
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			break;
 280              		.loc 1 81 0
 281 0100 1020     		movs	r0, #16
 282 0102 FFF7B7FF 		bl	graphic_ctrl_bit_clear
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case B_CS2 :
 283              		.loc 1 82 0
 284 0106 0AE0     		b	.L12
 285              	.L16:
  84:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_ctrl_bit_clear(B_CS1);
 286              		.loc 1 84 0
 287 0108 1020     		movs	r0, #16
 288 010a FFF785FF 		bl	graphic_ctrl_bit_set
  85:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			break;
 289              		.loc 1 85 0
 290 010e 0820     		movs	r0, #8
 291 0110 FFF7B0FF 		bl	graphic_ctrl_bit_clear
  86:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case B_CS1|B_CS2 :
 292              		.loc 1 86 0
 293 0114 03E0     		b	.L12
 294              	.L17:
  88:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			break;
 295              		.loc 1 88 0
 296 0116 1820     		movs	r0, #24
 297 0118 FFF77EFF 		bl	graphic_ctrl_bit_set
  89:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 298              		.loc 1 89 0
 299 011c C046     		nop
 300              	.L12:
 301              	.L18:
 302              		.loc 1 91 0
 303 011e C046     		nop
 304 0120 BD46     		mov	sp, r7
 305 0122 02B0     		add	sp, sp, #8
 306              		@ sp needed
 307 0124 80BD     		pop	{r7, pc}
 308              		.cfi_endproc
 309              	.LFE4:
 311              		.align	1
 312              		.global	graphic_initialize
 313              		.syntax unified
 314              		.code	16
 315              		.thumb_func
 316              		.fpu softvfp
 318              	graphic_initialize:
 319              	.LFB5:
  92:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void graphic_initialize(void) {
 320              		.loc 1 92 0
 321              		.cfi_startproc
 322              		@ args = 0, pretend = 0, frame = 0
 323              		@ frame_needed = 1, uses_anonymous_args = 0
 324 0126 80B5     		push	{r7, lr}
 325              		.cfi_def_cfa_offset 8
 326              		.cfi_offset 7, -8
 327              		.cfi_offset 14, -4
 328 0128 00AF     		add	r7, sp, #0
 329              		.cfi_def_cfa_register 7
  93:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 330              		.loc 1 93 0
 331 012a 4020     		movs	r0, #64
 332 012c FFF774FF 		bl	graphic_ctrl_bit_set
  94:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_mikro(10);
 333              		.loc 1 94 0
 334 0130 0A20     		movs	r0, #10
 335 0132 FFF7FEFF 		bl	delay_mikro
  95:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 336              		.loc 1 95 0
 337 0136 7820     		movs	r0, #120
 338 0138 FFF79CFF 		bl	graphic_ctrl_bit_clear
  96:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_milli(30);
 339              		.loc 1 96 0
 340 013c 1E20     		movs	r0, #30
 341 013e FFF7FEFF 		bl	delay_milli
  97:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RST);
 342              		.loc 1 97 0
 343 0142 2020     		movs	r0, #32
 344 0144 FFF768FF 		bl	graphic_ctrl_bit_set
  98:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_milli(100);
 345              		.loc 1 98 0
 346 0148 6420     		movs	r0, #100
 347 014a FFF7FEFF 		bl	delay_milli
  99:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 348              		.loc 1 99 0
 349 014e 1821     		movs	r1, #24
 350 0150 3E20     		movs	r0, #62
 351 0152 00F0E3F8 		bl	graphic_write_command
 100:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_ON, B_CS1|B_CS2);
 352              		.loc 1 100 0
 353 0156 1821     		movs	r1, #24
 354 0158 3F20     		movs	r0, #63
 355 015a 00F0DFF8 		bl	graphic_write_command
 101:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 356              		.loc 1 101 0
 357 015e 1821     		movs	r1, #24
 358 0160 C020     		movs	r0, #192
 359 0162 00F0DBF8 		bl	graphic_write_command
 102:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 360              		.loc 1 102 0
 361 0166 1821     		movs	r1, #24
 362 0168 4020     		movs	r0, #64
 363 016a 00F0D7F8 		bl	graphic_write_command
 103:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 364              		.loc 1 103 0
 365 016e 1821     		movs	r1, #24
 366 0170 B820     		movs	r0, #184
 367 0172 00F0D3F8 		bl	graphic_write_command
 104:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	select_controller(0);
 368              		.loc 1 104 0
 369 0176 0020     		movs	r0, #0
 370 0178 FFF7A8FF 		bl	select_controller
 105:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 371              		.loc 1 105 0
 372 017c C046     		nop
 373 017e BD46     		mov	sp, r7
 374              		@ sp needed
 375 0180 80BD     		pop	{r7, pc}
 376              		.cfi_endproc
 377              	.LFE5:
 379              		.align	1
 380              		.syntax unified
 381              		.code	16
 382              		.thumb_func
 383              		.fpu softvfp
 385              	graphic_wait_ready:
 386              	.LFB6:
 106:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_wait_ready(void) {
 387              		.loc 1 106 0
 388              		.cfi_startproc
 389              		@ args = 0, pretend = 0, frame = 8
 390              		@ frame_needed = 1, uses_anonymous_args = 0
 391 0182 80B5     		push	{r7, lr}
 392              		.cfi_def_cfa_offset 8
 393              		.cfi_offset 7, -8
 394              		.cfi_offset 14, -4
 395 0184 82B0     		sub	sp, sp, #8
 396              		.cfi_def_cfa_offset 16
 397 0186 00AF     		add	r7, sp, #0
 398              		.cfi_def_cfa_register 7
 107:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	uint8_t c;
 108:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 399              		.loc 1 108 0
 400 0188 4020     		movs	r0, #64
 401 018a FFF773FF 		bl	graphic_ctrl_bit_clear
 109:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 402              		.loc 1 109 0
 403 018e 144B     		ldr	r3, .L26
 404 0190 144A     		ldr	r2, .L26+4
 405 0192 1A60     		str	r2, [r3]
 110:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS);
 406              		.loc 1 110 0
 407 0194 0120     		movs	r0, #1
 408 0196 FFF76DFF 		bl	graphic_ctrl_bit_clear
 111:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RW);
 409              		.loc 1 111 0
 410 019a 0220     		movs	r0, #2
 411 019c FFF73CFF 		bl	graphic_ctrl_bit_set
 112:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 412              		.loc 1 112 0
 413 01a0 FFF7FEFF 		bl	delay_500ns
 414              	.L23:
 113:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	while(1) {
 114:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_ctrl_bit_set(B_E);
 415              		.loc 1 114 0
 416 01a4 4020     		movs	r0, #64
 417 01a6 FFF737FF 		bl	graphic_ctrl_bit_set
 115:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_500ns();
 418              		.loc 1 115 0
 419 01aa FFF7FEFF 		bl	delay_500ns
 116:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		c = *portIdrHigh & LCD_BUSY;
 420              		.loc 1 116 0
 421 01ae 0E4B     		ldr	r3, .L26+8
 422 01b0 1B78     		ldrb	r3, [r3]
 423 01b2 DAB2     		uxtb	r2, r3
 424 01b4 FB1D     		adds	r3, r7, #7
 425 01b6 7F21     		movs	r1, #127
 426 01b8 8A43     		bics	r2, r1
 427 01ba 1A70     		strb	r2, [r3]
 117:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_ctrl_bit_clear(B_E);
 428              		.loc 1 117 0
 429 01bc 4020     		movs	r0, #64
 430 01be FFF759FF 		bl	graphic_ctrl_bit_clear
 118:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_500ns();
 431              		.loc 1 118 0
 432 01c2 FFF7FEFF 		bl	delay_500ns
 119:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		if( c == 0 ) break;
 433              		.loc 1 119 0
 434 01c6 FB1D     		adds	r3, r7, #7
 435 01c8 1B78     		ldrb	r3, [r3]
 436 01ca 002B     		cmp	r3, #0
 437 01cc 00D0     		beq	.L25
 114:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_500ns();
 438              		.loc 1 114 0
 439 01ce E9E7     		b	.L23
 440              	.L25:
 441              		.loc 1 119 0
 442 01d0 C046     		nop
 120:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 121:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x55555555; // 15-0 outputs
 443              		.loc 1 121 0
 444 01d2 034B     		ldr	r3, .L26
 445 01d4 054A     		ldr	r2, .L26+12
 446 01d6 1A60     		str	r2, [r3]
 122:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 447              		.loc 1 122 0
 448 01d8 C046     		nop
 449 01da BD46     		mov	sp, r7
 450 01dc 02B0     		add	sp, sp, #8
 451              		@ sp needed
 452 01de 80BD     		pop	{r7, pc}
 453              	.L27:
 454              		.align	2
 455              	.L26:
 456 01e0 00100240 		.word	1073876992
 457 01e4 55550000 		.word	21845
 458 01e8 11100240 		.word	1073877009
 459 01ec 55555555 		.word	1431655765
 460              		.cfi_endproc
 461              	.LFE6:
 463              		.align	1
 464              		.syntax unified
 465              		.code	16
 466              		.thumb_func
 467              		.fpu softvfp
 469              	graphic_read:
 470              	.LFB7:
 123:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static uint8_t graphic_read(uint8_t controller) {
 471              		.loc 1 123 0
 472              		.cfi_startproc
 473              		@ args = 0, pretend = 0, frame = 16
 474              		@ frame_needed = 1, uses_anonymous_args = 0
 475 01f0 80B5     		push	{r7, lr}
 476              		.cfi_def_cfa_offset 8
 477              		.cfi_offset 7, -8
 478              		.cfi_offset 14, -4
 479 01f2 84B0     		sub	sp, sp, #16
 480              		.cfi_def_cfa_offset 24
 481 01f4 00AF     		add	r7, sp, #0
 482              		.cfi_def_cfa_register 7
 483 01f6 0200     		movs	r2, r0
 484 01f8 FB1D     		adds	r3, r7, #7
 485 01fa 1A70     		strb	r2, [r3]
 124:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	uint8_t c;
 125:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 486              		.loc 1 125 0
 487 01fc 4020     		movs	r0, #64
 488 01fe FFF739FF 		bl	graphic_ctrl_bit_clear
 126:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x00005555; // 15-8 inputs, 7-0 outputs
 489              		.loc 1 126 0
 490 0202 1C4B     		ldr	r3, .L32
 491 0204 1C4A     		ldr	r2, .L32+4
 492 0206 1A60     		str	r2, [r3]
 127:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS|B_RW);
 493              		.loc 1 127 0
 494 0208 0320     		movs	r0, #3
 495 020a FFF705FF 		bl	graphic_ctrl_bit_set
 128:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 496              		.loc 1 128 0
 497 020e FB1D     		adds	r3, r7, #7
 498 0210 1B78     		ldrb	r3, [r3]
 499 0212 1800     		movs	r0, r3
 500 0214 FFF75AFF 		bl	select_controller
 129:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 501              		.loc 1 129 0
 502 0218 FFF7FEFF 		bl	delay_500ns
 130:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 503              		.loc 1 130 0
 504 021c 4020     		movs	r0, #64
 505 021e FFF7FBFE 		bl	graphic_ctrl_bit_set
 131:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 506              		.loc 1 131 0
 507 0222 FFF7FEFF 		bl	delay_500ns
 132:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	c = *portIdrHigh;
 508              		.loc 1 132 0
 509 0226 154A     		ldr	r2, .L32+8
 510 0228 0F23     		movs	r3, #15
 511 022a FB18     		adds	r3, r7, r3
 512 022c 1278     		ldrb	r2, [r2]
 513 022e 1A70     		strb	r2, [r3]
 133:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 514              		.loc 1 133 0
 515 0230 4020     		movs	r0, #64
 516 0232 FFF71FFF 		bl	graphic_ctrl_bit_clear
 134:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	*portModer = 0x55555555; // 15-0 outputs
 517              		.loc 1 134 0
 518 0236 0F4B     		ldr	r3, .L32
 519 0238 114A     		ldr	r2, .L32+12
 520 023a 1A60     		str	r2, [r3]
 135:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	if( controller & B_CS1 ) {
 521              		.loc 1 135 0
 522 023c FB1D     		adds	r3, r7, #7
 523 023e 1B78     		ldrb	r3, [r3]
 524 0240 0822     		movs	r2, #8
 525 0242 1340     		ands	r3, r2
 526 0244 04D0     		beq	.L29
 136:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS1);
 527              		.loc 1 136 0
 528 0246 0820     		movs	r0, #8
 529 0248 FFF740FF 		bl	select_controller
 137:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 530              		.loc 1 137 0
 531 024c FFF799FF 		bl	graphic_wait_ready
 532              	.L29:
 138:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 139:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	if( controller & B_CS2 ) {
 533              		.loc 1 139 0
 534 0250 FB1D     		adds	r3, r7, #7
 535 0252 1B78     		ldrb	r3, [r3]
 536 0254 1022     		movs	r2, #16
 537 0256 1340     		ands	r3, r2
 538 0258 04D0     		beq	.L30
 140:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		select_controller(B_CS2);
 539              		.loc 1 140 0
 540 025a 1020     		movs	r0, #16
 541 025c FFF736FF 		bl	select_controller
 141:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 542              		.loc 1 141 0
 543 0260 FFF78FFF 		bl	graphic_wait_ready
 544              	.L30:
 142:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 143:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** return c;
 545              		.loc 1 143 0
 546 0264 0F23     		movs	r3, #15
 547 0266 FB18     		adds	r3, r7, r3
 548 0268 1B78     		ldrb	r3, [r3]
 144:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 549              		.loc 1 144 0
 550 026a 1800     		movs	r0, r3
 551 026c BD46     		mov	sp, r7
 552 026e 04B0     		add	sp, sp, #16
 553              		@ sp needed
 554 0270 80BD     		pop	{r7, pc}
 555              	.L33:
 556 0272 C046     		.align	2
 557              	.L32:
 558 0274 00100240 		.word	1073876992
 559 0278 55550000 		.word	21845
 560 027c 11100240 		.word	1073877009
 561 0280 55555555 		.word	1431655765
 562              		.cfi_endproc
 563              	.LFE7:
 565              		.align	1
 566              		.syntax unified
 567              		.code	16
 568              		.thumb_func
 569              		.fpu softvfp
 571              	graphic_read_data:
 572              	.LFB8:
 145:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static uint8_t graphic_read_data(uint8_t controller) {
 573              		.loc 1 145 0
 574              		.cfi_startproc
 575              		@ args = 0, pretend = 0, frame = 8
 576              		@ frame_needed = 1, uses_anonymous_args = 0
 577 0284 80B5     		push	{r7, lr}
 578              		.cfi_def_cfa_offset 8
 579              		.cfi_offset 7, -8
 580              		.cfi_offset 14, -4
 581 0286 82B0     		sub	sp, sp, #8
 582              		.cfi_def_cfa_offset 16
 583 0288 00AF     		add	r7, sp, #0
 584              		.cfi_def_cfa_register 7
 585 028a 0200     		movs	r2, r0
 586 028c FB1D     		adds	r3, r7, #7
 587 028e 1A70     		strb	r2, [r3]
 146:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** graphic_read(controller);
 588              		.loc 1 146 0
 589 0290 FB1D     		adds	r3, r7, #7
 590 0292 1B78     		ldrb	r3, [r3]
 591 0294 1800     		movs	r0, r3
 592 0296 FFF7ABFF 		bl	graphic_read
 147:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** return graphic_read(controller);
 593              		.loc 1 147 0
 594 029a FB1D     		adds	r3, r7, #7
 595 029c 1B78     		ldrb	r3, [r3]
 596 029e 1800     		movs	r0, r3
 597 02a0 FFF7A6FF 		bl	graphic_read
 598 02a4 0300     		movs	r3, r0
 148:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 599              		.loc 1 148 0
 600 02a6 1800     		movs	r0, r3
 601 02a8 BD46     		mov	sp, r7
 602 02aa 02B0     		add	sp, sp, #8
 603              		@ sp needed
 604 02ac 80BD     		pop	{r7, pc}
 605              		.cfi_endproc
 606              	.LFE8:
 608              		.align	1
 609              		.syntax unified
 610              		.code	16
 611              		.thumb_func
 612              		.fpu softvfp
 614              	graphic_write:
 615              	.LFB9:
 149:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_write(uint8_t value, uint8_t controller) {
 616              		.loc 1 149 0
 617              		.cfi_startproc
 618              		@ args = 0, pretend = 0, frame = 8
 619              		@ frame_needed = 1, uses_anonymous_args = 0
 620 02ae 80B5     		push	{r7, lr}
 621              		.cfi_def_cfa_offset 8
 622              		.cfi_offset 7, -8
 623              		.cfi_offset 14, -4
 624 02b0 82B0     		sub	sp, sp, #8
 625              		.cfi_def_cfa_offset 16
 626 02b2 00AF     		add	r7, sp, #0
 627              		.cfi_def_cfa_register 7
 628 02b4 0200     		movs	r2, r0
 629 02b6 FB1D     		adds	r3, r7, #7
 630 02b8 1A70     		strb	r2, [r3]
 631 02ba BB1D     		adds	r3, r7, #6
 632 02bc 0A1C     		adds	r2, r1, #0
 633 02be 1A70     		strb	r2, [r3]
 150:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	*portOdrHigh = value;
 634              		.loc 1 150 0
 635 02c0 154A     		ldr	r2, .L40
 636 02c2 FB1D     		adds	r3, r7, #7
 637 02c4 1B78     		ldrb	r3, [r3]
 638 02c6 1370     		strb	r3, [r2]
 151:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 639              		.loc 1 151 0
 640 02c8 BB1D     		adds	r3, r7, #6
 641 02ca 1B78     		ldrb	r3, [r3]
 642 02cc 1800     		movs	r0, r3
 643 02ce FFF7FDFE 		bl	select_controller
 152:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 644              		.loc 1 152 0
 645 02d2 FFF7FEFF 		bl	delay_500ns
 153:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_E);
 646              		.loc 1 153 0
 647 02d6 4020     		movs	r0, #64
 648 02d8 FFF79EFE 		bl	graphic_ctrl_bit_set
 154:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_500ns();
 649              		.loc 1 154 0
 650 02dc FFF7FEFF 		bl	delay_500ns
 155:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear( B_E );
 651              		.loc 1 155 0
 652 02e0 4020     		movs	r0, #64
 653 02e2 FFF7C7FE 		bl	graphic_ctrl_bit_clear
 156:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	if(controller & B_CS1) {
 654              		.loc 1 156 0
 655 02e6 BB1D     		adds	r3, r7, #6
 656 02e8 1B78     		ldrb	r3, [r3]
 657 02ea 0822     		movs	r2, #8
 658 02ec 1340     		ands	r3, r2
 659 02ee 04D0     		beq	.L37
 157:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		select_controller( B_CS1);
 660              		.loc 1 157 0
 661 02f0 0820     		movs	r0, #8
 662 02f2 FFF7EBFE 		bl	select_controller
 158:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 663              		.loc 1 158 0
 664 02f6 FFF744FF 		bl	graphic_wait_ready
 665              	.L37:
 159:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 160:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	if(controller & B_CS2) {
 666              		.loc 1 160 0
 667 02fa BB1D     		adds	r3, r7, #6
 668 02fc 1B78     		ldrb	r3, [r3]
 669 02fe 1022     		movs	r2, #16
 670 0300 1340     		ands	r3, r2
 671 0302 04D0     		beq	.L39
 161:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		select_controller( B_CS2);
 672              		.loc 1 161 0
 673 0304 1020     		movs	r0, #16
 674 0306 FFF7E1FE 		bl	select_controller
 162:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_wait_ready();
 675              		.loc 1 162 0
 676 030a FFF73AFF 		bl	graphic_wait_ready
 677              	.L39:
 163:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 164:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 678              		.loc 1 164 0
 679 030e C046     		nop
 680 0310 BD46     		mov	sp, r7
 681 0312 02B0     		add	sp, sp, #8
 682              		@ sp needed
 683 0314 80BD     		pop	{r7, pc}
 684              	.L41:
 685 0316 C046     		.align	2
 686              	.L40:
 687 0318 15100240 		.word	1073877013
 688              		.cfi_endproc
 689              	.LFE9:
 691              		.align	1
 692              		.syntax unified
 693              		.code	16
 694              		.thumb_func
 695              		.fpu softvfp
 697              	graphic_write_command:
 698              	.LFB10:
 165:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 699              		.loc 1 165 0
 700              		.cfi_startproc
 701              		@ args = 0, pretend = 0, frame = 8
 702              		@ frame_needed = 1, uses_anonymous_args = 0
 703 031c 80B5     		push	{r7, lr}
 704              		.cfi_def_cfa_offset 8
 705              		.cfi_offset 7, -8
 706              		.cfi_offset 14, -4
 707 031e 82B0     		sub	sp, sp, #8
 708              		.cfi_def_cfa_offset 16
 709 0320 00AF     		add	r7, sp, #0
 710              		.cfi_def_cfa_register 7
 711 0322 0200     		movs	r2, r0
 712 0324 FB1D     		adds	r3, r7, #7
 713 0326 1A70     		strb	r2, [r3]
 714 0328 BB1D     		adds	r3, r7, #6
 715 032a 0A1C     		adds	r2, r1, #0
 716 032c 1A70     		strb	r2, [r3]
 166:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 717              		.loc 1 166 0
 718 032e 4020     		movs	r0, #64
 719 0330 FFF7A0FE 		bl	graphic_ctrl_bit_clear
 167:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 720              		.loc 1 167 0
 721 0334 BB1D     		adds	r3, r7, #6
 722 0336 1B78     		ldrb	r3, [r3]
 723 0338 1800     		movs	r0, r3
 724 033a FFF7C7FE 		bl	select_controller
 168:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RS|B_RW);
 725              		.loc 1 168 0
 726 033e 0320     		movs	r0, #3
 727 0340 FFF798FE 		bl	graphic_ctrl_bit_clear
 169:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_write(command, controller);
 728              		.loc 1 169 0
 729 0344 BB1D     		adds	r3, r7, #6
 730 0346 1A78     		ldrb	r2, [r3]
 731 0348 FB1D     		adds	r3, r7, #7
 732 034a 1B78     		ldrb	r3, [r3]
 733 034c 1100     		movs	r1, r2
 734 034e 1800     		movs	r0, r3
 735 0350 FFF7ADFF 		bl	graphic_write
 170:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 736              		.loc 1 170 0
 737 0354 C046     		nop
 738 0356 BD46     		mov	sp, r7
 739 0358 02B0     		add	sp, sp, #8
 740              		@ sp needed
 741 035a 80BD     		pop	{r7, pc}
 742              		.cfi_endproc
 743              	.LFE10:
 745              		.align	1
 746              		.syntax unified
 747              		.code	16
 748              		.thumb_func
 749              		.fpu softvfp
 751              	graphic_write_data:
 752              	.LFB11:
 171:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** static void graphic_write_data(uint8_t data, uint8_t controller) {
 753              		.loc 1 171 0
 754              		.cfi_startproc
 755              		@ args = 0, pretend = 0, frame = 8
 756              		@ frame_needed = 1, uses_anonymous_args = 0
 757 035c 80B5     		push	{r7, lr}
 758              		.cfi_def_cfa_offset 8
 759              		.cfi_offset 7, -8
 760              		.cfi_offset 14, -4
 761 035e 82B0     		sub	sp, sp, #8
 762              		.cfi_def_cfa_offset 16
 763 0360 00AF     		add	r7, sp, #0
 764              		.cfi_def_cfa_register 7
 765 0362 0200     		movs	r2, r0
 766 0364 FB1D     		adds	r3, r7, #7
 767 0366 1A70     		strb	r2, [r3]
 768 0368 BB1D     		adds	r3, r7, #6
 769 036a 0A1C     		adds	r2, r1, #0
 770 036c 1A70     		strb	r2, [r3]
 172:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_E);
 771              		.loc 1 172 0
 772 036e 4020     		movs	r0, #64
 773 0370 FFF780FE 		bl	graphic_ctrl_bit_clear
 173:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	select_controller(controller);
 774              		.loc 1 173 0
 775 0374 BB1D     		adds	r3, r7, #6
 776 0376 1B78     		ldrb	r3, [r3]
 777 0378 1800     		movs	r0, r3
 778 037a FFF7A7FE 		bl	select_controller
 174:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_set(B_RS);
 779              		.loc 1 174 0
 780 037e 0120     		movs	r0, #1
 781 0380 FFF74AFE 		bl	graphic_ctrl_bit_set
 175:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_ctrl_bit_clear(B_RW);
 782              		.loc 1 175 0
 783 0384 0220     		movs	r0, #2
 784 0386 FFF775FE 		bl	graphic_ctrl_bit_clear
 176:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_write(data, controller);
 785              		.loc 1 176 0
 786 038a BB1D     		adds	r3, r7, #6
 787 038c 1A78     		ldrb	r2, [r3]
 788 038e FB1D     		adds	r3, r7, #7
 789 0390 1B78     		ldrb	r3, [r3]
 790 0392 1100     		movs	r1, r2
 791 0394 1800     		movs	r0, r3
 792 0396 FFF78AFF 		bl	graphic_write
 177:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 793              		.loc 1 177 0
 794 039a C046     		nop
 795 039c BD46     		mov	sp, r7
 796 039e 02B0     		add	sp, sp, #8
 797              		@ sp needed
 798 03a0 80BD     		pop	{r7, pc}
 799              		.cfi_endproc
 800              	.LFE11:
 802              		.align	1
 803              		.global	graphic_clear_screen
 804              		.syntax unified
 805              		.code	16
 806              		.thumb_func
 807              		.fpu softvfp
 809              	graphic_clear_screen:
 810              	.LFB12:
 178:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void graphic_clear_screen(void) {
 811              		.loc 1 178 0
 812              		.cfi_startproc
 813              		@ args = 0, pretend = 0, frame = 8
 814              		@ frame_needed = 1, uses_anonymous_args = 0
 815 03a2 80B5     		push	{r7, lr}
 816              		.cfi_def_cfa_offset 8
 817              		.cfi_offset 7, -8
 818              		.cfi_offset 14, -4
 819 03a4 82B0     		sub	sp, sp, #8
 820              		.cfi_def_cfa_offset 16
 821 03a6 00AF     		add	r7, sp, #0
 822              		.cfi_def_cfa_register 7
 179:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	uint8_t i, j;
 180:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	for(j = 0; j < 8; j++) {
 823              		.loc 1 180 0
 824 03a8 BB1D     		adds	r3, r7, #6
 825 03aa 0022     		movs	r2, #0
 826 03ac 1A70     		strb	r2, [r3]
 827 03ae 23E0     		b	.L45
 828              	.L48:
 181:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 829              		.loc 1 181 0
 830 03b0 BB1D     		adds	r3, r7, #6
 831 03b2 1B78     		ldrb	r3, [r3]
 832 03b4 4822     		movs	r2, #72
 833 03b6 5242     		rsbs	r2, r2, #0
 834 03b8 1343     		orrs	r3, r2
 835 03ba DBB2     		uxtb	r3, r3
 836 03bc 1821     		movs	r1, #24
 837 03be 1800     		movs	r0, r3
 838 03c0 FFF7ACFF 		bl	graphic_write_command
 182:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 839              		.loc 1 182 0
 840 03c4 1821     		movs	r1, #24
 841 03c6 4020     		movs	r0, #64
 842 03c8 FFF7A8FF 		bl	graphic_write_command
 183:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		for(i = 0; i <= 63; i++){
 843              		.loc 1 183 0
 844 03cc FB1D     		adds	r3, r7, #7
 845 03ce 0022     		movs	r2, #0
 846 03d0 1A70     		strb	r2, [r3]
 847 03d2 08E0     		b	.L46
 848              	.L47:
 184:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			graphic_write_data(0, B_CS1|B_CS2);
 849              		.loc 1 184 0 discriminator 3
 850 03d4 1821     		movs	r1, #24
 851 03d6 0020     		movs	r0, #0
 852 03d8 FFF7C0FF 		bl	graphic_write_data
 183:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		for(i = 0; i <= 63; i++){
 853              		.loc 1 183 0 discriminator 3
 854 03dc FB1D     		adds	r3, r7, #7
 855 03de 1A78     		ldrb	r2, [r3]
 856 03e0 FB1D     		adds	r3, r7, #7
 857 03e2 0132     		adds	r2, r2, #1
 858 03e4 1A70     		strb	r2, [r3]
 859              	.L46:
 183:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		for(i = 0; i <= 63; i++){
 860              		.loc 1 183 0 is_stmt 0 discriminator 1
 861 03e6 FB1D     		adds	r3, r7, #7
 862 03e8 1B78     		ldrb	r3, [r3]
 863 03ea 3F2B     		cmp	r3, #63
 864 03ec F2D9     		bls	.L47
 180:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 865              		.loc 1 180 0 is_stmt 1 discriminator 2
 866 03ee BB1D     		adds	r3, r7, #6
 867 03f0 1A78     		ldrb	r2, [r3]
 868 03f2 BB1D     		adds	r3, r7, #6
 869 03f4 0132     		adds	r2, r2, #1
 870 03f6 1A70     		strb	r2, [r3]
 871              	.L45:
 180:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | j, B_CS1|B_CS2);
 872              		.loc 1 180 0 is_stmt 0 discriminator 1
 873 03f8 BB1D     		adds	r3, r7, #6
 874 03fa 1B78     		ldrb	r3, [r3]
 875 03fc 072B     		cmp	r3, #7
 876 03fe D7D9     		bls	.L48
 185:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		}
 186:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 187:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 877              		.loc 1 187 0 is_stmt 1
 878 0400 C046     		nop
 879 0402 BD46     		mov	sp, r7
 880 0404 02B0     		add	sp, sp, #8
 881              		@ sp needed
 882 0406 80BD     		pop	{r7, pc}
 883              		.cfi_endproc
 884              	.LFE12:
 886              		.align	1
 887              		.global	pixel
 888              		.syntax unified
 889              		.code	16
 890              		.thumb_func
 891              		.fpu softvfp
 893              	pixel:
 894              	.LFB13:
 188:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
 189:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void pixel(int x, int y, int set) {
 895              		.loc 1 189 0
 896              		.cfi_startproc
 897              		@ args = 0, pretend = 0, frame = 32
 898              		@ frame_needed = 1, uses_anonymous_args = 0
 899 0408 90B5     		push	{r4, r7, lr}
 900              		.cfi_def_cfa_offset 12
 901              		.cfi_offset 4, -12
 902              		.cfi_offset 7, -8
 903              		.cfi_offset 14, -4
 904 040a 89B0     		sub	sp, sp, #36
 905              		.cfi_def_cfa_offset 48
 906 040c 00AF     		add	r7, sp, #0
 907              		.cfi_def_cfa_register 7
 908 040e F860     		str	r0, [r7, #12]
 909 0410 B960     		str	r1, [r7, #8]
 910 0412 7A60     		str	r2, [r7, #4]
 190:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	uint8_t mask, c, controller;
 191:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	int index;
 192:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	if((x < 1) || (y < 1) || (x > 128) || (y > 64)) return;
 911              		.loc 1 192 0
 912 0414 FB68     		ldr	r3, [r7, #12]
 913 0416 002B     		cmp	r3, #0
 914 0418 00DC     		bgt	.LCB726
 915 041a BCE0     		b	.L70	@long jump
 916              	.LCB726:
 917              		.loc 1 192 0 is_stmt 0 discriminator 1
 918 041c BB68     		ldr	r3, [r7, #8]
 919 041e 002B     		cmp	r3, #0
 920 0420 00DC     		bgt	.LCB729
 921 0422 B8E0     		b	.L70	@long jump
 922              	.LCB729:
 923              		.loc 1 192 0 discriminator 2
 924 0424 FB68     		ldr	r3, [r7, #12]
 925 0426 802B     		cmp	r3, #128
 926 0428 00DD     		ble	.LCB732
 927 042a B4E0     		b	.L70	@long jump
 928              	.LCB732:
 929              		.loc 1 192 0 discriminator 3
 930 042c BB68     		ldr	r3, [r7, #8]
 931 042e 402B     		cmp	r3, #64
 932 0430 00DD     		ble	.LCB735
 933 0432 B0E0     		b	.L70	@long jump
 934              	.LCB735:
 193:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	index = (y-1)/8;
 935              		.loc 1 193 0 is_stmt 1
 936 0434 BB68     		ldr	r3, [r7, #8]
 937 0436 013B     		subs	r3, r3, #1
 938 0438 002B     		cmp	r3, #0
 939 043a 00DA     		bge	.L53
 940 043c 0733     		adds	r3, r3, #7
 941              	.L53:
 942 043e DB10     		asrs	r3, r3, #3
 943 0440 BB61     		str	r3, [r7, #24]
 194:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	switch( (y-1)%8 ) {
 944              		.loc 1 194 0
 945 0442 BB68     		ldr	r3, [r7, #8]
 946 0444 013B     		subs	r3, r3, #1
 947 0446 564A     		ldr	r2, .L71
 948 0448 1340     		ands	r3, r2
 949 044a 04D5     		bpl	.L54
 950 044c 013B     		subs	r3, r3, #1
 951 044e 0822     		movs	r2, #8
 952 0450 5242     		rsbs	r2, r2, #0
 953 0452 1343     		orrs	r3, r2
 954 0454 0133     		adds	r3, r3, #1
 955              	.L54:
 956 0456 072B     		cmp	r3, #7
 957 0458 2CD8     		bhi	.L55
 958 045a 9A00     		lsls	r2, r3, #2
 959 045c 514B     		ldr	r3, .L71+4
 960 045e D318     		adds	r3, r2, r3
 961 0460 1B68     		ldr	r3, [r3]
 962 0462 9F46     		mov	pc, r3
 963              		.section	.rodata
 964              		.align	2
 965              	.L57:
 966 0000 64040000 		.word	.L56
 967 0004 6E040000 		.word	.L58
 968 0008 78040000 		.word	.L59
 969 000c 82040000 		.word	.L60
 970 0010 8C040000 		.word	.L61
 971 0014 96040000 		.word	.L62
 972 0018 A0040000 		.word	.L63
 973 001c AA040000 		.word	.L64
 974              		.text
 975              	.L56:
 195:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 0: mask = 1; break;
 976              		.loc 1 195 0
 977 0464 1F23     		movs	r3, #31
 978 0466 FB18     		adds	r3, r7, r3
 979 0468 0122     		movs	r2, #1
 980 046a 1A70     		strb	r2, [r3]
 981 046c 22E0     		b	.L55
 982              	.L58:
 196:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 1: mask = 2; break;
 983              		.loc 1 196 0
 984 046e 1F23     		movs	r3, #31
 985 0470 FB18     		adds	r3, r7, r3
 986 0472 0222     		movs	r2, #2
 987 0474 1A70     		strb	r2, [r3]
 988 0476 1DE0     		b	.L55
 989              	.L59:
 197:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 2: mask = 4; break;
 990              		.loc 1 197 0
 991 0478 1F23     		movs	r3, #31
 992 047a FB18     		adds	r3, r7, r3
 993 047c 0422     		movs	r2, #4
 994 047e 1A70     		strb	r2, [r3]
 995 0480 18E0     		b	.L55
 996              	.L60:
 198:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 3: mask = 8; break;
 997              		.loc 1 198 0
 998 0482 1F23     		movs	r3, #31
 999 0484 FB18     		adds	r3, r7, r3
 1000 0486 0822     		movs	r2, #8
 1001 0488 1A70     		strb	r2, [r3]
 1002 048a 13E0     		b	.L55
 1003              	.L61:
 199:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 4: mask = 0x10; break;
 1004              		.loc 1 199 0
 1005 048c 1F23     		movs	r3, #31
 1006 048e FB18     		adds	r3, r7, r3
 1007 0490 1022     		movs	r2, #16
 1008 0492 1A70     		strb	r2, [r3]
 1009 0494 0EE0     		b	.L55
 1010              	.L62:
 200:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 5: mask = 0x20; break;
 1011              		.loc 1 200 0
 1012 0496 1F23     		movs	r3, #31
 1013 0498 FB18     		adds	r3, r7, r3
 1014 049a 2022     		movs	r2, #32
 1015 049c 1A70     		strb	r2, [r3]
 1016 049e 09E0     		b	.L55
 1017              	.L63:
 201:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 6: mask = 0x40; break;
 1018              		.loc 1 201 0
 1019 04a0 1F23     		movs	r3, #31
 1020 04a2 FB18     		adds	r3, r7, r3
 1021 04a4 4022     		movs	r2, #64
 1022 04a6 1A70     		strb	r2, [r3]
 1023 04a8 04E0     		b	.L55
 1024              	.L64:
 202:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		case 7: mask = 0x80; break;
 1025              		.loc 1 202 0
 1026 04aa 1F23     		movs	r3, #31
 1027 04ac FB18     		adds	r3, r7, r3
 1028 04ae 8022     		movs	r2, #128
 1029 04b0 1A70     		strb	r2, [r3]
 1030 04b2 C046     		nop
 1031              	.L55:
 203:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 204:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		if(set == 0)
 1032              		.loc 1 204 0
 1033 04b4 7B68     		ldr	r3, [r7, #4]
 1034 04b6 002B     		cmp	r3, #0
 1035 04b8 06D1     		bne	.L65
 205:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			mask = ~mask;
 1036              		.loc 1 205 0
 1037 04ba 1F23     		movs	r3, #31
 1038 04bc FB18     		adds	r3, r7, r3
 1039 04be 1F22     		movs	r2, #31
 1040 04c0 BA18     		adds	r2, r7, r2
 1041 04c2 1278     		ldrb	r2, [r2]
 1042 04c4 D243     		mvns	r2, r2
 1043 04c6 1A70     		strb	r2, [r3]
 1044              	.L65:
 206:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		if(x > 64){
 1045              		.loc 1 206 0
 1046 04c8 FB68     		ldr	r3, [r7, #12]
 1047 04ca 402B     		cmp	r3, #64
 1048 04cc 07DD     		ble	.L66
 207:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			controller = B_CS2;
 1049              		.loc 1 207 0
 1050 04ce 1E23     		movs	r3, #30
 1051 04d0 FB18     		adds	r3, r7, r3
 1052 04d2 1022     		movs	r2, #16
 1053 04d4 1A70     		strb	r2, [r3]
 208:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		x = x - 65;
 1054              		.loc 1 208 0
 1055 04d6 FB68     		ldr	r3, [r7, #12]
 1056 04d8 413B     		subs	r3, r3, #65
 1057 04da FB60     		str	r3, [r7, #12]
 1058 04dc 06E0     		b	.L67
 1059              	.L66:
 209:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		} 
 210:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		else {
 211:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		controller = B_CS1;
 1060              		.loc 1 211 0
 1061 04de 1E23     		movs	r3, #30
 1062 04e0 FB18     		adds	r3, r7, r3
 1063 04e2 0822     		movs	r2, #8
 1064 04e4 1A70     		strb	r2, [r3]
 212:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		x = x-1;
 1065              		.loc 1 212 0
 1066 04e6 FB68     		ldr	r3, [r7, #12]
 1067 04e8 013B     		subs	r3, r3, #1
 1068 04ea FB60     		str	r3, [r7, #12]
 1069              	.L67:
 213:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		}
 214:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD | x, controller );
 1070              		.loc 1 214 0
 1071 04ec FB68     		ldr	r3, [r7, #12]
 1072 04ee 5BB2     		sxtb	r3, r3
 1073 04f0 4022     		movs	r2, #64
 1074 04f2 1343     		orrs	r3, r2
 1075 04f4 5BB2     		sxtb	r3, r3
 1076 04f6 DAB2     		uxtb	r2, r3
 1077 04f8 1E23     		movs	r3, #30
 1078 04fa FB18     		adds	r3, r7, r3
 1079 04fc 1B78     		ldrb	r3, [r3]
 1080 04fe 1900     		movs	r1, r3
 1081 0500 1000     		movs	r0, r2
 1082 0502 FFF70BFF 		bl	graphic_write_command
 215:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_PAGE | index, controller );
 1083              		.loc 1 215 0
 1084 0506 BB69     		ldr	r3, [r7, #24]
 1085 0508 5BB2     		sxtb	r3, r3
 1086 050a 4822     		movs	r2, #72
 1087 050c 5242     		rsbs	r2, r2, #0
 1088 050e 1343     		orrs	r3, r2
 1089 0510 5BB2     		sxtb	r3, r3
 1090 0512 DAB2     		uxtb	r2, r3
 1091 0514 1E23     		movs	r3, #30
 1092 0516 FB18     		adds	r3, r7, r3
 1093 0518 1B78     		ldrb	r3, [r3]
 1094 051a 1900     		movs	r1, r3
 1095 051c 1000     		movs	r0, r2
 1096 051e FFF7FDFE 		bl	graphic_write_command
 216:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		c = graphic_read_data(controller);
 1097              		.loc 1 216 0
 1098 0522 1723     		movs	r3, #23
 1099 0524 FC18     		adds	r4, r7, r3
 1100 0526 1E23     		movs	r3, #30
 1101 0528 FB18     		adds	r3, r7, r3
 1102 052a 1B78     		ldrb	r3, [r3]
 1103 052c 1800     		movs	r0, r3
 1104 052e FFF7A9FE 		bl	graphic_read_data
 1105 0532 0300     		movs	r3, r0
 1106 0534 2370     		strb	r3, [r4]
 217:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_write_command(LCD_SET_ADD | x, controller);
 1107              		.loc 1 217 0
 1108 0536 FB68     		ldr	r3, [r7, #12]
 1109 0538 5BB2     		sxtb	r3, r3
 1110 053a 4022     		movs	r2, #64
 1111 053c 1343     		orrs	r3, r2
 1112 053e 5BB2     		sxtb	r3, r3
 1113 0540 DAB2     		uxtb	r2, r3
 1114 0542 1E23     		movs	r3, #30
 1115 0544 FB18     		adds	r3, r7, r3
 1116 0546 1B78     		ldrb	r3, [r3]
 1117 0548 1900     		movs	r1, r3
 1118 054a 1000     		movs	r0, r2
 1119 054c FFF7E6FE 		bl	graphic_write_command
 218:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		if(set)
 1120              		.loc 1 218 0
 1121 0550 7B68     		ldr	r3, [r7, #4]
 1122 0552 002B     		cmp	r3, #0
 1123 0554 0AD0     		beq	.L68
 219:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			mask = mask | c;
 1124              		.loc 1 219 0
 1125 0556 1F23     		movs	r3, #31
 1126 0558 FB18     		adds	r3, r7, r3
 1127 055a 1F22     		movs	r2, #31
 1128 055c B918     		adds	r1, r7, r2
 1129 055e 1722     		movs	r2, #23
 1130 0560 BA18     		adds	r2, r7, r2
 1131 0562 0978     		ldrb	r1, [r1]
 1132 0564 1278     		ldrb	r2, [r2]
 1133 0566 0A43     		orrs	r2, r1
 1134 0568 1A70     		strb	r2, [r3]
 1135 056a 09E0     		b	.L69
 1136              	.L68:
 220:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		else
 221:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 			mask = mask & c;
 1137              		.loc 1 221 0
 1138 056c 1F23     		movs	r3, #31
 1139 056e FB18     		adds	r3, r7, r3
 1140 0570 1F22     		movs	r2, #31
 1141 0572 BA18     		adds	r2, r7, r2
 1142 0574 1721     		movs	r1, #23
 1143 0576 7918     		adds	r1, r7, r1
 1144 0578 1278     		ldrb	r2, [r2]
 1145 057a 0978     		ldrb	r1, [r1]
 1146 057c 0A40     		ands	r2, r1
 1147 057e 1A70     		strb	r2, [r3]
 1148              	.L69:
 222:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_write_data(mask, controller);
 1149              		.loc 1 222 0
 1150 0580 1E23     		movs	r3, #30
 1151 0582 FB18     		adds	r3, r7, r3
 1152 0584 1A78     		ldrb	r2, [r3]
 1153 0586 1F23     		movs	r3, #31
 1154 0588 FB18     		adds	r3, r7, r3
 1155 058a 1B78     		ldrb	r3, [r3]
 1156 058c 1100     		movs	r1, r2
 1157 058e 1800     		movs	r0, r3
 1158 0590 FFF7E4FE 		bl	graphic_write_data
 1159 0594 00E0     		b	.L49
 1160              	.L70:
 192:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	index = (y-1)/8;
 1161              		.loc 1 192 0
 1162 0596 C046     		nop
 1163              	.L49:
 223:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 1164              		.loc 1 223 0
 1165 0598 BD46     		mov	sp, r7
 1166 059a 09B0     		add	sp, sp, #36
 1167              		@ sp needed
 1168 059c 90BD     		pop	{r4, r7, pc}
 1169              	.L72:
 1170 059e C046     		.align	2
 1171              	.L71:
 1172 05a0 07000080 		.word	-2147483641
 1173 05a4 00000000 		.word	.L57
 1174              		.cfi_endproc
 1175              	.LFE13:
 1177              		.align	1
 1178              		.global	delay_250ns
 1179              		.syntax unified
 1180              		.code	16
 1181              		.thumb_func
 1182              		.fpu softvfp
 1184              	delay_250ns:
 1185              	.LFB14:
 224:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
 225:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** //Delay funktioner
 226:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void delay_250ns ( void ) {
 1186              		.loc 1 226 0
 1187              		.cfi_startproc
 1188              		@ args = 0, pretend = 0, frame = 0
 1189              		@ frame_needed = 1, uses_anonymous_args = 0
 1190 05a8 80B5     		push	{r7, lr}
 1191              		.cfi_def_cfa_offset 8
 1192              		.cfi_offset 7, -8
 1193              		.cfi_offset 14, -4
 1194 05aa 00AF     		add	r7, sp, #0
 1195              		.cfi_def_cfa_register 7
 227:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		*STK_CTRL = 0x00;
 1196              		.loc 1 227 0
 1197 05ac 0C4B     		ldr	r3, .L75
 1198 05ae 0022     		movs	r2, #0
 1199 05b0 1A60     		str	r2, [r3]
 228:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		*STK_LOAD = ((168/4) - 1);
 1200              		.loc 1 228 0
 1201 05b2 0C4B     		ldr	r3, .L75+4
 1202 05b4 2922     		movs	r2, #41
 1203 05b6 1A60     		str	r2, [r3]
 229:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		*STK_VAL = 0;
 1204              		.loc 1 229 0
 1205 05b8 0B4B     		ldr	r3, .L75+8
 1206 05ba 0022     		movs	r2, #0
 1207 05bc 1A60     		str	r2, [r3]
 230:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		*STK_CTRL = 5;
 1208              		.loc 1 230 0
 1209 05be 084B     		ldr	r3, .L75
 1210 05c0 0522     		movs	r2, #5
 1211 05c2 1A60     		str	r2, [r3]
 231:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 1212              		.loc 1 231 0
 1213 05c4 C046     		nop
 1214              	.L74:
 1215              		.loc 1 231 0 is_stmt 0 discriminator 1
 1216 05c6 064B     		ldr	r3, .L75
 1217 05c8 1A68     		ldr	r2, [r3]
 1218 05ca 8023     		movs	r3, #128
 1219 05cc 5B02     		lsls	r3, r3, #9
 1220 05ce 1340     		ands	r3, r2
 1221 05d0 F9D0     		beq	.L74
 232:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		*STK_CTRL = 0;
 1222              		.loc 1 232 0 is_stmt 1
 1223 05d2 034B     		ldr	r3, .L75
 1224 05d4 0022     		movs	r2, #0
 1225 05d6 1A60     		str	r2, [r3]
 233:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 1226              		.loc 1 233 0
 1227 05d8 C046     		nop
 1228 05da BD46     		mov	sp, r7
 1229              		@ sp needed
 1230 05dc 80BD     		pop	{r7, pc}
 1231              	.L76:
 1232 05de C046     		.align	2
 1233              	.L75:
 1234 05e0 10E000E0 		.word	-536813552
 1235 05e4 14E000E0 		.word	-536813548
 1236 05e8 18E000E0 		.word	-536813544
 1237              		.cfi_endproc
 1238              	.LFE14:
 1240              		.align	1
 1241              		.global	delay_500ns
 1242              		.syntax unified
 1243              		.code	16
 1244              		.thumb_func
 1245              		.fpu softvfp
 1247              	delay_500ns:
 1248              	.LFB15:
 234:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void delay_500ns(void){
 1249              		.loc 1 234 0
 1250              		.cfi_startproc
 1251              		@ args = 0, pretend = 0, frame = 0
 1252              		@ frame_needed = 1, uses_anonymous_args = 0
 1253 05ec 80B5     		push	{r7, lr}
 1254              		.cfi_def_cfa_offset 8
 1255              		.cfi_offset 7, -8
 1256              		.cfi_offset 14, -4
 1257 05ee 00AF     		add	r7, sp, #0
 1258              		.cfi_def_cfa_register 7
 235:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_250ns();
 1259              		.loc 1 235 0
 1260 05f0 FFF7FEFF 		bl	delay_250ns
 236:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_250ns();
 1261              		.loc 1 236 0
 1262 05f4 FFF7FEFF 		bl	delay_250ns
 237:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 1263              		.loc 1 237 0
 1264 05f8 C046     		nop
 1265 05fa BD46     		mov	sp, r7
 1266              		@ sp needed
 1267 05fc 80BD     		pop	{r7, pc}
 1268              		.cfi_endproc
 1269              	.LFE15:
 1271              		.align	1
 1272              		.global	delay_mikro
 1273              		.syntax unified
 1274              		.code	16
 1275              		.thumb_func
 1276              		.fpu softvfp
 1278              	delay_mikro:
 1279              	.LFB16:
 238:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void delay_mikro (unsigned int us){
 1280              		.loc 1 238 0
 1281              		.cfi_startproc
 1282              		@ args = 0, pretend = 0, frame = 16
 1283              		@ frame_needed = 1, uses_anonymous_args = 0
 1284 05fe 80B5     		push	{r7, lr}
 1285              		.cfi_def_cfa_offset 8
 1286              		.cfi_offset 7, -8
 1287              		.cfi_offset 14, -4
 1288 0600 84B0     		sub	sp, sp, #16
 1289              		.cfi_def_cfa_offset 24
 1290 0602 00AF     		add	r7, sp, #0
 1291              		.cfi_def_cfa_register 7
 1292 0604 7860     		str	r0, [r7, #4]
 1293              	.LBB2:
 239:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	for (int i = 0; i < us; i++) {
 1294              		.loc 1 239 0
 1295 0606 0023     		movs	r3, #0
 1296 0608 FB60     		str	r3, [r7, #12]
 1297 060a 0AE0     		b	.L79
 1298              	.L80:
 240:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1299              		.loc 1 240 0 discriminator 3
 1300 060c FFF7FEFF 		bl	delay_250ns
 241:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1301              		.loc 1 241 0 discriminator 3
 1302 0610 FFF7FEFF 		bl	delay_250ns
 242:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1303              		.loc 1 242 0 discriminator 3
 1304 0614 FFF7FEFF 		bl	delay_250ns
 243:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1305              		.loc 1 243 0 discriminator 3
 1306 0618 FFF7FEFF 		bl	delay_250ns
 239:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1307              		.loc 1 239 0 discriminator 3
 1308 061c FB68     		ldr	r3, [r7, #12]
 1309 061e 0133     		adds	r3, r3, #1
 1310 0620 FB60     		str	r3, [r7, #12]
 1311              	.L79:
 239:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_250ns();
 1312              		.loc 1 239 0 is_stmt 0 discriminator 1
 1313 0622 FA68     		ldr	r2, [r7, #12]
 1314 0624 7B68     		ldr	r3, [r7, #4]
 1315 0626 9A42     		cmp	r2, r3
 1316 0628 F0D3     		bcc	.L80
 1317              	.LBE2:
 244:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		}
 245:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }	
 1318              		.loc 1 245 0 is_stmt 1
 1319 062a C046     		nop
 1320 062c BD46     		mov	sp, r7
 1321 062e 04B0     		add	sp, sp, #16
 1322              		@ sp needed
 1323 0630 80BD     		pop	{r7, pc}
 1324              		.cfi_endproc
 1325              	.LFE16:
 1327              		.global	__aeabi_uidiv
 1328              		.align	1
 1329              		.global	delay_milli
 1330              		.syntax unified
 1331              		.code	16
 1332              		.thumb_func
 1333              		.fpu softvfp
 1335              	delay_milli:
 1336              	.LFB17:
 246:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void delay_milli (unsigned int ms){
 1337              		.loc 1 246 0
 1338              		.cfi_startproc
 1339              		@ args = 0, pretend = 0, frame = 8
 1340              		@ frame_needed = 1, uses_anonymous_args = 0
 1341 0632 80B5     		push	{r7, lr}
 1342              		.cfi_def_cfa_offset 8
 1343              		.cfi_offset 7, -8
 1344              		.cfi_offset 14, -4
 1345 0634 82B0     		sub	sp, sp, #8
 1346              		.cfi_def_cfa_offset 16
 1347 0636 00AF     		add	r7, sp, #0
 1348              		.cfi_def_cfa_register 7
 1349 0638 7860     		str	r0, [r7, #4]
 247:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	#ifdef SIMULATOR
 248:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_mikro(ms/1000);
 1350              		.loc 1 248 0
 1351 063a 7A68     		ldr	r2, [r7, #4]
 1352 063c FA23     		movs	r3, #250
 1353 063e 9900     		lsls	r1, r3, #2
 1354 0640 1000     		movs	r0, r2
 1355 0642 FFF7FEFF 		bl	__aeabi_uidiv
 1356              	.LVL0:
 1357 0646 0300     		movs	r3, r0
 1358 0648 1800     		movs	r0, r3
 1359 064a FFF7FEFF 		bl	delay_mikro
 249:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	#else
 250:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		delay_mikro(ms * 1000);
 251:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	#endif
 252:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 1360              		.loc 1 252 0
 1361 064e C046     		nop
 1362 0650 BD46     		mov	sp, r7
 1363 0652 02B0     		add	sp, sp, #8
 1364              		@ sp needed
 1365 0654 80BD     		pop	{r7, pc}
 1366              		.cfi_endproc
 1367              	.LFE17:
 1369              		.align	1
 1370              		.global	main
 1371              		.syntax unified
 1372              		.code	16
 1373              		.thumb_func
 1374              		.fpu softvfp
 1376              	main:
 1377              	.LFB18:
 253:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
 254:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 
 255:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** void main(void){
 1378              		.loc 1 255 0
 1379              		.cfi_startproc
 1380              		@ args = 0, pretend = 0, frame = 8
 1381              		@ frame_needed = 1, uses_anonymous_args = 0
 1382 0656 80B5     		push	{r7, lr}
 1383              		.cfi_def_cfa_offset 8
 1384              		.cfi_offset 7, -8
 1385              		.cfi_offset 14, -4
 1386 0658 82B0     		sub	sp, sp, #8
 1387              		.cfi_def_cfa_offset 16
 1388 065a 00AF     		add	r7, sp, #0
 1389              		.cfi_def_cfa_register 7
 256:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	unsigned i;
 257:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	init_app();
 1390              		.loc 1 257 0
 1391 065c FFF7FEFF 		bl	init_app
 258:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	graphic_initialize();
 1392              		.loc 1 258 0
 1393 0660 FFF7FEFF 		bl	graphic_initialize
 259:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	#ifndef SIMULATOR
 260:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		graphic_clear_screen();
 261:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	#endif
 262:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 128; i++ ){
 1394              		.loc 1 262 0
 1395 0664 0023     		movs	r3, #0
 1396 0666 7B60     		str	r3, [r7, #4]
 1397 0668 08E0     		b	.L83
 1398              	.L84:
 263:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(i, 10, 1);
 1399              		.loc 1 263 0 discriminator 3
 1400 066a 7B68     		ldr	r3, [r7, #4]
 1401 066c 0122     		movs	r2, #1
 1402 066e 0A21     		movs	r1, #10
 1403 0670 1800     		movs	r0, r3
 1404 0672 FFF7FEFF 		bl	pixel
 262:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(i, 10, 1);
 1405              		.loc 1 262 0 discriminator 3
 1406 0676 7B68     		ldr	r3, [r7, #4]
 1407 0678 0133     		adds	r3, r3, #1
 1408 067a 7B60     		str	r3, [r7, #4]
 1409              	.L83:
 262:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(i, 10, 1);
 1410              		.loc 1 262 0 is_stmt 0 discriminator 1
 1411 067c 7B68     		ldr	r3, [r7, #4]
 1412 067e 7F2B     		cmp	r3, #127
 1413 0680 F3D9     		bls	.L84
 264:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 265:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 64; i++){
 1414              		.loc 1 265 0 is_stmt 1
 1415 0682 0023     		movs	r3, #0
 1416 0684 7B60     		str	r3, [r7, #4]
 1417 0686 08E0     		b	.L85
 1418              	.L86:
 266:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 1);
 1419              		.loc 1 266 0 discriminator 3
 1420 0688 7B68     		ldr	r3, [r7, #4]
 1421 068a 0122     		movs	r2, #1
 1422 068c 1900     		movs	r1, r3
 1423 068e 0A20     		movs	r0, #10
 1424 0690 FFF7FEFF 		bl	pixel
 265:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 1);
 1425              		.loc 1 265 0 discriminator 3
 1426 0694 7B68     		ldr	r3, [r7, #4]
 1427 0696 0133     		adds	r3, r3, #1
 1428 0698 7B60     		str	r3, [r7, #4]
 1429              	.L85:
 265:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 1);
 1430              		.loc 1 265 0 is_stmt 0 discriminator 1
 1431 069a 7B68     		ldr	r3, [r7, #4]
 1432 069c 3F2B     		cmp	r3, #63
 1433 069e F3D9     		bls	.L86
 267:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 268:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	delay_milli(500);
 1434              		.loc 1 268 0 is_stmt 1
 1435 06a0 FA23     		movs	r3, #250
 1436 06a2 5B00     		lsls	r3, r3, #1
 1437 06a4 1800     		movs	r0, r3
 1438 06a6 FFF7FEFF 		bl	delay_milli
 269:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 128; i++){
 1439              		.loc 1 269 0
 1440 06aa 0023     		movs	r3, #0
 1441 06ac 7B60     		str	r3, [r7, #4]
 1442 06ae 08E0     		b	.L87
 1443              	.L88:
 270:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(i, 10, 0);
 1444              		.loc 1 270 0 discriminator 3
 1445 06b0 7B68     		ldr	r3, [r7, #4]
 1446 06b2 0022     		movs	r2, #0
 1447 06b4 0A21     		movs	r1, #10
 1448 06b6 1800     		movs	r0, r3
 1449 06b8 FFF7FEFF 		bl	pixel
 269:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 128; i++){
 1450              		.loc 1 269 0 discriminator 3
 1451 06bc 7B68     		ldr	r3, [r7, #4]
 1452 06be 0133     		adds	r3, r3, #1
 1453 06c0 7B60     		str	r3, [r7, #4]
 1454              	.L87:
 269:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 128; i++){
 1455              		.loc 1 269 0 is_stmt 0 discriminator 1
 1456 06c2 7B68     		ldr	r3, [r7, #4]
 1457 06c4 7F2B     		cmp	r3, #127
 1458 06c6 F3D9     		bls	.L88
 271:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 272:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	for(i = 0; i < 64; i++){
 1459              		.loc 1 272 0 is_stmt 1
 1460 06c8 0023     		movs	r3, #0
 1461 06ca 7B60     		str	r3, [r7, #4]
 1462 06cc 08E0     		b	.L89
 1463              	.L90:
 273:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 0);
 1464              		.loc 1 273 0 discriminator 3
 1465 06ce 7B68     		ldr	r3, [r7, #4]
 1466 06d0 0022     		movs	r2, #0
 1467 06d2 1900     		movs	r1, r3
 1468 06d4 0A20     		movs	r0, #10
 1469 06d6 FFF7FEFF 		bl	pixel
 272:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 0);
 1470              		.loc 1 272 0 discriminator 3
 1471 06da 7B68     		ldr	r3, [r7, #4]
 1472 06dc 0133     		adds	r3, r3, #1
 1473 06de 7B60     		str	r3, [r7, #4]
 1474              	.L89:
 272:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 		pixel(10, i, 0);
 1475              		.loc 1 272 0 is_stmt 0 discriminator 1
 1476 06e0 7B68     		ldr	r3, [r7, #4]
 1477 06e2 3F2B     		cmp	r3, #63
 1478 06e4 F3D9     		bls	.L90
 274:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** 	}
 275:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/graphicdisplay\graphicdisplay.c **** }
 1479              		.loc 1 275 0 is_stmt 1
 1480 06e6 C046     		nop
 1481 06e8 BD46     		mov	sp, r7
 1482 06ea 02B0     		add	sp, sp, #8
 1483              		@ sp needed
 1484 06ec 80BD     		pop	{r7, pc}
 1485              		.cfi_endproc
 1486              	.LFE18:
 1488              	.Letext0:
