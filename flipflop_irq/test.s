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
  11              		.file	"flipflop_irq.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq/fl
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** void startup ( void )
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq/flipflo
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	" MOV SP,R0\n"
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	) ;
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** }
  40              		.loc 1 15 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.bss
  48              		.align	2
  49              	count:
  50 0000 00000000 		.space	4
  52              		.text
  53              		.align	1
  54              		.global	app_init
  55              		.syntax unified
  56              		.code	16
  57              		.thumb_func
  58              		.fpu softvfp
  60              	app_init:
  61              	.LFB1:
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E 0x40021000
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E_Moder ((volatile unsigned int*) (PORT_E))
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E_Otyper ((volatile unsigned short *) (PORT_E+0x4))
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E_Ospeedr ((volatile unsigned int *) (PORT_E+0x8))
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E_Pupdr ((volatile unsigned int *) (PORT_E+0xC1))
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E_IdrLow ((volatile unsigned short *) (PORT_E+0x10))
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E_IdrHigh ((volatile unsigned char *) (PORT_E+0x11))
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E_OdrLow ((volatile unsigned char *) (PORT_E+0x14))
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_E_OdrHigh ((volatile unsigned char *) (PORT_E+0x14+1)) 
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D 0x40020C00
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D_Moder ((volatile unsigned int*) (PORT_D))
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D_Otyper ((volatile unsigned short *) (PORT_D+0x4))
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D_Ospeedr ((volatile unsigned int *) (PORT_D+0x8))
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D_Pupdr ((volatile unsigned int *) (PORT_D+0xC))
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D_IdrLow ((volatile unsigned short *) (PORT_D+0x10))
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D_IdrHigh ((volatile unsigned char *) (PORT_D+0x11))
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D_OdrLow ((volatile unsigned char *) (PORT_D+0x14))
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define PORT_D_OdrHigh ((volatile unsigned char *) (PORT_D+0x14+1))
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define SYSCFG_EXTICR1 ((volatile unsigned int*) (0x40013808))
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c ****  
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define EXTI 0x40013C00
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define EXTI_IMR ((volatile unsigned int*)(EXTI)) 
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define EXTI_RTSR ((volatile unsigned int*)(EXTI + 8))
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define EXTI_FTSR ((volatile unsigned int*)(EXTI + 0xC))
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define EXTI_PR ((volatile unsigned int*) (EXTI + 0x14))
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define EXTI3_IRQ3_BPOS (1<<3)
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define NVIC 0xE000E100
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** #define NVIC_ISER0 ((volatile unsigned int*)(NVIC))
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** static volatile int count = 0;
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** void irq_handler(void);
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** void app_init(void){
  62              		.loc 1 53 0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 1, uses_anonymous_args = 0
  66 0000 80B5     		push	{r7, lr}
  67              		.cfi_def_cfa_offset 8
  68              		.cfi_offset 7, -8
  69              		.cfi_offset 14, -4
  70 0002 00AF     		add	r7, sp, #0
  71              		.cfi_def_cfa_register 7
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*PORT_E_Moder = 0;
  72              		.loc 1 54 0
  73 0004 1C4B     		ldr	r3, .L3
  74 0006 0022     		movs	r2, #0
  75 0008 1A60     		str	r2, [r3]
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*PORT_D_Moder &= 0x00005555;
  76              		.loc 1 55 0
  77 000a 1C4B     		ldr	r3, .L3+4
  78 000c 1B4A     		ldr	r2, .L3+4
  79 000e 1268     		ldr	r2, [r2]
  80 0010 1B49     		ldr	r1, .L3+8
  81 0012 0A40     		ands	r2, r1
  82 0014 1A60     		str	r2, [r3]
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*PORT_D_Moder |= 0x55555555;
  83              		.loc 1 56 0
  84 0016 194B     		ldr	r3, .L3+4
  85 0018 184A     		ldr	r2, .L3+4
  86 001a 1268     		ldr	r2, [r2]
  87 001c 1949     		ldr	r1, .L3+12
  88 001e 0A43     		orrs	r2, r1
  89 0020 1A60     		str	r2, [r3]
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	/* aktiverar NVIC för EXTI3*/
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*NVIC_ISER0 |= (1<<9);
  90              		.loc 1 58 0
  91 0022 194B     		ldr	r3, .L3+16
  92 0024 184A     		ldr	r2, .L3+16
  93 0026 1268     		ldr	r2, [r2]
  94 0028 8021     		movs	r1, #128
  95 002a 8900     		lsls	r1, r1, #2
  96 002c 0A43     		orrs	r2, r1
  97 002e 1A60     		str	r2, [r3]
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	/* Nollställ fält */
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*SYSCFG_EXTICR1 &= 0xFFFF0FFF;
  98              		.loc 1 60 0
  99 0030 164B     		ldr	r3, .L3+20
 100 0032 164A     		ldr	r2, .L3+20
 101 0034 1268     		ldr	r2, [r2]
 102 0036 1649     		ldr	r1, .L3+24
 103 0038 0A40     		ands	r2, r1
 104 003a 1A60     		str	r2, [r3]
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	/* PE3 -> EXTI3*/
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*SYSCFG_EXTICR1 |= 0x00004000;
 105              		.loc 1 62 0
 106 003c 134B     		ldr	r3, .L3+20
 107 003e 134A     		ldr	r2, .L3+20
 108 0040 1268     		ldr	r2, [r2]
 109 0042 8021     		movs	r1, #128
 110 0044 C901     		lsls	r1, r1, #7
 111 0046 0A43     		orrs	r2, r1
 112 0048 1A60     		str	r2, [r3]
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*EXTI_IMR |= (1<<3);
 113              		.loc 1 64 0
 114 004a 124B     		ldr	r3, .L3+28
 115 004c 114A     		ldr	r2, .L3+28
 116 004e 1268     		ldr	r2, [r2]
 117 0050 0821     		movs	r1, #8
 118 0052 0A43     		orrs	r2, r1
 119 0054 1A60     		str	r2, [r3]
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*EXTI_FTSR |= (1<<3);
 120              		.loc 1 65 0
 121 0056 104B     		ldr	r3, .L3+32
 122 0058 0F4A     		ldr	r2, .L3+32
 123 005a 1268     		ldr	r2, [r2]
 124 005c 0821     		movs	r1, #8
 125 005e 0A43     		orrs	r2, r1
 126 0060 1A60     		str	r2, [r3]
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*EXTI_RTSR &= 0;
 127              		.loc 1 66 0
 128 0062 0E4B     		ldr	r3, .L3+36
 129 0064 1B68     		ldr	r3, [r3]
 130 0066 0D4B     		ldr	r3, .L3+36
 131 0068 0022     		movs	r2, #0
 132 006a 1A60     		str	r2, [r3]
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	*((void(**)(void))0x2001C064) = irq_handler;
 133              		.loc 1 68 0
 134 006c 0C4B     		ldr	r3, .L3+40
 135 006e 0D4A     		ldr	r2, .L3+44
 136 0070 1A60     		str	r2, [r3]
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** }
 137              		.loc 1 70 0
 138 0072 C046     		nop
 139 0074 BD46     		mov	sp, r7
 140              		@ sp needed
 141 0076 80BD     		pop	{r7, pc}
 142              	.L4:
 143              		.align	2
 144              	.L3:
 145 0078 00100240 		.word	1073876992
 146 007c 000C0240 		.word	1073875968
 147 0080 55550000 		.word	21845
 148 0084 55555555 		.word	1431655765
 149 0088 00E100E0 		.word	-536813312
 150 008c 08380140 		.word	1073821704
 151 0090 FF0FFFFF 		.word	-61441
 152 0094 003C0140 		.word	1073822720
 153 0098 0C3C0140 		.word	1073822732
 154 009c 083C0140 		.word	1073822728
 155 00a0 64C00120 		.word	536985700
 156 00a4 00000000 		.word	irq_handler
 157              		.cfi_endproc
 158              	.LFE1:
 160              		.align	1
 161              		.global	irq_handler
 162              		.syntax unified
 163              		.code	16
 164              		.thumb_func
 165              		.fpu softvfp
 167              	irq_handler:
 168              	.LFB2:
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** void irq_handler(void){
 169              		.loc 1 72 0
 170              		.cfi_startproc
 171              		@ args = 0, pretend = 0, frame = 0
 172              		@ frame_needed = 1, uses_anonymous_args = 0
 173 00a8 80B5     		push	{r7, lr}
 174              		.cfi_def_cfa_offset 8
 175              		.cfi_offset 7, -8
 176              		.cfi_offset 14, -4
 177 00aa 00AF     		add	r7, sp, #0
 178              		.cfi_def_cfa_register 7
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	if((*EXTI_PR & EXTI3_IRQ3_BPOS) != 0){
 179              		.loc 1 73 0
 180 00ac 094B     		ldr	r3, .L8
 181 00ae 1B68     		ldr	r3, [r3]
 182 00b0 0822     		movs	r2, #8
 183 00b2 1340     		ands	r3, r2
 184 00b4 0AD0     		beq	.L7
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 		count++;
 185              		.loc 1 74 0
 186 00b6 084B     		ldr	r3, .L8+4
 187 00b8 1B68     		ldr	r3, [r3]
 188 00ba 5A1C     		adds	r2, r3, #1
 189 00bc 064B     		ldr	r3, .L8+4
 190 00be 1A60     		str	r2, [r3]
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 		*EXTI_PR |= EXTI3_IRQ3_BPOS;
 191              		.loc 1 75 0
 192 00c0 044B     		ldr	r3, .L8
 193 00c2 044A     		ldr	r2, .L8
 194 00c4 1268     		ldr	r2, [r2]
 195 00c6 0821     		movs	r1, #8
 196 00c8 0A43     		orrs	r2, r1
 197 00ca 1A60     		str	r2, [r3]
 198              	.L7:
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	}
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** }
 199              		.loc 1 77 0
 200 00cc C046     		nop
 201 00ce BD46     		mov	sp, r7
 202              		@ sp needed
 203 00d0 80BD     		pop	{r7, pc}
 204              	.L9:
 205 00d2 C046     		.align	2
 206              	.L8:
 207 00d4 143C0140 		.word	1073822740
 208 00d8 00000000 		.word	count
 209              		.cfi_endproc
 210              	.LFE2:
 212              		.align	1
 213              		.global	main
 214              		.syntax unified
 215              		.code	16
 216              		.thumb_func
 217              		.fpu softvfp
 219              	main:
 220              	.LFB3:
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** void main(void){
 221              		.loc 1 79 0
 222              		.cfi_startproc
 223              		@ args = 0, pretend = 0, frame = 0
 224              		@ frame_needed = 1, uses_anonymous_args = 0
 225 00dc 80B5     		push	{r7, lr}
 226              		.cfi_def_cfa_offset 8
 227              		.cfi_offset 7, -8
 228              		.cfi_offset 14, -4
 229 00de 00AF     		add	r7, sp, #0
 230              		.cfi_def_cfa_register 7
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	app_init();
 231              		.loc 1 80 0
 232 00e0 FFF7FEFF 		bl	app_init
 233              	.L11:
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 	while(1){
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq\flipflop_irq.c **** 		*PORT_D_OdrLow = count;
 234              		.loc 1 82 0 discriminator 1
 235 00e4 024A     		ldr	r2, .L12
 236 00e6 034B     		ldr	r3, .L12+4
 237 00e8 1B68     		ldr	r3, [r3]
 238 00ea DBB2     		uxtb	r3, r3
 239 00ec 1370     		strb	r3, [r2]
 240 00ee F9E7     		b	.L11
 241              	.L13:
 242              		.align	2
 243              	.L12:
 244 00f0 140C0240 		.word	1073875988
 245 00f4 00000000 		.word	count
 246              		.cfi_endproc
 247              	.LFE3:
 249              	.Letext0:
