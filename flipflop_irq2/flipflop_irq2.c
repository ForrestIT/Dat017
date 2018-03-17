/*
 * 	startup.c
 *
 */
void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	"_exit: B .\n"				/* never return */
	) ;
}
#define PORT_E 0x40021000
#define PORT_E_Moder ((volatile unsigned int*) (PORT_E))
#define PORT_E_Otyper ((volatile unsigned short *) (PORT_E+0x4))
#define PORT_E_Ospeedr ((volatile unsigned int *) (PORT_E+0x8))
#define PORT_E_Pupdr ((volatile unsigned int *) (PORT_E+0xC1))
#define PORT_E_IdrLow ((volatile unsigned short *) (PORT_E+0x10))
#define PORT_E_IdrHigh ((volatile unsigned char *) (PORT_E+0x11))
#define PORT_E_OdrLow ((volatile unsigned char *) (PORT_E+0x14))
#define PORT_E_OdrHigh ((volatile unsigned char *) (PORT_E+0x14+1)) 

#define PORT_D 0x40020C00
#define PORT_D_Moder ((volatile unsigned int*) (PORT_D))
#define PORT_D_Otyper ((volatile unsigned short *) (PORT_D+0x4))
#define PORT_D_Ospeedr ((volatile unsigned int *) (PORT_D+0x8))
#define PORT_D_Pupdr ((volatile unsigned int *) (PORT_D+0xC))
#define PORT_D_IdrLow ((volatile unsigned short *) (PORT_D+0x10))
#define PORT_D_IdrHigh ((volatile unsigned char *) (PORT_D+0x11))
#define PORT_D_OdrLow ((volatile unsigned char *) (PORT_D+0x14))
#define PORT_D_OdrHigh ((volatile unsigned char *) (PORT_D+0x14+1))
 
#define EXTI 0x40013C00
#define EXTI_IMR ((volatile unsigned int*)(EXTI)) 
#define EXTI_RTSR ((volatile unsigned int*)(EXTI + 8))
#define EXTI_FTSR ((volatile unsigned int*)(EXTI + 0xC))
#define EXTI_PR ((volatile unsigned int*) (EXTI + 0x14))

#define EXTI0_IRQ_BPOS 1
#define EXTI1_IRQ_BPOS (1<<1)
#define EXTI2_IRQ_BPOS (1<<2)
#define EXTI3_IRQ_BPOS (1<<3)


#define NVIC 0xE000E100
#define NVIC_ISER0 ((volatile unsigned int*)(NVIC))
#define NVIC_EXTI3_IRQ_BPOS 1<<9
#define NVIC_EXTI2_IRQ_BPOS 1<<8
#define NVIC_EXTI1_IRQ_BPOS 1<<7
#define NVIC_EXTI0_IRQ_BPOS 1<<6

#define SYSCFG_EXTICR1 ((volatile unsigned int*) (0x40013808))

#define EXTI3_IRQVEC ((void(**)(void))0x2001C064)

static volatile int count = 0;

void irq_handler(void);

void app_init(void){
	*PORT_E_Moder = 0;
	*PORT_D_Moder &= 0;
	*PORT_D_Moder |= 0x55555555;
	
	*PORT_D_OdrHigh = 0;
	/* aktiverar NVIC för EXTI3*/
	*NVIC_ISER0 |= NVIC_EXTI3_IRQ_BPOS;

	*EXTI3_IRQVEC = irq_handler;

	/* Nollställ fält */
	*SYSCFG_EXTICR1 &= 0xFFFF0000;
	/* EXTI3, EXTI2, EXTI1, EXTI0 -> PE */
	*SYSCFG_EXTICR1 |= 0x00004444;
	/* Aktivera EXTI0 EXTI1, EXTI2 och EXTI3 för avbrott */
	*EXTI_IMR |= 0x0F;
	/*
	*EXTI_IMR |= EXTI3_IRQ_BPOS;
	*EXTI_IMR |= EXTI2_IRQ_BPOS;
	*EXTI_IMR |= EXTI1_IRQ_BPOS;
	*EXTI_IMR |= EXTI0_IRQ_BPOS;
	/* EXTI0 EXTI1, EXTI2 och EXTI3 sätt till att generera avbrott  på negativ flank*/
	*EXTI_FTSR |= 0x0F;
	/*
	*EXTI_FTSR |= EXTI3_IRQ_BPOS;
	*EXTI_FTSR |= EXTI2_IRQ_BPOS;
	*EXTI_FTSR |= EXTI1_IRQ_BPOS;
	*EXTI_FTSR |= EXTI0_IRQ_BPOS;
	/* Försäkran om att Ingen av pinnarna genererar avbrott på positiv flank*/
	*EXTI_RTSR &= 0;
	


}

void irq_handler(void){
	if(*EXTI_PR & EXTI3_IRQ_BPOS){
		if(*EXTI_PR & EXTI0_IRQ_BPOS){
			*EXTI_PR |= EXTI0_IRQ_BPOS;
			count++;
		}
		else if(*EXTI_PR & EXTI1_IRQ_BPOS){
			*EXTI_PR |= EXTI1_IRQ_BPOS;
			count = 0;
		}
		else if(*EXTI_PR & EXTI2_IRQ_BPOS){
			*EXTI_PR |= EXTI2_IRQ_BPOS;
			*PORT_D_OdrHigh = ~*PORT_D_OdrHigh;
		}

		*EXTI_PR |= EXTI3_IRQ_BPOS;
	}
}

void main(void){
	app_init();
	while(1){
		*PORT_D_OdrLow = count;
	}
}


