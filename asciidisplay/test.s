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
  11              		.file	"asciidisplay.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void startup ( void )
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asci
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	" MOV SP,R0\n"
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	) ;
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
  40              		.loc 1 15 0
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
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_BASE 0x40021000
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_MODER ((volatile unsigned int*) PORT_BASE) 
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_OTYPER ((volatile unsigned short*) PORT_BASE + 0x4)
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_Ospeedr ((volatile unsigned int*)PORT_BASE+0x8) 
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_PUDR ((volatile unsigned int*) PORT_BASE + 0xC)
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_IDR_HIGH ((volatile unsigned char*)  PORT_BASE + 0x11)
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_IDR_LOW  ((volatile unsigned char*) PORT_BASE + 0x10)
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_ODR_HIGH ((volatile unsigned char*) PORT_BASE + 0x15)
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define PORT_ODR_LOW ((volatile unsigned char*) PORT_BASE + 0x14)
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define SysTick 0xE000E010
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define B_E 0x40
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define B_SELECT 4
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define B_RW 2
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** #define B_RS 1	
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** unsigned char ascii_read_status(void);
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_write_CMD(unsigned char command);
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void init_app(void){ 
  57              		.loc 1 42 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	*PORT_MODER = 0x55555555;
  67              		.loc 1 43 0
  68 0004 024B     		ldr	r3, .L3
  69 0006 034A     		ldr	r2, .L3+4
  70 0008 1A60     		str	r2, [r3]
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }	
  71              		.loc 1 44 0
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
  85              		.global	ascii_init
  86              		.syntax unified
  87              		.code	16
  88              		.thumb_func
  89              		.fpu softvfp
  91              	ascii_init:
  92              	.LFB2:
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_init(void){
  93              		.loc 1 45 0
  94              		.cfi_startproc
  95              		@ args = 0, pretend = 0, frame = 0
  96              		@ frame_needed = 1, uses_anonymous_args = 0
  97 0018 80B5     		push	{r7, lr}
  98              		.cfi_def_cfa_offset 8
  99              		.cfi_offset 7, -8
 100              		.cfi_offset 14, -4
 101 001a 00AF     		add	r7, sp, #0
 102              		.cfi_def_cfa_register 7
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 103              		.loc 1 46 0
 104 001c C046     		nop
 105              	.L6:
 106              		.loc 1 46 0 is_stmt 0 discriminator 1
 107 001e FFF7FEFF 		bl	ascii_read_status
 108 0022 0300     		movs	r3, r0
 109 0024 1A00     		movs	r2, r3
 110 0026 8023     		movs	r3, #128
 111 0028 1340     		ands	r3, r2
 112 002a 802B     		cmp	r3, #128
 113 002c F7D0     		beq	.L6
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_mikro(8);
 114              		.loc 1 47 0 is_stmt 1
 115 002e 0820     		movs	r0, #8
 116 0030 FFF7FEFF 		bl	delay_mikro
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		ascii_write_CMD(0x38);
 117              		.loc 1 48 0
 118 0034 3820     		movs	r0, #56
 119 0036 FFF7FEFF 		bl	ascii_write_CMD
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_mikro(39);
 120              		.loc 1 49 0
 121 003a 2720     		movs	r0, #39
 122 003c FFF7FEFF 		bl	delay_mikro
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		ascii_write_CMD(0x0E);
 123              		.loc 1 50 0
 124 0040 0E20     		movs	r0, #14
 125 0042 FFF7FEFF 		bl	ascii_write_CMD
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_mikro(39);
 126              		.loc 1 51 0
 127 0046 2720     		movs	r0, #39
 128 0048 FFF7FEFF 		bl	delay_mikro
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		ascii_write_CMD(0x06);
 129              		.loc 1 52 0
 130 004c 0620     		movs	r0, #6
 131 004e FFF7FEFF 		bl	ascii_write_CMD
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_mikro(39);
 132              		.loc 1 53 0
 133 0052 2720     		movs	r0, #39
 134 0054 FFF7FEFF 		bl	delay_mikro
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 135              		.loc 1 54 0
 136 0058 C046     		nop
 137 005a BD46     		mov	sp, r7
 138              		@ sp needed
 139 005c 80BD     		pop	{r7, pc}
 140              		.cfi_endproc
 141              	.LFE2:
 143              		.align	1
 144              		.global	ascii_gotoxy
 145              		.syntax unified
 146              		.code	16
 147              		.thumb_func
 148              		.fpu softvfp
 150              	ascii_gotoxy:
 151              	.LFB3:
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_gotoxy(int x, int y){
 152              		.loc 1 55 0
 153              		.cfi_startproc
 154              		@ args = 0, pretend = 0, frame = 16
 155              		@ frame_needed = 1, uses_anonymous_args = 0
 156 005e 80B5     		push	{r7, lr}
 157              		.cfi_def_cfa_offset 8
 158              		.cfi_offset 7, -8
 159              		.cfi_offset 14, -4
 160 0060 84B0     		sub	sp, sp, #16
 161              		.cfi_def_cfa_offset 24
 162 0062 00AF     		add	r7, sp, #0
 163              		.cfi_def_cfa_register 7
 164 0064 7860     		str	r0, [r7, #4]
 165 0066 3960     		str	r1, [r7]
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	int address = x - 1;
 166              		.loc 1 56 0
 167 0068 7B68     		ldr	r3, [r7, #4]
 168 006a 013B     		subs	r3, r3, #1
 169 006c FB60     		str	r3, [r7, #12]
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	if(y == 2){
 170              		.loc 1 57 0
 171 006e 3B68     		ldr	r3, [r7]
 172 0070 022B     		cmp	r3, #2
 173 0072 02D1     		bne	.L8
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		address = address + 0x40;
 174              		.loc 1 58 0
 175 0074 FB68     		ldr	r3, [r7, #12]
 176 0076 4033     		adds	r3, r3, #64
 177 0078 FB60     		str	r3, [r7, #12]
 178              	.L8:
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	}
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_write_CMD(0x80 | address);
 179              		.loc 1 60 0
 180 007a FB68     		ldr	r3, [r7, #12]
 181 007c 5BB2     		sxtb	r3, r3
 182 007e 8022     		movs	r2, #128
 183 0080 5242     		rsbs	r2, r2, #0
 184 0082 1343     		orrs	r3, r2
 185 0084 5BB2     		sxtb	r3, r3
 186 0086 DBB2     		uxtb	r3, r3
 187 0088 1800     		movs	r0, r3
 188 008a FFF7FEFF 		bl	ascii_write_CMD
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 189              		.loc 1 61 0
 190 008e C046     		nop
 191 0090 BD46     		mov	sp, r7
 192 0092 04B0     		add	sp, sp, #16
 193              		@ sp needed
 194 0094 80BD     		pop	{r7, pc}
 195              		.cfi_endproc
 196              	.LFE3:
 198              		.align	1
 199              		.global	ascii_write_char
 200              		.syntax unified
 201              		.code	16
 202              		.thumb_func
 203              		.fpu softvfp
 205              	ascii_write_char:
 206              	.LFB4:
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_write_char(unsigned char c){
 207              		.loc 1 62 0
 208              		.cfi_startproc
 209              		@ args = 0, pretend = 0, frame = 8
 210              		@ frame_needed = 1, uses_anonymous_args = 0
 211 0096 80B5     		push	{r7, lr}
 212              		.cfi_def_cfa_offset 8
 213              		.cfi_offset 7, -8
 214              		.cfi_offset 14, -4
 215 0098 82B0     		sub	sp, sp, #8
 216              		.cfi_def_cfa_offset 16
 217 009a 00AF     		add	r7, sp, #0
 218              		.cfi_def_cfa_register 7
 219 009c 0200     		movs	r2, r0
 220 009e FB1D     		adds	r3, r7, #7
 221 00a0 1A70     		strb	r2, [r3]
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	while((ascii_read_status() & 0x80) == 0x80){}
 222              		.loc 1 63 0
 223 00a2 C046     		nop
 224              	.L10:
 225              		.loc 1 63 0 is_stmt 0 discriminator 1
 226 00a4 FFF7FEFF 		bl	ascii_read_status
 227 00a8 0300     		movs	r3, r0
 228 00aa 1A00     		movs	r2, r3
 229 00ac 8023     		movs	r3, #128
 230 00ae 1340     		ands	r3, r2
 231 00b0 802B     		cmp	r3, #128
 232 00b2 F7D0     		beq	.L10
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	delay_mikro(8);
 233              		.loc 1 64 0 is_stmt 1
 234 00b4 0820     		movs	r0, #8
 235 00b6 FFF7FEFF 		bl	delay_mikro
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_write_data(c);
 236              		.loc 1 65 0
 237 00ba FB1D     		adds	r3, r7, #7
 238 00bc 1B78     		ldrb	r3, [r3]
 239 00be 1800     		movs	r0, r3
 240 00c0 FFF7FEFF 		bl	ascii_write_data
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	delay_mikro(43);
 241              		.loc 1 66 0
 242 00c4 2B20     		movs	r0, #43
 243 00c6 FFF7FEFF 		bl	delay_mikro
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 244              		.loc 1 67 0
 245 00ca C046     		nop
 246 00cc BD46     		mov	sp, r7
 247 00ce 02B0     		add	sp, sp, #8
 248              		@ sp needed
 249 00d0 80BD     		pop	{r7, pc}
 250              		.cfi_endproc
 251              	.LFE4:
 253              		.align	1
 254              		.global	ascii_ctrl_bit_set
 255              		.syntax unified
 256              		.code	16
 257              		.thumb_func
 258              		.fpu softvfp
 260              	ascii_ctrl_bit_set:
 261              	.LFB5:
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_ctrl_bit_set( unsigned char x ){ /* Funktion för att 1-ställa bitar */
 262              		.loc 1 70 0
 263              		.cfi_startproc
 264              		@ args = 0, pretend = 0, frame = 16
 265              		@ frame_needed = 1, uses_anonymous_args = 0
 266 00d2 80B5     		push	{r7, lr}
 267              		.cfi_def_cfa_offset 8
 268              		.cfi_offset 7, -8
 269              		.cfi_offset 14, -4
 270 00d4 84B0     		sub	sp, sp, #16
 271              		.cfi_def_cfa_offset 24
 272 00d6 00AF     		add	r7, sp, #0
 273              		.cfi_def_cfa_register 7
 274 00d8 0200     		movs	r2, r0
 275 00da FB1D     		adds	r3, r7, #7
 276 00dc 1A70     		strb	r2, [r3]
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	unsigned char c;
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	c = *PORT_ODR_LOW;
 277              		.loc 1 72 0
 278 00de 0D4A     		ldr	r2, .L12
 279 00e0 0F23     		movs	r3, #15
 280 00e2 FB18     		adds	r3, r7, r3
 281 00e4 1278     		ldrb	r2, [r2]
 282 00e6 1A70     		strb	r2, [r3]
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	c |= ( B_SELECT | x );
 283              		.loc 1 73 0
 284 00e8 FA1D     		adds	r2, r7, #7
 285 00ea 0F23     		movs	r3, #15
 286 00ec FB18     		adds	r3, r7, r3
 287 00ee 1278     		ldrb	r2, [r2]
 288 00f0 1B78     		ldrb	r3, [r3]
 289 00f2 1343     		orrs	r3, r2
 290 00f4 DAB2     		uxtb	r2, r3
 291 00f6 0F23     		movs	r3, #15
 292 00f8 FB18     		adds	r3, r7, r3
 293 00fa 0421     		movs	r1, #4
 294 00fc 0A43     		orrs	r2, r1
 295 00fe 1A70     		strb	r2, [r3]
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	*PORT_ODR_LOW = c;
 296              		.loc 1 74 0
 297 0100 044A     		ldr	r2, .L12
 298 0102 0F23     		movs	r3, #15
 299 0104 FB18     		adds	r3, r7, r3
 300 0106 1B78     		ldrb	r3, [r3]
 301 0108 1370     		strb	r3, [r2]
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 302              		.loc 1 75 0
 303 010a C046     		nop
 304 010c BD46     		mov	sp, r7
 305 010e 04B0     		add	sp, sp, #16
 306              		@ sp needed
 307 0110 80BD     		pop	{r7, pc}
 308              	.L13:
 309 0112 C046     		.align	2
 310              	.L12:
 311 0114 14100240 		.word	1073877012
 312              		.cfi_endproc
 313              	.LFE5:
 315              		.align	1
 316              		.global	ascii_ctrl_bit_clear
 317              		.syntax unified
 318              		.code	16
 319              		.thumb_func
 320              		.fpu softvfp
 322              	ascii_ctrl_bit_clear:
 323              	.LFB6:
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_ctrl_bit_clear( unsigned char x ){
 324              		.loc 1 76 0
 325              		.cfi_startproc
 326              		@ args = 0, pretend = 0, frame = 16
 327              		@ frame_needed = 1, uses_anonymous_args = 0
 328 0118 80B5     		push	{r7, lr}
 329              		.cfi_def_cfa_offset 8
 330              		.cfi_offset 7, -8
 331              		.cfi_offset 14, -4
 332 011a 84B0     		sub	sp, sp, #16
 333              		.cfi_def_cfa_offset 24
 334 011c 00AF     		add	r7, sp, #0
 335              		.cfi_def_cfa_register 7
 336 011e 0200     		movs	r2, r0
 337 0120 FB1D     		adds	r3, r7, #7
 338 0122 1A70     		strb	r2, [r3]
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	unsigned char c;
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	c = *PORT_ODR_LOW;
 339              		.loc 1 78 0
 340 0124 0F4A     		ldr	r2, .L15
 341 0126 0F23     		movs	r3, #15
 342 0128 FB18     		adds	r3, r7, r3
 343 012a 1278     		ldrb	r2, [r2]
 344 012c 1A70     		strb	r2, [r3]
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	c = B_SELECT | ( c & ~x );
 345              		.loc 1 79 0
 346 012e FB1D     		adds	r3, r7, #7
 347 0130 1B78     		ldrb	r3, [r3]
 348 0132 5BB2     		sxtb	r3, r3
 349 0134 DB43     		mvns	r3, r3
 350 0136 5BB2     		sxtb	r3, r3
 351 0138 0F22     		movs	r2, #15
 352 013a BA18     		adds	r2, r7, r2
 353 013c 1278     		ldrb	r2, [r2]
 354 013e 52B2     		sxtb	r2, r2
 355 0140 1340     		ands	r3, r2
 356 0142 5BB2     		sxtb	r3, r3
 357 0144 0422     		movs	r2, #4
 358 0146 1343     		orrs	r3, r2
 359 0148 5AB2     		sxtb	r2, r3
 360 014a 0F23     		movs	r3, #15
 361 014c FB18     		adds	r3, r7, r3
 362 014e 1A70     		strb	r2, [r3]
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	*PORT_ODR_LOW = c;
 363              		.loc 1 80 0
 364 0150 044A     		ldr	r2, .L15
 365 0152 0F23     		movs	r3, #15
 366 0154 FB18     		adds	r3, r7, r3
 367 0156 1B78     		ldrb	r3, [r3]
 368 0158 1370     		strb	r3, [r2]
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** } 
 369              		.loc 1 81 0
 370 015a C046     		nop
 371 015c BD46     		mov	sp, r7
 372 015e 04B0     		add	sp, sp, #16
 373              		@ sp needed
 374 0160 80BD     		pop	{r7, pc}
 375              	.L16:
 376 0162 C046     		.align	2
 377              	.L15:
 378 0164 14100240 		.word	1073877012
 379              		.cfi_endproc
 380              	.LFE6:
 382              		.align	1
 383              		.global	ascii_write_controller
 384              		.syntax unified
 385              		.code	16
 386              		.thumb_func
 387              		.fpu softvfp
 389              	ascii_write_controller:
 390              	.LFB7:
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
  83:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_write_controller(unsigned char c){
 391              		.loc 1 83 0
 392              		.cfi_startproc
 393              		@ args = 0, pretend = 0, frame = 8
 394              		@ frame_needed = 1, uses_anonymous_args = 0
 395 0168 80B5     		push	{r7, lr}
 396              		.cfi_def_cfa_offset 8
 397              		.cfi_offset 7, -8
 398              		.cfi_offset 14, -4
 399 016a 82B0     		sub	sp, sp, #8
 400              		.cfi_def_cfa_offset 16
 401 016c 00AF     		add	r7, sp, #0
 402              		.cfi_def_cfa_register 7
 403 016e 0200     		movs	r2, r0
 404 0170 FB1D     		adds	r3, r7, #7
 405 0172 1A70     		strb	r2, [r3]
  84:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_E);
 406              		.loc 1 84 0
 407 0174 4020     		movs	r0, #64
 408 0176 FFF7FEFF 		bl	ascii_ctrl_bit_set
  85:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	*PORT_ODR_HIGH = c;
 409              		.loc 1 85 0
 410 017a 064A     		ldr	r2, .L18
 411 017c FB1D     		adds	r3, r7, #7
 412 017e 1B78     		ldrb	r3, [r3]
 413 0180 1370     		strb	r3, [r2]
  86:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	delay_250ns();
 414              		.loc 1 86 0
 415 0182 FFF7FEFF 		bl	delay_250ns
  87:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_E);
 416              		.loc 1 87 0
 417 0186 4020     		movs	r0, #64
 418 0188 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  88:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 419              		.loc 1 88 0
 420 018c C046     		nop
 421 018e BD46     		mov	sp, r7
 422 0190 02B0     		add	sp, sp, #8
 423              		@ sp needed
 424 0192 80BD     		pop	{r7, pc}
 425              	.L19:
 426              		.align	2
 427              	.L18:
 428 0194 15100240 		.word	1073877013
 429              		.cfi_endproc
 430              	.LFE7:
 432              		.align	1
 433              		.global	ascii_write_CMD
 434              		.syntax unified
 435              		.code	16
 436              		.thumb_func
 437              		.fpu softvfp
 439              	ascii_write_CMD:
 440              	.LFB8:
  89:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_write_CMD(unsigned char command){
 441              		.loc 1 89 0
 442              		.cfi_startproc
 443              		@ args = 0, pretend = 0, frame = 8
 444              		@ frame_needed = 1, uses_anonymous_args = 0
 445 0198 80B5     		push	{r7, lr}
 446              		.cfi_def_cfa_offset 8
 447              		.cfi_offset 7, -8
 448              		.cfi_offset 14, -4
 449 019a 82B0     		sub	sp, sp, #8
 450              		.cfi_def_cfa_offset 16
 451 019c 00AF     		add	r7, sp, #0
 452              		.cfi_def_cfa_register 7
 453 019e 0200     		movs	r2, r0
 454 01a0 FB1D     		adds	r3, r7, #7
 455 01a2 1A70     		strb	r2, [r3]
  90:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RS);
 456              		.loc 1 90 0
 457 01a4 0120     		movs	r0, #1
 458 01a6 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  91:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RW);
 459              		.loc 1 91 0
 460 01aa 0220     		movs	r0, #2
 461 01ac FFF7FEFF 		bl	ascii_ctrl_bit_clear
  92:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_write_controller(command);
 462              		.loc 1 92 0
 463 01b0 FB1D     		adds	r3, r7, #7
 464 01b2 1B78     		ldrb	r3, [r3]
 465 01b4 1800     		movs	r0, r3
 466 01b6 FFF7FEFF 		bl	ascii_write_controller
  93:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 467              		.loc 1 93 0
 468 01ba C046     		nop
 469 01bc BD46     		mov	sp, r7
 470 01be 02B0     		add	sp, sp, #8
 471              		@ sp needed
 472 01c0 80BD     		pop	{r7, pc}
 473              		.cfi_endproc
 474              	.LFE8:
 476              		.align	1
 477              		.global	ascii_write_data
 478              		.syntax unified
 479              		.code	16
 480              		.thumb_func
 481              		.fpu softvfp
 483              	ascii_write_data:
 484              	.LFB9:
  94:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void ascii_write_data(unsigned char data){
 485              		.loc 1 94 0
 486              		.cfi_startproc
 487              		@ args = 0, pretend = 0, frame = 8
 488              		@ frame_needed = 1, uses_anonymous_args = 0
 489 01c2 80B5     		push	{r7, lr}
 490              		.cfi_def_cfa_offset 8
 491              		.cfi_offset 7, -8
 492              		.cfi_offset 14, -4
 493 01c4 82B0     		sub	sp, sp, #8
 494              		.cfi_def_cfa_offset 16
 495 01c6 00AF     		add	r7, sp, #0
 496              		.cfi_def_cfa_register 7
 497 01c8 0200     		movs	r2, r0
 498 01ca FB1D     		adds	r3, r7, #7
 499 01cc 1A70     		strb	r2, [r3]
  95:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_RS);
 500              		.loc 1 95 0
 501 01ce 0120     		movs	r0, #1
 502 01d0 FFF7FEFF 		bl	ascii_ctrl_bit_set
  96:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RW);
 503              		.loc 1 96 0
 504 01d4 0220     		movs	r0, #2
 505 01d6 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  97:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_write_controller(data);
 506              		.loc 1 97 0
 507 01da FB1D     		adds	r3, r7, #7
 508 01dc 1B78     		ldrb	r3, [r3]
 509 01de 1800     		movs	r0, r3
 510 01e0 FFF7FEFF 		bl	ascii_write_controller
  98:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 511              		.loc 1 98 0
 512 01e4 C046     		nop
 513 01e6 BD46     		mov	sp, r7
 514 01e8 02B0     		add	sp, sp, #8
 515              		@ sp needed
 516 01ea 80BD     		pop	{r7, pc}
 517              		.cfi_endproc
 518              	.LFE9:
 520              		.align	1
 521              		.global	ascii_read_controller
 522              		.syntax unified
 523              		.code	16
 524              		.thumb_func
 525              		.fpu softvfp
 527              	ascii_read_controller:
 528              	.LFB10:
  99:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** unsigned char ascii_read_controller(void){
 529              		.loc 1 99 0
 530              		.cfi_startproc
 531              		@ args = 0, pretend = 0, frame = 8
 532              		@ frame_needed = 1, uses_anonymous_args = 0
 533 01ec 80B5     		push	{r7, lr}
 534              		.cfi_def_cfa_offset 8
 535              		.cfi_offset 7, -8
 536              		.cfi_offset 14, -4
 537 01ee 82B0     		sub	sp, sp, #8
 538              		.cfi_def_cfa_offset 16
 539 01f0 00AF     		add	r7, sp, #0
 540              		.cfi_def_cfa_register 7
 100:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_E);
 541              		.loc 1 100 0
 542 01f2 4020     		movs	r0, #64
 543 01f4 FFF7FEFF 		bl	ascii_ctrl_bit_set
 101:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	delay_250ns();
 544              		.loc 1 101 0
 545 01f8 FFF7FEFF 		bl	delay_250ns
 102:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	delay_250ns();
 546              		.loc 1 102 0
 547 01fc FFF7FEFF 		bl	delay_250ns
 103:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	unsigned char r = *PORT_IDR_HIGH;
 548              		.loc 1 103 0
 549 0200 064A     		ldr	r2, .L24
 550 0202 FB1D     		adds	r3, r7, #7
 551 0204 1278     		ldrb	r2, [r2]
 552 0206 1A70     		strb	r2, [r3]
 104:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_E);
 553              		.loc 1 104 0
 554 0208 4020     		movs	r0, #64
 555 020a FFF7FEFF 		bl	ascii_ctrl_bit_clear
 105:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	return r;
 556              		.loc 1 105 0
 557 020e FB1D     		adds	r3, r7, #7
 558 0210 1B78     		ldrb	r3, [r3]
 106:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 559              		.loc 1 106 0
 560 0212 1800     		movs	r0, r3
 561 0214 BD46     		mov	sp, r7
 562 0216 02B0     		add	sp, sp, #8
 563              		@ sp needed
 564 0218 80BD     		pop	{r7, pc}
 565              	.L25:
 566 021a C046     		.align	2
 567              	.L24:
 568 021c 11100240 		.word	1073877009
 569              		.cfi_endproc
 570              	.LFE10:
 572              		.align	1
 573              		.global	ascii_read_status
 574              		.syntax unified
 575              		.code	16
 576              		.thumb_func
 577              		.fpu softvfp
 579              	ascii_read_status:
 580              	.LFB11:
 107:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** unsigned char ascii_read_status(void){
 581              		.loc 1 107 0
 582              		.cfi_startproc
 583              		@ args = 0, pretend = 0, frame = 8
 584              		@ frame_needed = 1, uses_anonymous_args = 0
 585 0220 90B5     		push	{r4, r7, lr}
 586              		.cfi_def_cfa_offset 12
 587              		.cfi_offset 4, -12
 588              		.cfi_offset 7, -8
 589              		.cfi_offset 14, -4
 590 0222 83B0     		sub	sp, sp, #12
 591              		.cfi_def_cfa_offset 24
 592 0224 00AF     		add	r7, sp, #0
 593              		.cfi_def_cfa_register 7
 108:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	*PORT_MODER = 0x00005555;
 594              		.loc 1 108 0
 595 0226 0B4B     		ldr	r3, .L28
 596 0228 0B4A     		ldr	r2, .L28+4
 597 022a 1A60     		str	r2, [r3]
 109:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_clear(B_RS);
 598              		.loc 1 109 0
 599 022c 0120     		movs	r0, #1
 600 022e FFF7FEFF 		bl	ascii_ctrl_bit_clear
 110:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_RW);
 601              		.loc 1 110 0
 602 0232 0220     		movs	r0, #2
 603 0234 FFF7FEFF 		bl	ascii_ctrl_bit_set
 111:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	unsigned char r = ascii_read_controller();
 604              		.loc 1 111 0
 605 0238 FC1D     		adds	r4, r7, #7
 606 023a FFF7FEFF 		bl	ascii_read_controller
 607 023e 0300     		movs	r3, r0
 608 0240 2370     		strb	r3, [r4]
 112:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	*PORT_MODER = 0x55555555;
 609              		.loc 1 112 0
 610 0242 044B     		ldr	r3, .L28
 611 0244 054A     		ldr	r2, .L28+8
 612 0246 1A60     		str	r2, [r3]
 113:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	return r;
 613              		.loc 1 113 0
 614 0248 FB1D     		adds	r3, r7, #7
 615 024a 1B78     		ldrb	r3, [r3]
 114:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 616              		.loc 1 114 0
 617 024c 1800     		movs	r0, r3
 618 024e BD46     		mov	sp, r7
 619 0250 03B0     		add	sp, sp, #12
 620              		@ sp needed
 621 0252 90BD     		pop	{r4, r7, pc}
 622              	.L29:
 623              		.align	2
 624              	.L28:
 625 0254 00100240 		.word	1073876992
 626 0258 55550000 		.word	21845
 627 025c 55555555 		.word	1431655765
 628              		.cfi_endproc
 629              	.LFE11:
 631              		.align	1
 632              		.global	ascii_read_data
 633              		.syntax unified
 634              		.code	16
 635              		.thumb_func
 636              		.fpu softvfp
 638              	ascii_read_data:
 639              	.LFB12:
 115:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** unsigned char ascii_read_data(void){
 640              		.loc 1 115 0
 641              		.cfi_startproc
 642              		@ args = 0, pretend = 0, frame = 8
 643              		@ frame_needed = 1, uses_anonymous_args = 0
 644 0260 80B5     		push	{r7, lr}
 645              		.cfi_def_cfa_offset 8
 646              		.cfi_offset 7, -8
 647              		.cfi_offset 14, -4
 648 0262 82B0     		sub	sp, sp, #8
 649              		.cfi_def_cfa_offset 16
 650 0264 00AF     		add	r7, sp, #0
 651              		.cfi_def_cfa_register 7
 116:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	unsigned char rv;
 117:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	*PORT_MODER = 0x00005555;
 652              		.loc 1 117 0
 653 0266 0A4B     		ldr	r3, .L32
 654 0268 0A4A     		ldr	r2, .L32+4
 655 026a 1A60     		str	r2, [r3]
 118:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_RS);
 656              		.loc 1 118 0
 657 026c 0120     		movs	r0, #1
 658 026e FFF7FEFF 		bl	ascii_ctrl_bit_set
 119:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_ctrl_bit_set(B_RW);
 659              		.loc 1 119 0
 660 0272 0220     		movs	r0, #2
 661 0274 FFF7FEFF 		bl	ascii_ctrl_bit_set
 120:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	rv = ascii_read_controller;
 662              		.loc 1 120 0
 663 0278 074A     		ldr	r2, .L32+8
 664 027a FB1D     		adds	r3, r7, #7
 665 027c 1A70     		strb	r2, [r3]
 121:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	*PORT_MODER = 0x55555555;
 666              		.loc 1 121 0
 667 027e 044B     		ldr	r3, .L32
 668 0280 064A     		ldr	r2, .L32+12
 669 0282 1A60     		str	r2, [r3]
 122:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	return rv;
 670              		.loc 1 122 0
 671 0284 FB1D     		adds	r3, r7, #7
 672 0286 1B78     		ldrb	r3, [r3]
 123:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 673              		.loc 1 123 0
 674 0288 1800     		movs	r0, r3
 675 028a BD46     		mov	sp, r7
 676 028c 02B0     		add	sp, sp, #8
 677              		@ sp needed
 678 028e 80BD     		pop	{r7, pc}
 679              	.L33:
 680              		.align	2
 681              	.L32:
 682 0290 00100240 		.word	1073876992
 683 0294 55550000 		.word	21845
 684 0298 00000000 		.word	ascii_read_controller
 685 029c 55555555 		.word	1431655765
 686              		.cfi_endproc
 687              	.LFE12:
 689              		.align	1
 690              		.global	delay_250ns
 691              		.syntax unified
 692              		.code	16
 693              		.thumb_func
 694              		.fpu softvfp
 696              	delay_250ns:
 697              	.LFB13:
 124:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
 125:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void delay_250ns ( void ) {
 698              		.loc 1 125 0
 699              		.cfi_startproc
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 1, uses_anonymous_args = 0
 702 02a0 80B5     		push	{r7, lr}
 703              		.cfi_def_cfa_offset 8
 704              		.cfi_offset 7, -8
 705              		.cfi_offset 14, -4
 706 02a2 00AF     		add	r7, sp, #0
 707              		.cfi_def_cfa_register 7
 126:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		*STK_CTRL = 0x00;
 708              		.loc 1 126 0
 709 02a4 0C4B     		ldr	r3, .L36
 710 02a6 0022     		movs	r2, #0
 711 02a8 1A60     		str	r2, [r3]
 127:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		*STK_LOAD = ((168/4) - 1);
 712              		.loc 1 127 0
 713 02aa 0C4B     		ldr	r3, .L36+4
 714 02ac 2922     		movs	r2, #41
 715 02ae 1A60     		str	r2, [r3]
 128:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		*STK_VAL = 0;
 716              		.loc 1 128 0
 717 02b0 0B4B     		ldr	r3, .L36+8
 718 02b2 0022     		movs	r2, #0
 719 02b4 1A60     		str	r2, [r3]
 129:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		*STK_CTRL = 5;
 720              		.loc 1 129 0
 721 02b6 084B     		ldr	r3, .L36
 722 02b8 0522     		movs	r2, #5
 723 02ba 1A60     		str	r2, [r3]
 130:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 724              		.loc 1 130 0
 725 02bc C046     		nop
 726              	.L35:
 727              		.loc 1 130 0 is_stmt 0 discriminator 1
 728 02be 064B     		ldr	r3, .L36
 729 02c0 1A68     		ldr	r2, [r3]
 730 02c2 8023     		movs	r3, #128
 731 02c4 5B02     		lsls	r3, r3, #9
 732 02c6 1340     		ands	r3, r2
 733 02c8 F9D0     		beq	.L35
 131:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		*STK_CTRL = 0;
 734              		.loc 1 131 0 is_stmt 1
 735 02ca 034B     		ldr	r3, .L36
 736 02cc 0022     		movs	r2, #0
 737 02ce 1A60     		str	r2, [r3]
 132:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 738              		.loc 1 132 0
 739 02d0 C046     		nop
 740 02d2 BD46     		mov	sp, r7
 741              		@ sp needed
 742 02d4 80BD     		pop	{r7, pc}
 743              	.L37:
 744 02d6 C046     		.align	2
 745              	.L36:
 746 02d8 10E000E0 		.word	-536813552
 747 02dc 14E000E0 		.word	-536813548
 748 02e0 18E000E0 		.word	-536813544
 749              		.cfi_endproc
 750              	.LFE13:
 752              		.align	1
 753              		.global	delay_mikro
 754              		.syntax unified
 755              		.code	16
 756              		.thumb_func
 757              		.fpu softvfp
 759              	delay_mikro:
 760              	.LFB14:
 133:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void delay_mikro (unsigned int us){
 761              		.loc 1 133 0
 762              		.cfi_startproc
 763              		@ args = 0, pretend = 0, frame = 16
 764              		@ frame_needed = 1, uses_anonymous_args = 0
 765 02e4 80B5     		push	{r7, lr}
 766              		.cfi_def_cfa_offset 8
 767              		.cfi_offset 7, -8
 768              		.cfi_offset 14, -4
 769 02e6 84B0     		sub	sp, sp, #16
 770              		.cfi_def_cfa_offset 24
 771 02e8 00AF     		add	r7, sp, #0
 772              		.cfi_def_cfa_register 7
 773 02ea 7860     		str	r0, [r7, #4]
 774              	.LBB2:
 134:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	for (int i = 0; i < us; i++) {
 775              		.loc 1 134 0
 776 02ec 0023     		movs	r3, #0
 777 02ee FB60     		str	r3, [r7, #12]
 778 02f0 0AE0     		b	.L39
 779              	.L40:
 135:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_250ns();
 780              		.loc 1 135 0 discriminator 3
 781 02f2 FFF7FEFF 		bl	delay_250ns
 136:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_250ns();
 782              		.loc 1 136 0 discriminator 3
 783 02f6 FFF7FEFF 		bl	delay_250ns
 137:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_250ns();
 784              		.loc 1 137 0 discriminator 3
 785 02fa FFF7FEFF 		bl	delay_250ns
 138:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_250ns();
 786              		.loc 1 138 0 discriminator 3
 787 02fe FFF7FEFF 		bl	delay_250ns
 134:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_250ns();
 788              		.loc 1 134 0 discriminator 3
 789 0302 FB68     		ldr	r3, [r7, #12]
 790 0304 0133     		adds	r3, r3, #1
 791 0306 FB60     		str	r3, [r7, #12]
 792              	.L39:
 134:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_250ns();
 793              		.loc 1 134 0 is_stmt 0 discriminator 1
 794 0308 FA68     		ldr	r2, [r7, #12]
 795 030a 7B68     		ldr	r3, [r7, #4]
 796 030c 9A42     		cmp	r2, r3
 797 030e F0D3     		bcc	.L40
 798              	.LBE2:
 139:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		}
 140:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 799              		.loc 1 140 0 is_stmt 1
 800 0310 C046     		nop
 801 0312 BD46     		mov	sp, r7
 802 0314 04B0     		add	sp, sp, #16
 803              		@ sp needed
 804 0316 80BD     		pop	{r7, pc}
 805              		.cfi_endproc
 806              	.LFE14:
 808              		.align	1
 809              		.global	delay_milli
 810              		.syntax unified
 811              		.code	16
 812              		.thumb_func
 813              		.fpu softvfp
 815              	delay_milli:
 816              	.LFB15:
 141:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** void delay_milli (unsigned int ms){
 817              		.loc 1 141 0
 818              		.cfi_startproc
 819              		@ args = 0, pretend = 0, frame = 8
 820              		@ frame_needed = 1, uses_anonymous_args = 0
 821 0318 80B5     		push	{r7, lr}
 822              		.cfi_def_cfa_offset 8
 823              		.cfi_offset 7, -8
 824              		.cfi_offset 14, -4
 825 031a 82B0     		sub	sp, sp, #8
 826              		.cfi_def_cfa_offset 16
 827 031c 00AF     		add	r7, sp, #0
 828              		.cfi_def_cfa_register 7
 829 031e 7860     		str	r0, [r7, #4]
 142:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		delay_mikro(ms * 1000);
 830              		.loc 1 142 0
 831 0320 7B68     		ldr	r3, [r7, #4]
 832 0322 FA22     		movs	r2, #250
 833 0324 9200     		lsls	r2, r2, #2
 834 0326 5343     		muls	r3, r2
 835 0328 1800     		movs	r0, r3
 836 032a FFF7FEFF 		bl	delay_mikro
 143:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 837              		.loc 1 143 0
 838 032e C046     		nop
 839 0330 BD46     		mov	sp, r7
 840 0332 02B0     		add	sp, sp, #8
 841              		@ sp needed
 842 0334 80BD     		pop	{r7, pc}
 843              		.cfi_endproc
 844              	.LFE15:
 846              		.section	.rodata
 847              		.align	2
 848              	.LC1:
 849 0000 20202048 		.ascii	"   How do you get\000"
 849      6F772064 
 849      6F20796F 
 849      75206765 
 849      7400
 850 0012 0000     		.align	2
 851              	.LC3:
 852 0014 20202050 		.ascii	"   Points in here? \000"
 852      6F696E74 
 852      7320696E 
 852      20686572 
 852      653F2000 
 853              		.text
 854              		.align	1
 855              		.global	main
 856              		.syntax unified
 857              		.code	16
 858              		.thumb_func
 859              		.fpu softvfp
 861              	main:
 862              	.LFB16:
 144:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 
 145:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** int main(int argc, char**argv){
 863              		.loc 1 145 0
 864              		.cfi_startproc
 865              		@ args = 0, pretend = 0, frame = 56
 866              		@ frame_needed = 1, uses_anonymous_args = 0
 867 0336 90B5     		push	{r4, r7, lr}
 868              		.cfi_def_cfa_offset 12
 869              		.cfi_offset 4, -12
 870              		.cfi_offset 7, -8
 871              		.cfi_offset 14, -4
 872 0338 8FB0     		sub	sp, sp, #60
 873              		.cfi_def_cfa_offset 72
 874 033a 00AF     		add	r7, sp, #0
 875              		.cfi_def_cfa_register 7
 876 033c 7860     		str	r0, [r7, #4]
 877 033e 3960     		str	r1, [r7]
 146:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	char *s;
 147:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	int Points = 22;
 878              		.loc 1 147 0
 879 0340 1623     		movs	r3, #22
 880 0342 3B63     		str	r3, [r7, #48]
 148:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	char test1[] = "   How do you get";
 881              		.loc 1 148 0
 882 0344 1C23     		movs	r3, #28
 883 0346 FB18     		adds	r3, r7, r3
 884 0348 1E4A     		ldr	r2, .L48
 885 034a 13CA     		ldmia	r2!, {r0, r1, r4}
 886 034c 13C3     		stmia	r3!, {r0, r1, r4}
 887 034e 1168     		ldr	r1, [r2]
 888 0350 1960     		str	r1, [r3]
 889 0352 9288     		ldrh	r2, [r2, #4]
 890 0354 9A80     		strh	r2, [r3, #4]
 149:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	char test2[] = "   Points in here? ";
 891              		.loc 1 149 0
 892 0356 0823     		movs	r3, #8
 893 0358 FB18     		adds	r3, r7, r3
 894 035a 1B4A     		ldr	r2, .L48+4
 895 035c 13CA     		ldmia	r2!, {r0, r1, r4}
 896 035e 13C3     		stmia	r3!, {r0, r1, r4}
 897 0360 03CA     		ldmia	r2!, {r0, r1}
 898 0362 03C3     		stmia	r3!, {r0, r1}
 150:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	
 151:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	init_app();
 899              		.loc 1 151 0
 900 0364 FFF7FEFF 		bl	init_app
 152:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_init();
 901              		.loc 1 152 0
 902 0368 FFF7FEFF 		bl	ascii_init
 153:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_gotoxy(1,1);
 903              		.loc 1 153 0
 904 036c 0121     		movs	r1, #1
 905 036e 0120     		movs	r0, #1
 906 0370 FFF7FEFF 		bl	ascii_gotoxy
 154:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	s = test1;
 907              		.loc 1 154 0
 908 0374 1C23     		movs	r3, #28
 909 0376 FB18     		adds	r3, r7, r3
 910 0378 7B63     		str	r3, [r7, #52]
 155:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	while(*s)
 911              		.loc 1 155 0
 912 037a 06E0     		b	.L43
 913              	.L44:
 156:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		ascii_write_char(*s++);
 914              		.loc 1 156 0
 915 037c 7B6B     		ldr	r3, [r7, #52]
 916 037e 5A1C     		adds	r2, r3, #1
 917 0380 7A63     		str	r2, [r7, #52]
 918 0382 1B78     		ldrb	r3, [r3]
 919 0384 1800     		movs	r0, r3
 920 0386 FFF7FEFF 		bl	ascii_write_char
 921              	.L43:
 155:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	while(*s)
 922              		.loc 1 155 0
 923 038a 7B6B     		ldr	r3, [r7, #52]
 924 038c 1B78     		ldrb	r3, [r3]
 925 038e 002B     		cmp	r3, #0
 926 0390 F4D1     		bne	.L44
 157:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	ascii_gotoxy(1,2);
 927              		.loc 1 157 0
 928 0392 0221     		movs	r1, #2
 929 0394 0120     		movs	r0, #1
 930 0396 FFF7FEFF 		bl	ascii_gotoxy
 158:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	s = test2;
 931              		.loc 1 158 0
 932 039a 0823     		movs	r3, #8
 933 039c FB18     		adds	r3, r7, r3
 934 039e 7B63     		str	r3, [r7, #52]
 159:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	while(*s)
 935              		.loc 1 159 0
 936 03a0 06E0     		b	.L45
 937              	.L46:
 160:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 		ascii_write_char(*s++);
 938              		.loc 1 160 0
 939 03a2 7B6B     		ldr	r3, [r7, #52]
 940 03a4 5A1C     		adds	r2, r3, #1
 941 03a6 7A63     		str	r2, [r7, #52]
 942 03a8 1B78     		ldrb	r3, [r3]
 943 03aa 1800     		movs	r0, r3
 944 03ac FFF7FEFF 		bl	ascii_write_char
 945              	.L45:
 159:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	while(*s)
 946              		.loc 1 159 0
 947 03b0 7B6B     		ldr	r3, [r7, #52]
 948 03b2 1B78     		ldrb	r3, [r3]
 949 03b4 002B     		cmp	r3, #0
 950 03b6 F4D1     		bne	.L46
 161:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** 	return 0;
 951              		.loc 1 161 0
 952 03b8 0023     		movs	r3, #0
 162:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/Moplaborationer/WorkBook/asciidisplay\asciidisplay.c **** }
 953              		.loc 1 162 0
 954 03ba 1800     		movs	r0, r3
 955 03bc BD46     		mov	sp, r7
 956 03be 0FB0     		add	sp, sp, #60
 957              		@ sp needed
 958 03c0 90BD     		pop	{r4, r7, pc}
 959              	.L49:
 960 03c2 C046     		.align	2
 961              	.L48:
 962 03c4 00000000 		.word	.LC1
 963 03c8 14000000 		.word	.LC3
 964              		.cfi_endproc
 965              	.LFE16:
 967              	.Letext0:
