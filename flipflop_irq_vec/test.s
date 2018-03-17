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
  11              		.file	"flipflop_irq_vec.c"
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
  25              		.file 1 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_ve
   1:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** /*
   2:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c ****  * 	startup.c
   3:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c ****  *
   4:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c ****  */
   5:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   6:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
   7:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void startup ( void )
   8:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** {
  26              		.loc 1 8 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
   9:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** __asm volatile(
  31              		.loc 1 9 0
  32              		.syntax divided
  33              	@ 9 "C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec/fli
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	_exit: B .
  38              	
  39              	@ 0 "" 2
  10:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  11:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	" MOV SP,R0\n"
  12:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	" BL main\n"				/* call main */
  13:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	"_exit: B .\n"				/* never return */
  14:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	) ;
  15:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** }
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
  16:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E 0x40021000
  17:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E_Moder ((volatile unsigned int*) (PORT_E))
  18:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E_Otyper ((volatile unsigned short *) (PORT_E+0x4))
  19:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E_Ospeedr ((volatile unsigned int *) (PORT_E+0x8))
  20:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E_Pupdr ((volatile unsigned int *) (PORT_E+0xC1))
  21:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E_IdrLow ((volatile unsigned short *) (PORT_E+0x10))
  22:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E_IdrHigh ((volatile unsigned char *) (PORT_E+0x11))
  23:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E_OdrLow ((volatile unsigned char *) (PORT_E+0x14))
  24:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_E_OdrHigh ((volatile unsigned char *) (PORT_E+0x14+1)) 
  25:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  26:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D 0x40020C00
  27:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D_Moder ((volatile unsigned int*) (PORT_D))
  28:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D_Otyper ((volatile unsigned short *) (PORT_D+0x4))
  29:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D_Ospeedr ((volatile unsigned int *) (PORT_D+0x8))
  30:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D_Pupdr ((volatile unsigned int *) (PORT_D+0xC))
  31:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D_IdrLow ((volatile unsigned short *) (PORT_D+0x10))
  32:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D_IdrHigh ((volatile unsigned char *) (PORT_D+0x11))
  33:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D_OdrLow ((volatile unsigned char *) (PORT_D+0x14))
  34:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define PORT_D_OdrHigh ((volatile unsigned char *) (PORT_D+0x14+1))
  35:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  36:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define SYSCFG_EXTICR1 ((volatile unsigned int*) (0x40013808))
  37:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c ****  
  38:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI 0x40013C00
  39:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI_IMR ((volatile unsigned int*)(EXTI)) 
  40:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI_RTSR ((volatile unsigned int*)(EXTI + 8))
  41:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI_FTSR ((volatile unsigned int*)(EXTI + 0xC))
  42:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI_PR ((volatile unsigned int*) (EXTI + 0x14))
  43:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  44:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI0_IRQ_BPOS 1
  45:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI1_IRQ_BPOS (1<<1)
  46:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI2_IRQ_BPOS (1<<2)
  47:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  48:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  49:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define NVIC 0xE000E100
  50:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define NVIC_ISER0 ((volatile unsigned int*)(NVIC))
  51:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define NVIC_EXTI2_IRQ_BPOS 1<<8
  52:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define NVIC_EXTI1_IRQ_BPOS 1<<7
  53:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define NVIC_EXTI0_IRQ_BPOS 1<<6
  54:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  55:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI2_IRQVEC ((void(**)(void))0x2001C060)
  56:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI1_IRQVEC ((void(**)(void))0x2001C05C)
  57:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** #define EXTI0_IRQVEC ((void(**)(void))0x2001C058)
  58:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  59:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  60:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** static volatile int count = 0;
  61:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  62:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void irq_handler_EXTI0(void);
  63:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void irq_handler_EXTI1(void);
  64:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void irq_handler_EXTI2(void);
  65:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  66:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void app_init(void){
  62              		.loc 1 66 0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 1, uses_anonymous_args = 0
  66 0000 80B5     		push	{r7, lr}
  67              		.cfi_def_cfa_offset 8
  68              		.cfi_offset 7, -8
  69              		.cfi_offset 14, -4
  70 0002 00AF     		add	r7, sp, #0
  71              		.cfi_def_cfa_register 7
  67:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*PORT_E_Moder = 0;
  72              		.loc 1 67 0
  73 0004 324B     		ldr	r3, .L3
  74 0006 0022     		movs	r2, #0
  75 0008 1A60     		str	r2, [r3]
  68:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*PORT_D_Moder &= 0x00005555;
  76              		.loc 1 68 0
  77 000a 324B     		ldr	r3, .L3+4
  78 000c 314A     		ldr	r2, .L3+4
  79 000e 1268     		ldr	r2, [r2]
  80 0010 3149     		ldr	r1, .L3+8
  81 0012 0A40     		ands	r2, r1
  82 0014 1A60     		str	r2, [r3]
  69:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*PORT_D_Moder |= 0x55555555;
  83              		.loc 1 69 0
  84 0016 2F4B     		ldr	r3, .L3+4
  85 0018 2E4A     		ldr	r2, .L3+4
  86 001a 1268     		ldr	r2, [r2]
  87 001c 2F49     		ldr	r1, .L3+12
  88 001e 0A43     		orrs	r2, r1
  89 0020 1A60     		str	r2, [r3]
  70:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	
  71:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*PORT_D_OdrHigh = 0;
  90              		.loc 1 71 0
  91 0022 2F4B     		ldr	r3, .L3+16
  92 0024 0022     		movs	r2, #0
  93 0026 1A70     		strb	r2, [r3]
  72:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	/* aktiverar NVIC för EXTI3*/
  73:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*NVIC_ISER0 |= NVIC_EXTI2_IRQ_BPOS;
  94              		.loc 1 73 0
  95 0028 2E4B     		ldr	r3, .L3+20
  96 002a 2E4A     		ldr	r2, .L3+20
  97 002c 1268     		ldr	r2, [r2]
  98 002e 8021     		movs	r1, #128
  99 0030 4900     		lsls	r1, r1, #1
 100 0032 0A43     		orrs	r2, r1
 101 0034 1A60     		str	r2, [r3]
  74:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*NVIC_ISER0 |= NVIC_EXTI1_IRQ_BPOS;
 102              		.loc 1 74 0
 103 0036 2B4B     		ldr	r3, .L3+20
 104 0038 2A4A     		ldr	r2, .L3+20
 105 003a 1268     		ldr	r2, [r2]
 106 003c 8021     		movs	r1, #128
 107 003e 0A43     		orrs	r2, r1
 108 0040 1A60     		str	r2, [r3]
  75:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*NVIC_ISER0 |= NVIC_EXTI0_IRQ_BPOS;
 109              		.loc 1 75 0
 110 0042 284B     		ldr	r3, .L3+20
 111 0044 274A     		ldr	r2, .L3+20
 112 0046 1268     		ldr	r2, [r2]
 113 0048 4021     		movs	r1, #64
 114 004a 0A43     		orrs	r2, r1
 115 004c 1A60     		str	r2, [r3]
  76:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	
  77:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI0_IRQVEC = irq_handler_EXTI0;
 116              		.loc 1 77 0
 117 004e 264B     		ldr	r3, .L3+24
 118 0050 264A     		ldr	r2, .L3+28
 119 0052 1A60     		str	r2, [r3]
  78:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI1_IRQVEC = irq_handler_EXTI1;
 120              		.loc 1 78 0
 121 0054 264B     		ldr	r3, .L3+32
 122 0056 274A     		ldr	r2, .L3+36
 123 0058 1A60     		str	r2, [r3]
  79:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI2_IRQVEC = irq_handler_EXTI2;
 124              		.loc 1 79 0
 125 005a 274B     		ldr	r3, .L3+40
 126 005c 274A     		ldr	r2, .L3+44
 127 005e 1A60     		str	r2, [r3]
  80:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  81:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	/* Nollställ fält */
  82:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*SYSCFG_EXTICR1 &= 0xFFFF0000;
 128              		.loc 1 82 0
 129 0060 274B     		ldr	r3, .L3+48
 130 0062 274A     		ldr	r2, .L3+48
 131 0064 1268     		ldr	r2, [r2]
 132 0066 120C     		lsrs	r2, r2, #16
 133 0068 1204     		lsls	r2, r2, #16
 134 006a 1A60     		str	r2, [r3]
  83:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	/* PE3 -> EXTI3*/
  84:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*SYSCFG_EXTICR1 |= 0x00004444;
 135              		.loc 1 84 0
 136 006c 244B     		ldr	r3, .L3+48
 137 006e 244A     		ldr	r2, .L3+48
 138 0070 1268     		ldr	r2, [r2]
 139 0072 2449     		ldr	r1, .L3+52
 140 0074 0A43     		orrs	r2, r1
 141 0076 1A60     		str	r2, [r3]
  85:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	
  86:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_IMR |= EXTI2_IRQ_BPOS;
 142              		.loc 1 86 0
 143 0078 234B     		ldr	r3, .L3+56
 144 007a 234A     		ldr	r2, .L3+56
 145 007c 1268     		ldr	r2, [r2]
 146 007e 0421     		movs	r1, #4
 147 0080 0A43     		orrs	r2, r1
 148 0082 1A60     		str	r2, [r3]
  87:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_IMR |= EXTI1_IRQ_BPOS;
 149              		.loc 1 87 0
 150 0084 204B     		ldr	r3, .L3+56
 151 0086 204A     		ldr	r2, .L3+56
 152 0088 1268     		ldr	r2, [r2]
 153 008a 0221     		movs	r1, #2
 154 008c 0A43     		orrs	r2, r1
 155 008e 1A60     		str	r2, [r3]
  88:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_IMR |= EXTI0_IRQ_BPOS;
 156              		.loc 1 88 0
 157 0090 1D4B     		ldr	r3, .L3+56
 158 0092 1D4A     		ldr	r2, .L3+56
 159 0094 1268     		ldr	r2, [r2]
 160 0096 0121     		movs	r1, #1
 161 0098 0A43     		orrs	r2, r1
 162 009a 1A60     		str	r2, [r3]
  89:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	
  90:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_FTSR |= EXTI2_IRQ_BPOS;
 163              		.loc 1 90 0
 164 009c 1B4B     		ldr	r3, .L3+60
 165 009e 1B4A     		ldr	r2, .L3+60
 166 00a0 1268     		ldr	r2, [r2]
 167 00a2 0421     		movs	r1, #4
 168 00a4 0A43     		orrs	r2, r1
 169 00a6 1A60     		str	r2, [r3]
  91:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_FTSR |= EXTI1_IRQ_BPOS;
 170              		.loc 1 91 0
 171 00a8 184B     		ldr	r3, .L3+60
 172 00aa 184A     		ldr	r2, .L3+60
 173 00ac 1268     		ldr	r2, [r2]
 174 00ae 0221     		movs	r1, #2
 175 00b0 0A43     		orrs	r2, r1
 176 00b2 1A60     		str	r2, [r3]
  92:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_FTSR |= EXTI0_IRQ_BPOS;
 177              		.loc 1 92 0
 178 00b4 154B     		ldr	r3, .L3+60
 179 00b6 154A     		ldr	r2, .L3+60
 180 00b8 1268     		ldr	r2, [r2]
 181 00ba 0121     		movs	r1, #1
 182 00bc 0A43     		orrs	r2, r1
 183 00be 1A60     		str	r2, [r3]
  93:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	
  94:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_RTSR &= 0;
 184              		.loc 1 94 0
 185 00c0 134B     		ldr	r3, .L3+64
 186 00c2 1B68     		ldr	r3, [r3]
 187 00c4 124B     		ldr	r3, .L3+64
 188 00c6 0022     		movs	r2, #0
 189 00c8 1A60     		str	r2, [r3]
  95:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** }
 190              		.loc 1 95 0
 191 00ca C046     		nop
 192 00cc BD46     		mov	sp, r7
 193              		@ sp needed
 194 00ce 80BD     		pop	{r7, pc}
 195              	.L4:
 196              		.align	2
 197              	.L3:
 198 00d0 00100240 		.word	1073876992
 199 00d4 000C0240 		.word	1073875968
 200 00d8 55550000 		.word	21845
 201 00dc 55555555 		.word	1431655765
 202 00e0 150C0240 		.word	1073875989
 203 00e4 00E100E0 		.word	-536813312
 204 00e8 58C00120 		.word	536985688
 205 00ec 00000000 		.word	irq_handler_EXTI0
 206 00f0 5CC00120 		.word	536985692
 207 00f4 00000000 		.word	irq_handler_EXTI1
 208 00f8 60C00120 		.word	536985696
 209 00fc 00000000 		.word	irq_handler_EXTI2
 210 0100 08380140 		.word	1073821704
 211 0104 44440000 		.word	17476
 212 0108 003C0140 		.word	1073822720
 213 010c 0C3C0140 		.word	1073822732
 214 0110 083C0140 		.word	1073822728
 215              		.cfi_endproc
 216              	.LFE1:
 218              		.align	1
 219              		.global	irq_handler_EXTI0
 220              		.syntax unified
 221              		.code	16
 222              		.thumb_func
 223              		.fpu softvfp
 225              	irq_handler_EXTI0:
 226              	.LFB2:
  96:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
  97:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void irq_handler_EXTI0(void){
 227              		.loc 1 97 0
 228              		.cfi_startproc
 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 1, uses_anonymous_args = 0
 231 0114 80B5     		push	{r7, lr}
 232              		.cfi_def_cfa_offset 8
 233              		.cfi_offset 7, -8
 234              		.cfi_offset 14, -4
 235 0116 00AF     		add	r7, sp, #0
 236              		.cfi_def_cfa_register 7
  98:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_PR |= EXTI0_IRQ_BPOS;
 237              		.loc 1 98 0
 238 0118 064B     		ldr	r3, .L6
 239 011a 064A     		ldr	r2, .L6
 240 011c 1268     		ldr	r2, [r2]
 241 011e 0121     		movs	r1, #1
 242 0120 0A43     		orrs	r2, r1
 243 0122 1A60     		str	r2, [r3]
  99:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	count++;
 244              		.loc 1 99 0
 245 0124 044B     		ldr	r3, .L6+4
 246 0126 1B68     		ldr	r3, [r3]
 247 0128 5A1C     		adds	r2, r3, #1
 248 012a 034B     		ldr	r3, .L6+4
 249 012c 1A60     		str	r2, [r3]
 100:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** }
 250              		.loc 1 100 0
 251 012e C046     		nop
 252 0130 BD46     		mov	sp, r7
 253              		@ sp needed
 254 0132 80BD     		pop	{r7, pc}
 255              	.L7:
 256              		.align	2
 257              	.L6:
 258 0134 143C0140 		.word	1073822740
 259 0138 00000000 		.word	count
 260              		.cfi_endproc
 261              	.LFE2:
 263              		.align	1
 264              		.global	irq_handler_EXTI1
 265              		.syntax unified
 266              		.code	16
 267              		.thumb_func
 268              		.fpu softvfp
 270              	irq_handler_EXTI1:
 271              	.LFB3:
 101:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void irq_handler_EXTI1(void){
 272              		.loc 1 101 0
 273              		.cfi_startproc
 274              		@ args = 0, pretend = 0, frame = 0
 275              		@ frame_needed = 1, uses_anonymous_args = 0
 276 013c 80B5     		push	{r7, lr}
 277              		.cfi_def_cfa_offset 8
 278              		.cfi_offset 7, -8
 279              		.cfi_offset 14, -4
 280 013e 00AF     		add	r7, sp, #0
 281              		.cfi_def_cfa_register 7
 102:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 			*EXTI_PR |= EXTI1_IRQ_BPOS;
 282              		.loc 1 102 0
 283 0140 054B     		ldr	r3, .L9
 284 0142 054A     		ldr	r2, .L9
 285 0144 1268     		ldr	r2, [r2]
 286 0146 0221     		movs	r1, #2
 287 0148 0A43     		orrs	r2, r1
 288 014a 1A60     		str	r2, [r3]
 103:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 			count = 0;
 289              		.loc 1 103 0
 290 014c 034B     		ldr	r3, .L9+4
 291 014e 0022     		movs	r2, #0
 292 0150 1A60     		str	r2, [r3]
 104:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** }
 293              		.loc 1 104 0
 294 0152 C046     		nop
 295 0154 BD46     		mov	sp, r7
 296              		@ sp needed
 297 0156 80BD     		pop	{r7, pc}
 298              	.L10:
 299              		.align	2
 300              	.L9:
 301 0158 143C0140 		.word	1073822740
 302 015c 00000000 		.word	count
 303              		.cfi_endproc
 304              	.LFE3:
 306              		.align	1
 307              		.global	irq_handler_EXTI2
 308              		.syntax unified
 309              		.code	16
 310              		.thumb_func
 311              		.fpu softvfp
 313              	irq_handler_EXTI2:
 314              	.LFB4:
 105:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void irq_handler_EXTI2(void){
 315              		.loc 1 105 0
 316              		.cfi_startproc
 317              		@ args = 0, pretend = 0, frame = 0
 318              		@ frame_needed = 1, uses_anonymous_args = 0
 319 0160 80B5     		push	{r7, lr}
 320              		.cfi_def_cfa_offset 8
 321              		.cfi_offset 7, -8
 322              		.cfi_offset 14, -4
 323 0162 00AF     		add	r7, sp, #0
 324              		.cfi_def_cfa_register 7
 106:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*EXTI_PR |= EXTI2_IRQ_BPOS;
 325              		.loc 1 106 0
 326 0164 074B     		ldr	r3, .L12
 327 0166 074A     		ldr	r2, .L12
 328 0168 1268     		ldr	r2, [r2]
 329 016a 0421     		movs	r1, #4
 330 016c 0A43     		orrs	r2, r1
 331 016e 1A60     		str	r2, [r3]
 107:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	*PORT_D_OdrHigh = ~*PORT_D_OdrHigh;
 332              		.loc 1 107 0
 333 0170 054A     		ldr	r2, .L12+4
 334 0172 054B     		ldr	r3, .L12+4
 335 0174 1B78     		ldrb	r3, [r3]
 336 0176 DBB2     		uxtb	r3, r3
 337 0178 DB43     		mvns	r3, r3
 338 017a DBB2     		uxtb	r3, r3
 339 017c 1370     		strb	r3, [r2]
 108:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** }
 340              		.loc 1 108 0
 341 017e C046     		nop
 342 0180 BD46     		mov	sp, r7
 343              		@ sp needed
 344 0182 80BD     		pop	{r7, pc}
 345              	.L13:
 346              		.align	2
 347              	.L12:
 348 0184 143C0140 		.word	1073822740
 349 0188 150C0240 		.word	1073875989
 350              		.cfi_endproc
 351              	.LFE4:
 353              		.align	1
 354              		.global	main
 355              		.syntax unified
 356              		.code	16
 357              		.thumb_func
 358              		.fpu softvfp
 360              	main:
 361              	.LFB5:
 109:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 
 110:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** void main(void){
 362              		.loc 1 110 0
 363              		.cfi_startproc
 364              		@ args = 0, pretend = 0, frame = 0
 365              		@ frame_needed = 1, uses_anonymous_args = 0
 366 018c 80B5     		push	{r7, lr}
 367              		.cfi_def_cfa_offset 8
 368              		.cfi_offset 7, -8
 369              		.cfi_offset 14, -4
 370 018e 00AF     		add	r7, sp, #0
 371              		.cfi_def_cfa_register 7
 111:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	app_init();
 372              		.loc 1 111 0
 373 0190 FFF7FEFF 		bl	app_init
 374              	.L15:
 112:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 	while(1){
 113:C:/Users/Jogus/Documents/Studier/Programing/Moppen/Labborationer/WorkBook/flipflop_irq_vec\flipflop_irq_vec.c **** 		*PORT_D_OdrLow = count;
 375              		.loc 1 113 0 discriminator 1
 376 0194 024A     		ldr	r2, .L16
 377 0196 034B     		ldr	r3, .L16+4
 378 0198 1B68     		ldr	r3, [r3]
 379 019a DBB2     		uxtb	r3, r3
 380 019c 1370     		strb	r3, [r2]
 381 019e F9E7     		b	.L15
 382              	.L17:
 383              		.align	2
 384              	.L16:
 385 01a0 140C0240 		.word	1073875988
 386 01a4 00000000 		.word	count
 387              		.cfi_endproc
 388              	.LFE5:
 390              	.Letext0:
