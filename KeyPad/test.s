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
  11              		.file	"Keypad.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad/Keypad.c
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** void startup ( void )
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** {
  26              		.loc 1 7 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** __asm volatile(
  31              		.loc 1 8 0
  32              		.syntax divided
  33              	@ 8 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad/Keypad.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	" MOV SP,R0\n"
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	" BL main\n"				/* call main */
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	"_exit: B .\n"				/* never return */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	) ;
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** }
  40              		.loc 1 14 0
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
  90              		.text
  91              		.align	1
  92              		.global	app_init
  93              		.syntax unified
  94              		.code	16
  95              		.thumb_func
  96              		.fpu softvfp
  98              	app_init:
  99              	.LFB1:
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** #define GPIO_D 0x40020C00
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** #define GPIO_MODER ((volatile unsigned int*) GPIO_D) 
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** #define GPIO_IDR_HIGH ((volatile unsigned char*)  GPIO_D + 0x11)
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** #define GPIO_IDR_LOW  ((volatile unsigned char*) GPIO_D + 0x10)
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** #define GPIO_ODR_HIGH ((volatile unsigned char*) GPIO_D + 0x15)
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** #define GPIO_ODR_LOW ((volatile unsigned char*) GPIO_D + 0x14)
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** #define GPIO_PUDR ((volatile unsigned int*) GPIO_D + 0xC)
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** #define GPIO_OTYPER ((volatile unsigned short*) GPIO_D + 0x4)
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** unsigned char Segcodes[16] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** unsigned char Key[16]  = {1,2,3,0xA, 4, 5, 6 , 0xB, 7, 8, 9, 0xC, 0xE, 0, 0xF, 0xD};
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** void app_init(void){
 100              		.loc 1 27 0
 101              		.cfi_startproc
 102              		@ args = 0, pretend = 0, frame = 0
 103              		@ frame_needed = 1, uses_anonymous_args = 0
 104 0000 80B5     		push	{r7, lr}
 105              		.cfi_def_cfa_offset 8
 106              		.cfi_offset 7, -8
 107              		.cfi_offset 14, -4
 108 0002 00AF     		add	r7, sp, #0
 109              		.cfi_def_cfa_register 7
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	*GPIO_MODER = 0x55005555;
 110              		.loc 1 28 0
 111 0004 064B     		ldr	r3, .L3
 112 0006 074A     		ldr	r2, .L3+4
 113 0008 1A60     		str	r2, [r3]
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	*GPIO_OTYPER = 0x0F00;
 114              		.loc 1 29 0
 115 000a 074B     		ldr	r3, .L3+8
 116 000c F022     		movs	r2, #240
 117 000e 1201     		lsls	r2, r2, #4
 118 0010 1A80     		strh	r2, [r3]
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	*GPIO_PUDR = 0xAA000000;
 119              		.loc 1 30 0
 120 0012 064B     		ldr	r3, .L3+12
 121 0014 AA22     		movs	r2, #170
 122 0016 1206     		lsls	r2, r2, #24
 123 0018 1A60     		str	r2, [r3]
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** }
 124              		.loc 1 31 0
 125 001a C046     		nop
 126 001c BD46     		mov	sp, r7
 127              		@ sp needed
 128 001e 80BD     		pop	{r7, pc}
 129              	.L4:
 130              		.align	2
 131              	.L3:
 132 0020 000C0240 		.word	1073875968
 133 0024 55550055 		.word	1426085205
 134 0028 080C0240 		.word	1073875976
 135 002c 300C0240 		.word	1073876016
 136              		.cfi_endproc
 137              	.LFE1:
 139              		.align	1
 140              		.global	keyb
 141              		.syntax unified
 142              		.code	16
 143              		.thumb_func
 144              		.fpu softvfp
 146              	keyb:
 147              	.LFB2:
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** unsigned char keyb(void){
 148              		.loc 1 33 0
 149              		.cfi_startproc
 150              		@ args = 0, pretend = 0, frame = 8
 151              		@ frame_needed = 1, uses_anonymous_args = 0
 152 0030 80B5     		push	{r7, lr}
 153              		.cfi_def_cfa_offset 8
 154              		.cfi_offset 7, -8
 155              		.cfi_offset 14, -4
 156 0032 82B0     		sub	sp, sp, #8
 157              		.cfi_def_cfa_offset 16
 158 0034 00AF     		add	r7, sp, #0
 159              		.cfi_def_cfa_register 7
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	int row, column;
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	for (row = 1; row <= 4; row++){
 160              		.loc 1 35 0
 161 0036 0123     		movs	r3, #1
 162 0038 7B60     		str	r3, [r7, #4]
 163 003a 19E0     		b	.L6
 164              	.L9:
 165              	.LBB2:
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		ActivateRow(row);
 166              		.loc 1 36 0
 167 003c 7B68     		ldr	r3, [r7, #4]
 168 003e 1800     		movs	r0, r3
 169 0040 FFF7FEFF 		bl	ActivateRow
 170              	.LBB3:
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		if (column = ReadColumn()){
 171              		.loc 1 37 0
 172 0044 FFF7FEFF 		bl	ReadColumn
 173 0048 0300     		movs	r3, r0
 174 004a 3B60     		str	r3, [r7]
 175 004c 3B68     		ldr	r3, [r7]
 176 004e 002B     		cmp	r3, #0
 177 0050 0BD0     		beq	.L7
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 			ActivateRow(0);
 178              		.loc 1 38 0
 179 0052 0020     		movs	r0, #0
 180 0054 FFF7FEFF 		bl	ActivateRow
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 			return Key[4*(row-1) + (column-1)];
 181              		.loc 1 39 0
 182 0058 7B68     		ldr	r3, [r7, #4]
 183 005a 013B     		subs	r3, r3, #1
 184 005c 9A00     		lsls	r2, r3, #2
 185 005e 3B68     		ldr	r3, [r7]
 186 0060 013B     		subs	r3, r3, #1
 187 0062 D318     		adds	r3, r2, r3
 188 0064 084A     		ldr	r2, .L10
 189 0066 D35C     		ldrb	r3, [r2, r3]
 190 0068 09E0     		b	.L8
 191              	.L7:
 192              	.LBE3:
 193              	.LBE2:
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		ActivateRow(row);
 194              		.loc 1 35 0 discriminator 2
 195 006a 7B68     		ldr	r3, [r7, #4]
 196 006c 0133     		adds	r3, r3, #1
 197 006e 7B60     		str	r3, [r7, #4]
 198              	.L6:
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		ActivateRow(row);
 199              		.loc 1 35 0 is_stmt 0 discriminator 1
 200 0070 7B68     		ldr	r3, [r7, #4]
 201 0072 042B     		cmp	r3, #4
 202 0074 E2DD     		ble	.L9
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		}
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	}
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	ActivateRow(0);
 203              		.loc 1 42 0 is_stmt 1
 204 0076 0020     		movs	r0, #0
 205 0078 FFF7FEFF 		bl	ActivateRow
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	return 0xFF;
 206              		.loc 1 43 0
 207 007c FF23     		movs	r3, #255
 208              	.L8:
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** }
 209              		.loc 1 44 0
 210 007e 1800     		movs	r0, r3
 211 0080 BD46     		mov	sp, r7
 212 0082 02B0     		add	sp, sp, #8
 213              		@ sp needed
 214 0084 80BD     		pop	{r7, pc}
 215              	.L11:
 216 0086 C046     		.align	2
 217              	.L10:
 218 0088 00000000 		.word	Key
 219              		.cfi_endproc
 220              	.LFE2:
 222              		.align	1
 223              		.global	ActivateRow
 224              		.syntax unified
 225              		.code	16
 226              		.thumb_func
 227              		.fpu softvfp
 229              	ActivateRow:
 230              	.LFB3:
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** void ActivateRow(char row){
 231              		.loc 1 45 0
 232              		.cfi_startproc
 233              		@ args = 0, pretend = 0, frame = 8
 234              		@ frame_needed = 1, uses_anonymous_args = 0
 235 008c 80B5     		push	{r7, lr}
 236              		.cfi_def_cfa_offset 8
 237              		.cfi_offset 7, -8
 238              		.cfi_offset 14, -4
 239 008e 82B0     		sub	sp, sp, #8
 240              		.cfi_def_cfa_offset 16
 241 0090 00AF     		add	r7, sp, #0
 242              		.cfi_def_cfa_register 7
 243 0092 0200     		movs	r2, r0
 244 0094 FB1D     		adds	r3, r7, #7
 245 0096 1A70     		strb	r2, [r3]
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	switch(row){
 246              		.loc 1 46 0
 247 0098 FB1D     		adds	r3, r7, #7
 248 009a 1B78     		ldrb	r3, [r3]
 249 009c 042B     		cmp	r3, #4
 250 009e 18D8     		bhi	.L20
 251 00a0 9A00     		lsls	r2, r3, #2
 252 00a2 0E4B     		ldr	r3, .L21
 253 00a4 D318     		adds	r3, r2, r3
 254 00a6 1B68     		ldr	r3, [r3]
 255 00a8 9F46     		mov	pc, r3
 256              		.section	.rodata
 257              		.align	2
 258              	.L15:
 259 0000 CA000000 		.word	.L14
 260 0004 AA000000 		.word	.L16
 261 0008 B2000000 		.word	.L17
 262 000c BA000000 		.word	.L18
 263 0010 C2000000 		.word	.L19
 264              		.text
 265              	.L16:
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		case 1: *GPIO_ODR_HIGH = 0x10; break;
 266              		.loc 1 47 0
 267 00aa 0D4B     		ldr	r3, .L21+4
 268 00ac 1022     		movs	r2, #16
 269 00ae 1A70     		strb	r2, [r3]
 270 00b0 0FE0     		b	.L13
 271              	.L17:
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		case 2: *GPIO_ODR_HIGH = 0x20; break;
 272              		.loc 1 48 0
 273 00b2 0B4B     		ldr	r3, .L21+4
 274 00b4 2022     		movs	r2, #32
 275 00b6 1A70     		strb	r2, [r3]
 276 00b8 0BE0     		b	.L13
 277              	.L18:
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		case 3: *GPIO_ODR_HIGH = 0x40; break;
 278              		.loc 1 49 0
 279 00ba 094B     		ldr	r3, .L21+4
 280 00bc 4022     		movs	r2, #64
 281 00be 1A70     		strb	r2, [r3]
 282 00c0 07E0     		b	.L13
 283              	.L19:
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		case 4: *GPIO_ODR_HIGH = 0x80; break;
 284              		.loc 1 50 0
 285 00c2 074B     		ldr	r3, .L21+4
 286 00c4 8022     		movs	r2, #128
 287 00c6 1A70     		strb	r2, [r3]
 288 00c8 03E0     		b	.L13
 289              	.L14:
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		case 0: *GPIO_ODR_HIGH = 0x00; break;
 290              		.loc 1 51 0
 291 00ca 054B     		ldr	r3, .L21+4
 292 00cc 0022     		movs	r2, #0
 293 00ce 1A70     		strb	r2, [r3]
 294 00d0 C046     		nop
 295              	.L13:
 296              	.L20:
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	}
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** }
 297              		.loc 1 53 0
 298 00d2 C046     		nop
 299 00d4 BD46     		mov	sp, r7
 300 00d6 02B0     		add	sp, sp, #8
 301              		@ sp needed
 302 00d8 80BD     		pop	{r7, pc}
 303              	.L22:
 304 00da C046     		.align	2
 305              	.L21:
 306 00dc 00000000 		.word	.L15
 307 00e0 150C0240 		.word	1073875989
 308              		.cfi_endproc
 309              	.LFE3:
 311              		.align	1
 312              		.global	ReadColumn
 313              		.syntax unified
 314              		.code	16
 315              		.thumb_func
 316              		.fpu softvfp
 318              	ReadColumn:
 319              	.LFB4:
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** int ReadColumn (void){
 320              		.loc 1 54 0
 321              		.cfi_startproc
 322              		@ args = 0, pretend = 0, frame = 8
 323              		@ frame_needed = 1, uses_anonymous_args = 0
 324 00e4 80B5     		push	{r7, lr}
 325              		.cfi_def_cfa_offset 8
 326              		.cfi_offset 7, -8
 327              		.cfi_offset 14, -4
 328 00e6 82B0     		sub	sp, sp, #8
 329              		.cfi_def_cfa_offset 16
 330 00e8 00AF     		add	r7, sp, #0
 331              		.cfi_def_cfa_register 7
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	unsigned char c;
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	c = *GPIO_IDR_HIGH;
 332              		.loc 1 56 0
 333 00ea 124A     		ldr	r2, .L29
 334 00ec FB1D     		adds	r3, r7, #7
 335 00ee 1278     		ldrb	r2, [r2]
 336 00f0 1A70     		strb	r2, [r3]
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	if(c & 0x8) return 4;
 337              		.loc 1 57 0
 338 00f2 FB1D     		adds	r3, r7, #7
 339 00f4 1B78     		ldrb	r3, [r3]
 340 00f6 0822     		movs	r2, #8
 341 00f8 1340     		ands	r3, r2
 342 00fa 01D0     		beq	.L24
 343              		.loc 1 57 0 is_stmt 0 discriminator 1
 344 00fc 0423     		movs	r3, #4
 345 00fe 15E0     		b	.L25
 346              	.L24:
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	if(c & 0x4) return 3;
 347              		.loc 1 58 0 is_stmt 1
 348 0100 FB1D     		adds	r3, r7, #7
 349 0102 1B78     		ldrb	r3, [r3]
 350 0104 0422     		movs	r2, #4
 351 0106 1340     		ands	r3, r2
 352 0108 01D0     		beq	.L26
 353              		.loc 1 58 0 is_stmt 0 discriminator 1
 354 010a 0323     		movs	r3, #3
 355 010c 0EE0     		b	.L25
 356              	.L26:
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	if(c & 0x2) return 2;
 357              		.loc 1 59 0 is_stmt 1
 358 010e FB1D     		adds	r3, r7, #7
 359 0110 1B78     		ldrb	r3, [r3]
 360 0112 0222     		movs	r2, #2
 361 0114 1340     		ands	r3, r2
 362 0116 01D0     		beq	.L27
 363              		.loc 1 59 0 is_stmt 0 discriminator 1
 364 0118 0223     		movs	r3, #2
 365 011a 07E0     		b	.L25
 366              	.L27:
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	if(c & 0x1) return 1;
 367              		.loc 1 60 0 is_stmt 1
 368 011c FB1D     		adds	r3, r7, #7
 369 011e 1B78     		ldrb	r3, [r3]
 370 0120 0122     		movs	r2, #1
 371 0122 1340     		ands	r3, r2
 372 0124 01D0     		beq	.L28
 373              		.loc 1 60 0 is_stmt 0 discriminator 1
 374 0126 0123     		movs	r3, #1
 375 0128 00E0     		b	.L25
 376              	.L28:
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	return 0;
 377              		.loc 1 61 0 is_stmt 1
 378 012a 0023     		movs	r3, #0
 379              	.L25:
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** }
 380              		.loc 1 62 0
 381 012c 1800     		movs	r0, r3
 382 012e BD46     		mov	sp, r7
 383 0130 02B0     		add	sp, sp, #8
 384              		@ sp needed
 385 0132 80BD     		pop	{r7, pc}
 386              	.L30:
 387              		.align	2
 388              	.L29:
 389 0134 110C0240 		.word	1073875985
 390              		.cfi_endproc
 391              	.LFE4:
 393              		.align	1
 394              		.global	out7seg
 395              		.syntax unified
 396              		.code	16
 397              		.thumb_func
 398              		.fpu softvfp
 400              	out7seg:
 401              	.LFB5:
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** void out7seg(unsigned char c){
 402              		.loc 1 63 0
 403              		.cfi_startproc
 404              		@ args = 0, pretend = 0, frame = 8
 405              		@ frame_needed = 1, uses_anonymous_args = 0
 406 0138 80B5     		push	{r7, lr}
 407              		.cfi_def_cfa_offset 8
 408              		.cfi_offset 7, -8
 409              		.cfi_offset 14, -4
 410 013a 82B0     		sub	sp, sp, #8
 411              		.cfi_def_cfa_offset 16
 412 013c 00AF     		add	r7, sp, #0
 413              		.cfi_def_cfa_register 7
 414 013e 0200     		movs	r2, r0
 415 0140 FB1D     		adds	r3, r7, #7
 416 0142 1A70     		strb	r2, [r3]
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	if (c > 0xF){
 417              		.loc 1 64 0
 418 0144 FB1D     		adds	r3, r7, #7
 419 0146 1B78     		ldrb	r3, [r3]
 420 0148 0F2B     		cmp	r3, #15
 421 014a 03D9     		bls	.L32
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		*GPIO_ODR_LOW = 0x00;
 422              		.loc 1 65 0
 423 014c 064B     		ldr	r3, .L35
 424 014e 0022     		movs	r2, #0
 425 0150 1A70     		strb	r2, [r3]
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	}
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	else *GPIO_ODR_LOW = Segcodes[c];
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	}
 426              		.loc 1 68 0
 427 0152 05E0     		b	.L34
 428              	.L32:
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	}
 429              		.loc 1 67 0
 430 0154 0449     		ldr	r1, .L35
 431 0156 FB1D     		adds	r3, r7, #7
 432 0158 1B78     		ldrb	r3, [r3]
 433 015a 044A     		ldr	r2, .L35+4
 434 015c D35C     		ldrb	r3, [r2, r3]
 435 015e 0B70     		strb	r3, [r1]
 436              	.L34:
 437              		.loc 1 68 0
 438 0160 C046     		nop
 439 0162 BD46     		mov	sp, r7
 440 0164 02B0     		add	sp, sp, #8
 441              		@ sp needed
 442 0166 80BD     		pop	{r7, pc}
 443              	.L36:
 444              		.align	2
 445              	.L35:
 446 0168 140C0240 		.word	1073875988
 447 016c 00000000 		.word	Segcodes
 448              		.cfi_endproc
 449              	.LFE5:
 451              		.align	1
 452              		.global	main
 453              		.syntax unified
 454              		.code	16
 455              		.thumb_func
 456              		.fpu softvfp
 458              	main:
 459              	.LFB6:
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** void main(void)
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** {
 460              		.loc 1 70 0
 461              		.cfi_startproc
 462              		@ args = 0, pretend = 0, frame = 0
 463              		@ frame_needed = 1, uses_anonymous_args = 0
 464 0170 80B5     		push	{r7, lr}
 465              		.cfi_def_cfa_offset 8
 466              		.cfi_offset 7, -8
 467              		.cfi_offset 14, -4
 468 0172 00AF     		add	r7, sp, #0
 469              		.cfi_def_cfa_register 7
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	app_init();
 470              		.loc 1 71 0
 471 0174 FFF7FEFF 		bl	app_init
 472              	.L38:
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 	while(1){
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/KeyPad\Keypad.c **** 		out7seg(keyb());
 473              		.loc 1 73 0 discriminator 1
 474 0178 FFF7FEFF 		bl	keyb
 475 017c 0300     		movs	r3, r0
 476 017e 1800     		movs	r0, r3
 477 0180 FFF7FEFF 		bl	out7seg
 478 0184 F8E7     		b	.L38
 479              		.cfi_endproc
 480              	.LFE6:
 482              	.Letext0:
