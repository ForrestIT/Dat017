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
  11              		.file	"Delay.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay/Delay.c"
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c ****  
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** void startup ( void )
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** {
  26              		.loc 1 6 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** __asm volatile(
  31              		.loc 1 7 0
  32              		.syntax divided
  33              	@ 7 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay/Delay.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	.L1: B .L1
  38              	
  39              	@ 0 "" 2
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	" MOV SP,R0\n"
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	" BL main\n"				/* call main */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	".L1: B .L1\n"				/* never return */
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	) ;
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** }
  40              		.loc 1 13 0
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
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** #define SysTick 0xE000E010
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** #define STK_CTRL ((volatile unsigned int*) (SysTick))
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** #define STK_LOAD ((volatile unsigned int*) (SysTick + 0x4))
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** #define STK_VAL ((volatile unsigned int*) (SysTick + 0x8))
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** #define	GPIO_E 0x40021000
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** #define GPIO_MODER ((volatile unsigned int *) (GPIO_E))
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** #define GPIO_ODR ((volatile unsigned int*) (GPIO_E + 0x14))
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** void init_app(void){ 
  57              		.loc 1 23 0
  58              		.cfi_startproc
  59              		@ args = 0, pretend = 0, frame = 0
  60              		@ frame_needed = 1, uses_anonymous_args = 0
  61 0000 80B5     		push	{r7, lr}
  62              		.cfi_def_cfa_offset 8
  63              		.cfi_offset 7, -8
  64              		.cfi_offset 14, -4
  65 0002 00AF     		add	r7, sp, #0
  66              		.cfi_def_cfa_register 7
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	*GPIO_MODER = 0x55;
  67              		.loc 1 24 0
  68 0004 024B     		ldr	r3, .L3
  69 0006 5522     		movs	r2, #85
  70 0008 1A60     		str	r2, [r3]
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** }	
  71              		.loc 1 25 0
  72 000a C046     		nop
  73 000c BD46     		mov	sp, r7
  74              		@ sp needed
  75 000e 80BD     		pop	{r7, pc}
  76              	.L4:
  77              		.align	2
  78              	.L3:
  79 0010 00100240 		.word	1073876992
  80              		.cfi_endproc
  81              	.LFE1:
  83              		.align	1
  84              		.global	delay_250ns
  85              		.syntax unified
  86              		.code	16
  87              		.thumb_func
  88              		.fpu softvfp
  90              	delay_250ns:
  91              	.LFB2:
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** void delay_250ns ( void ) 
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** {
  92              		.loc 1 29 0
  93              		.cfi_startproc
  94              		@ args = 0, pretend = 0, frame = 0
  95              		@ frame_needed = 1, uses_anonymous_args = 0
  96 0014 80B5     		push	{r7, lr}
  97              		.cfi_def_cfa_offset 8
  98              		.cfi_offset 7, -8
  99              		.cfi_offset 14, -4
 100 0016 00AF     		add	r7, sp, #0
 101              		.cfi_def_cfa_register 7
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		*STK_CTRL = 0x00;
 102              		.loc 1 30 0
 103 0018 0C4B     		ldr	r3, .L7
 104 001a 0022     		movs	r2, #0
 105 001c 1A60     		str	r2, [r3]
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		*STK_LOAD = ((168/4) - 1);
 106              		.loc 1 31 0
 107 001e 0C4B     		ldr	r3, .L7+4
 108 0020 2922     		movs	r2, #41
 109 0022 1A60     		str	r2, [r3]
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		*STK_VAL = 0;
 110              		.loc 1 32 0
 111 0024 0B4B     		ldr	r3, .L7+8
 112 0026 0022     		movs	r2, #0
 113 0028 1A60     		str	r2, [r3]
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		*STK_CTRL = 5;
 114              		.loc 1 33 0
 115 002a 084B     		ldr	r3, .L7
 116 002c 0522     		movs	r2, #5
 117 002e 1A60     		str	r2, [r3]
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		while ((*STK_CTRL & 0x10000) == 0){}
 118              		.loc 1 34 0
 119 0030 C046     		nop
 120              	.L6:
 121              		.loc 1 34 0 is_stmt 0 discriminator 1
 122 0032 064B     		ldr	r3, .L7
 123 0034 1A68     		ldr	r2, [r3]
 124 0036 8023     		movs	r3, #128
 125 0038 5B02     		lsls	r3, r3, #9
 126 003a 1340     		ands	r3, r2
 127 003c F9D0     		beq	.L6
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		*STK_CTRL = 0;
 128              		.loc 1 35 0 is_stmt 1
 129 003e 034B     		ldr	r3, .L7
 130 0040 0022     		movs	r2, #0
 131 0042 1A60     		str	r2, [r3]
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** }
 132              		.loc 1 36 0
 133 0044 C046     		nop
 134 0046 BD46     		mov	sp, r7
 135              		@ sp needed
 136 0048 80BD     		pop	{r7, pc}
 137              	.L8:
 138 004a C046     		.align	2
 139              	.L7:
 140 004c 10E000E0 		.word	-536813552
 141 0050 14E000E0 		.word	-536813548
 142 0054 18E000E0 		.word	-536813544
 143              		.cfi_endproc
 144              	.LFE2:
 146              		.align	1
 147              		.global	delay_mikro
 148              		.syntax unified
 149              		.code	16
 150              		.thumb_func
 151              		.fpu softvfp
 153              	delay_mikro:
 154              	.LFB3:
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** void delay_mikro (unsigned int us){
 155              		.loc 1 38 0
 156              		.cfi_startproc
 157              		@ args = 0, pretend = 0, frame = 16
 158              		@ frame_needed = 1, uses_anonymous_args = 0
 159 0058 80B5     		push	{r7, lr}
 160              		.cfi_def_cfa_offset 8
 161              		.cfi_offset 7, -8
 162              		.cfi_offset 14, -4
 163 005a 84B0     		sub	sp, sp, #16
 164              		.cfi_def_cfa_offset 24
 165 005c 00AF     		add	r7, sp, #0
 166              		.cfi_def_cfa_register 7
 167 005e 7860     		str	r0, [r7, #4]
 168              	.LBB2:
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	for (int i = 0; i < us; i++) {
 169              		.loc 1 39 0
 170 0060 0023     		movs	r3, #0
 171 0062 FB60     		str	r3, [r7, #12]
 172 0064 0AE0     		b	.L10
 173              	.L11:
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_250ns();
 174              		.loc 1 40 0 discriminator 3
 175 0066 FFF7FEFF 		bl	delay_250ns
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_250ns();
 176              		.loc 1 41 0 discriminator 3
 177 006a FFF7FEFF 		bl	delay_250ns
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_250ns();
 178              		.loc 1 42 0 discriminator 3
 179 006e FFF7FEFF 		bl	delay_250ns
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_250ns();
 180              		.loc 1 43 0 discriminator 3
 181 0072 FFF7FEFF 		bl	delay_250ns
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_250ns();
 182              		.loc 1 39 0 discriminator 3
 183 0076 FB68     		ldr	r3, [r7, #12]
 184 0078 0133     		adds	r3, r3, #1
 185 007a FB60     		str	r3, [r7, #12]
 186              	.L10:
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_250ns();
 187              		.loc 1 39 0 is_stmt 0 discriminator 1
 188 007c FA68     		ldr	r2, [r7, #12]
 189 007e 7B68     		ldr	r3, [r7, #4]
 190 0080 9A42     		cmp	r2, r3
 191 0082 F0D3     		bcc	.L11
 192              	.LBE2:
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		}
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** }
 193              		.loc 1 45 0 is_stmt 1
 194 0084 C046     		nop
 195 0086 BD46     		mov	sp, r7
 196 0088 04B0     		add	sp, sp, #16
 197              		@ sp needed
 198 008a 80BD     		pop	{r7, pc}
 199              		.cfi_endproc
 200              	.LFE3:
 202              		.align	1
 203              		.global	delay_milli
 204              		.syntax unified
 205              		.code	16
 206              		.thumb_func
 207              		.fpu softvfp
 209              	delay_milli:
 210              	.LFB4:
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** void delay_milli (unsigned int ms)
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** {
 211              		.loc 1 48 0
 212              		.cfi_startproc
 213              		@ args = 0, pretend = 0, frame = 8
 214              		@ frame_needed = 1, uses_anonymous_args = 0
 215 008c 80B5     		push	{r7, lr}
 216              		.cfi_def_cfa_offset 8
 217              		.cfi_offset 7, -8
 218              		.cfi_offset 14, -4
 219 008e 82B0     		sub	sp, sp, #8
 220              		.cfi_def_cfa_offset 16
 221 0090 00AF     		add	r7, sp, #0
 222              		.cfi_def_cfa_register 7
 223 0092 7860     		str	r0, [r7, #4]
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_mikro(ms * 1000);
 224              		.loc 1 49 0
 225 0094 7B68     		ldr	r3, [r7, #4]
 226 0096 FA22     		movs	r2, #250
 227 0098 9200     		lsls	r2, r2, #2
 228 009a 5343     		muls	r3, r2
 229 009c 1800     		movs	r0, r3
 230 009e FFF7FEFF 		bl	delay_mikro
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** }
 231              		.loc 1 50 0
 232 00a2 C046     		nop
 233 00a4 BD46     		mov	sp, r7
 234 00a6 02B0     		add	sp, sp, #8
 235              		@ sp needed
 236 00a8 80BD     		pop	{r7, pc}
 237              		.cfi_endproc
 238              	.LFE4:
 240              		.align	1
 241              		.global	main
 242              		.syntax unified
 243              		.code	16
 244              		.thumb_func
 245              		.fpu softvfp
 247              	main:
 248              	.LFB5:
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** void main(void)
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** {
 249              		.loc 1 53 0
 250              		.cfi_startproc
 251              		@ args = 0, pretend = 0, frame = 0
 252              		@ frame_needed = 1, uses_anonymous_args = 0
 253 00aa 80B5     		push	{r7, lr}
 254              		.cfi_def_cfa_offset 8
 255              		.cfi_offset 7, -8
 256              		.cfi_offset 14, -4
 257 00ac 00AF     		add	r7, sp, #0
 258              		.cfi_def_cfa_register 7
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	init_app();
 259              		.loc 1 54 0
 260 00ae FFF7FEFF 		bl	init_app
 261              	.L14:
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	while(1)
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 	{
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		*GPIO_ODR = 0;
 262              		.loc 1 57 0 discriminator 1
 263 00b2 084B     		ldr	r3, .L15
 264 00b4 0022     		movs	r2, #0
 265 00b6 1A60     		str	r2, [r3]
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_milli (500);
 266              		.loc 1 58 0 discriminator 1
 267 00b8 FA23     		movs	r3, #250
 268 00ba 5B00     		lsls	r3, r3, #1
 269 00bc 1800     		movs	r0, r3
 270 00be FFF7FEFF 		bl	delay_milli
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		*GPIO_ODR = 0xFF;
 271              		.loc 1 59 0 discriminator 1
 272 00c2 044B     		ldr	r3, .L15
 273 00c4 FF22     		movs	r2, #255
 274 00c6 1A60     		str	r2, [r3]
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_milli (500);
 275              		.loc 1 60 0 discriminator 1
 276 00c8 FA23     		movs	r3, #250
 277 00ca 5B00     		lsls	r3, r3, #1
 278 00cc 1800     		movs	r0, r3
 279 00ce FFF7FEFF 		bl	delay_milli
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/Delay\Delay.c **** 		delay_milli (500);
 280              		.loc 1 57 0 discriminator 1
 281 00d2 EEE7     		b	.L14
 282              	.L16:
 283              		.align	2
 284              	.L15:
 285 00d4 14100240 		.word	1073877012
 286              		.cfi_endproc
 287              	.LFE5:
 289              	.Letext0:
