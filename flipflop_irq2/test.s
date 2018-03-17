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
  11              		.file	"flipflop_irq2.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2/f
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** void startup ( void )
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2/flipfl
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	" MOV SP,R0\n"
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	) ;
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** }
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
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E 0x40021000
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E_Moder ((volatile unsigned int*) (PORT_E))
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E_Otyper ((volatile unsigned short *) (PORT_E+0x4))
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E_Ospeedr ((volatile unsigned int *) (PORT_E+0x8))
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E_Pupdr ((volatile unsigned int *) (PORT_E+0xC1))
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E_IdrLow ((volatile unsigned short *) (PORT_E+0x10))
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E_IdrHigh ((volatile unsigned char *) (PORT_E+0x11))
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E_OdrLow ((volatile unsigned char *) (PORT_E+0x14))
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_E_OdrHigh ((volatile unsigned char *) (PORT_E+0x14+1)) 
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D 0x40020C00
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D_Moder ((volatile unsigned int*) (PORT_D))
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D_Otyper ((volatile unsigned short *) (PORT_D+0x4))
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D_Ospeedr ((volatile unsigned int *) (PORT_D+0x8))
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D_Pupdr ((volatile unsigned int *) (PORT_D+0xC))
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D_IdrLow ((volatile unsigned short *) (PORT_D+0x10))
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D_IdrHigh ((volatile unsigned char *) (PORT_D+0x11))
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D_OdrLow ((volatile unsigned char *) (PORT_D+0x14))
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define PORT_D_OdrHigh ((volatile unsigned char *) (PORT_D+0x14+1))
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c ****  
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI 0x40013C00
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI_IMR ((volatile unsigned int*)(EXTI)) 
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI_RTSR ((volatile unsigned int*)(EXTI + 8))
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI_FTSR ((volatile unsigned int*)(EXTI + 0xC))
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI_PR ((volatile unsigned int*) (EXTI + 0x14))
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI0_IRQ_BPOS 1
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI1_IRQ_BPOS (1<<1)
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI2_IRQ_BPOS (1<<2)
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI3_IRQ_BPOS (1<<3)
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define NVIC 0xE000E100
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define NVIC_ISER0 ((volatile unsigned int*)(NVIC))
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define NVIC_EXTI3_IRQ_BPOS 1<<9
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define NVIC_EXTI2_IRQ_BPOS 1<<8
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define NVIC_EXTI1_IRQ_BPOS 1<<7
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define NVIC_EXTI0_IRQ_BPOS 1<<6
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define SYSCFG_EXTICR1 ((volatile unsigned int*) (0x40013808))
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** #define EXTI3_IRQVEC ((void(**)(void))0x2001C064)
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** static volatile int count = 0;
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** void irq_handler(void);
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** void app_init(void){
  62              		.loc 1 63 0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 1, uses_anonymous_args = 0
  66 0000 80B5     		push	{r7, lr}
  67              		.cfi_def_cfa_offset 8
  68              		.cfi_offset 7, -8
  69              		.cfi_offset 14, -4
  70 0002 00AF     		add	r7, sp, #0
  71              		.cfi_def_cfa_register 7
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*PORT_E_Moder = 0;
  72              		.loc 1 64 0
  73 0004 1D4B     		ldr	r3, .L3
  74 0006 0022     		movs	r2, #0
  75 0008 1A60     		str	r2, [r3]
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*PORT_D_Moder &= 0;
  76              		.loc 1 65 0
  77 000a 1D4B     		ldr	r3, .L3+4
  78 000c 1B68     		ldr	r3, [r3]
  79 000e 1C4B     		ldr	r3, .L3+4
  80 0010 0022     		movs	r2, #0
  81 0012 1A60     		str	r2, [r3]
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*PORT_D_Moder |= 0x55555555;
  82              		.loc 1 66 0
  83 0014 1A4B     		ldr	r3, .L3+4
  84 0016 1A4A     		ldr	r2, .L3+4
  85 0018 1268     		ldr	r2, [r2]
  86 001a 1A49     		ldr	r1, .L3+8
  87 001c 0A43     		orrs	r2, r1
  88 001e 1A60     		str	r2, [r3]
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*PORT_D_OdrHigh = 0;
  89              		.loc 1 68 0
  90 0020 194B     		ldr	r3, .L3+12
  91 0022 0022     		movs	r2, #0
  92 0024 1A70     		strb	r2, [r3]
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	/* aktiverar NVIC för EXTI3*/
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*NVIC_ISER0 |= NVIC_EXTI3_IRQ_BPOS;
  93              		.loc 1 70 0
  94 0026 194B     		ldr	r3, .L3+16
  95 0028 184A     		ldr	r2, .L3+16
  96 002a 1268     		ldr	r2, [r2]
  97 002c 8021     		movs	r1, #128
  98 002e 8900     		lsls	r1, r1, #2
  99 0030 0A43     		orrs	r2, r1
 100 0032 1A60     		str	r2, [r3]
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI3_IRQVEC = irq_handler;
 101              		.loc 1 72 0
 102 0034 164B     		ldr	r3, .L3+20
 103 0036 174A     		ldr	r2, .L3+24
 104 0038 1A60     		str	r2, [r3]
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	/* Nollställ fält */
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*SYSCFG_EXTICR1 &= 0xFFFF0000;
 105              		.loc 1 75 0
 106 003a 174B     		ldr	r3, .L3+28
 107 003c 164A     		ldr	r2, .L3+28
 108 003e 1268     		ldr	r2, [r2]
 109 0040 120C     		lsrs	r2, r2, #16
 110 0042 1204     		lsls	r2, r2, #16
 111 0044 1A60     		str	r2, [r3]
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	/* EXTI3, EXTI2, EXTI1, EXTI0 -> PE */
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*SYSCFG_EXTICR1 |= 0x00004444;
 112              		.loc 1 77 0
 113 0046 144B     		ldr	r3, .L3+28
 114 0048 134A     		ldr	r2, .L3+28
 115 004a 1268     		ldr	r2, [r2]
 116 004c 1349     		ldr	r1, .L3+32
 117 004e 0A43     		orrs	r2, r1
 118 0050 1A60     		str	r2, [r3]
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	/* Aktivera EXTI0 EXTI1, EXTI2 och EXTI3 för avbrott */
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_IMR |= 0x0F;
 119              		.loc 1 79 0
 120 0052 134B     		ldr	r3, .L3+36
 121 0054 124A     		ldr	r2, .L3+36
 122 0056 1268     		ldr	r2, [r2]
 123 0058 0F21     		movs	r1, #15
 124 005a 0A43     		orrs	r2, r1
 125 005c 1A60     		str	r2, [r3]
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	/*
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_IMR |= EXTI3_IRQ_BPOS;
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_IMR |= EXTI2_IRQ_BPOS;
  83:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_IMR |= EXTI1_IRQ_BPOS;
  84:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_IMR |= EXTI0_IRQ_BPOS;
  85:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	/* EXTI0 EXTI1, EXTI2 och EXTI3 sätt till att generera avbrott  på negativ flank*/
  86:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_FTSR |= 0x0F;
 126              		.loc 1 86 0
 127 005e 114B     		ldr	r3, .L3+40
 128 0060 104A     		ldr	r2, .L3+40
 129 0062 1268     		ldr	r2, [r2]
 130 0064 0F21     		movs	r1, #15
 131 0066 0A43     		orrs	r2, r1
 132 0068 1A60     		str	r2, [r3]
  87:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	/*
  88:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_FTSR |= EXTI3_IRQ_BPOS;
  89:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_FTSR |= EXTI2_IRQ_BPOS;
  90:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_FTSR |= EXTI1_IRQ_BPOS;
  91:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_FTSR |= EXTI0_IRQ_BPOS;
  92:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	/* Försäkran om att Ingen av pinnarna genererar avbrott på positiv flank*/
  93:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	*EXTI_RTSR &= 0;
 133              		.loc 1 93 0
 134 006a 0F4B     		ldr	r3, .L3+44
 135 006c 1B68     		ldr	r3, [r3]
 136 006e 0E4B     		ldr	r3, .L3+44
 137 0070 0022     		movs	r2, #0
 138 0072 1A60     		str	r2, [r3]
  94:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	
  95:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  96:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  97:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** }
 139              		.loc 1 97 0
 140 0074 C046     		nop
 141 0076 BD46     		mov	sp, r7
 142              		@ sp needed
 143 0078 80BD     		pop	{r7, pc}
 144              	.L4:
 145 007a C046     		.align	2
 146              	.L3:
 147 007c 00100240 		.word	1073876992
 148 0080 000C0240 		.word	1073875968
 149 0084 55555555 		.word	1431655765
 150 0088 150C0240 		.word	1073875989
 151 008c 00E100E0 		.word	-536813312
 152 0090 64C00120 		.word	536985700
 153 0094 00000000 		.word	irq_handler
 154 0098 08380140 		.word	1073821704
 155 009c 44440000 		.word	17476
 156 00a0 003C0140 		.word	1073822720
 157 00a4 0C3C0140 		.word	1073822732
 158 00a8 083C0140 		.word	1073822728
 159              		.cfi_endproc
 160              	.LFE1:
 162              		.align	1
 163              		.global	irq_handler
 164              		.syntax unified
 165              		.code	16
 166              		.thumb_func
 167              		.fpu softvfp
 169              	irq_handler:
 170              	.LFB2:
  98:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
  99:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** void irq_handler(void){
 171              		.loc 1 99 0
 172              		.cfi_startproc
 173              		@ args = 0, pretend = 0, frame = 0
 174              		@ frame_needed = 1, uses_anonymous_args = 0
 175 00ac 80B5     		push	{r7, lr}
 176              		.cfi_def_cfa_offset 8
 177              		.cfi_offset 7, -8
 178              		.cfi_offset 14, -4
 179 00ae 00AF     		add	r7, sp, #0
 180              		.cfi_def_cfa_register 7
 100:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	if(*EXTI_PR & EXTI3_IRQ_BPOS){
 181              		.loc 1 100 0
 182 00b0 1F4B     		ldr	r3, .L11
 183 00b2 1B68     		ldr	r3, [r3]
 184 00b4 0822     		movs	r2, #8
 185 00b6 1340     		ands	r3, r2
 186 00b8 37D0     		beq	.L10
 101:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 		if(*EXTI_PR & EXTI0_IRQ_BPOS){
 187              		.loc 1 101 0
 188 00ba 1D4B     		ldr	r3, .L11
 189 00bc 1B68     		ldr	r3, [r3]
 190 00be 0122     		movs	r2, #1
 191 00c0 1340     		ands	r3, r2
 192 00c2 0BD0     		beq	.L7
 102:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 			*EXTI_PR |= EXTI0_IRQ_BPOS;
 193              		.loc 1 102 0
 194 00c4 1A4B     		ldr	r3, .L11
 195 00c6 1A4A     		ldr	r2, .L11
 196 00c8 1268     		ldr	r2, [r2]
 197 00ca 0121     		movs	r1, #1
 198 00cc 0A43     		orrs	r2, r1
 199 00ce 1A60     		str	r2, [r3]
 103:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 			count++;
 200              		.loc 1 103 0
 201 00d0 184B     		ldr	r3, .L11+4
 202 00d2 1B68     		ldr	r3, [r3]
 203 00d4 5A1C     		adds	r2, r3, #1
 204 00d6 174B     		ldr	r3, .L11+4
 205 00d8 1A60     		str	r2, [r3]
 206 00da 20E0     		b	.L8
 207              	.L7:
 104:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 		}
 105:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 		else if(*EXTI_PR & EXTI1_IRQ_BPOS){
 208              		.loc 1 105 0
 209 00dc 144B     		ldr	r3, .L11
 210 00de 1B68     		ldr	r3, [r3]
 211 00e0 0222     		movs	r2, #2
 212 00e2 1340     		ands	r3, r2
 213 00e4 09D0     		beq	.L9
 106:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 			*EXTI_PR |= EXTI1_IRQ_BPOS;
 214              		.loc 1 106 0
 215 00e6 124B     		ldr	r3, .L11
 216 00e8 114A     		ldr	r2, .L11
 217 00ea 1268     		ldr	r2, [r2]
 218 00ec 0221     		movs	r1, #2
 219 00ee 0A43     		orrs	r2, r1
 220 00f0 1A60     		str	r2, [r3]
 107:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 			count = 0;
 221              		.loc 1 107 0
 222 00f2 104B     		ldr	r3, .L11+4
 223 00f4 0022     		movs	r2, #0
 224 00f6 1A60     		str	r2, [r3]
 225 00f8 11E0     		b	.L8
 226              	.L9:
 108:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 		}
 109:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 		else if(*EXTI_PR & EXTI2_IRQ_BPOS){
 227              		.loc 1 109 0
 228 00fa 0D4B     		ldr	r3, .L11
 229 00fc 1B68     		ldr	r3, [r3]
 230 00fe 0422     		movs	r2, #4
 231 0100 1340     		ands	r3, r2
 232 0102 0CD0     		beq	.L8
 110:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 			*EXTI_PR |= EXTI2_IRQ_BPOS;
 233              		.loc 1 110 0
 234 0104 0A4B     		ldr	r3, .L11
 235 0106 0A4A     		ldr	r2, .L11
 236 0108 1268     		ldr	r2, [r2]
 237 010a 0421     		movs	r1, #4
 238 010c 0A43     		orrs	r2, r1
 239 010e 1A60     		str	r2, [r3]
 111:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 			*PORT_D_OdrHigh = ~*PORT_D_OdrHigh;
 240              		.loc 1 111 0
 241 0110 094A     		ldr	r2, .L11+8
 242 0112 094B     		ldr	r3, .L11+8
 243 0114 1B78     		ldrb	r3, [r3]
 244 0116 DBB2     		uxtb	r3, r3
 245 0118 DB43     		mvns	r3, r3
 246 011a DBB2     		uxtb	r3, r3
 247 011c 1370     		strb	r3, [r2]
 248              	.L8:
 112:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 		}
 113:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
 114:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 		*EXTI_PR |= EXTI3_IRQ_BPOS;
 249              		.loc 1 114 0
 250 011e 044B     		ldr	r3, .L11
 251 0120 034A     		ldr	r2, .L11
 252 0122 1268     		ldr	r2, [r2]
 253 0124 0821     		movs	r1, #8
 254 0126 0A43     		orrs	r2, r1
 255 0128 1A60     		str	r2, [r3]
 256              	.L10:
 115:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	}
 116:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** }
 257              		.loc 1 116 0
 258 012a C046     		nop
 259 012c BD46     		mov	sp, r7
 260              		@ sp needed
 261 012e 80BD     		pop	{r7, pc}
 262              	.L12:
 263              		.align	2
 264              	.L11:
 265 0130 143C0140 		.word	1073822740
 266 0134 00000000 		.word	count
 267 0138 150C0240 		.word	1073875989
 268              		.cfi_endproc
 269              	.LFE2:
 271              		.align	1
 272              		.global	main
 273              		.syntax unified
 274              		.code	16
 275              		.thumb_func
 276              		.fpu softvfp
 278              	main:
 279              	.LFB3:
 117:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 
 118:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** void main(void){
 280              		.loc 1 118 0
 281              		.cfi_startproc
 282              		@ args = 0, pretend = 0, frame = 0
 283              		@ frame_needed = 1, uses_anonymous_args = 0
 284 013c 80B5     		push	{r7, lr}
 285              		.cfi_def_cfa_offset 8
 286              		.cfi_offset 7, -8
 287              		.cfi_offset 14, -4
 288 013e 00AF     		add	r7, sp, #0
 289              		.cfi_def_cfa_register 7
 119:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	app_init();
 290              		.loc 1 119 0
 291 0140 FFF7FEFF 		bl	app_init
 292              	.L14:
 120:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 	while(1){
 121:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq2\flipflop_irq2.c **** 		*PORT_D_OdrLow = count;
 293              		.loc 1 121 0 discriminator 1
 294 0144 024A     		ldr	r2, .L15
 295 0146 034B     		ldr	r3, .L15+4
 296 0148 1B68     		ldr	r3, [r3]
 297 014a DBB2     		uxtb	r3, r3
 298 014c 1370     		strb	r3, [r2]
 299 014e F9E7     		b	.L14
 300              	.L16:
 301              		.align	2
 302              	.L15:
 303 0150 140C0240 		.word	1073875988
 304 0154 00000000 		.word	count
 305              		.cfi_endproc
 306              	.LFE3:
 308              	.Letext0:
