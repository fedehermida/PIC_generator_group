# 1 "newmain.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "newmain.c" 2








# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 1 3
# 18 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\xc8debug.h" 1 3
# 13 "C:\\Program Files\\Microchip\\xc8\\v2.20\\pic\\include\\c90\\xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 2 3



# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 1 3




# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\htc.h" 1 3



# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 1 3
# 5 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\htc.h" 2 3
# 6 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 2 3







# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic_chip_select.h" 1 3
# 408 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic_chip_select.h" 3
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 1 3
# 44 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\__at.h" 1 3
# 45 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 2 3







extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");




extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");




extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");




extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 159 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");




extern volatile unsigned char PORTA __attribute__((address(0x005)));

__asm("PORTA equ 05h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x005)));
# 216 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PORTB __attribute__((address(0x006)));

__asm("PORTB equ 06h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x006)));
# 278 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PORTC __attribute__((address(0x007)));

__asm("PORTC equ 07h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned RC3 :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0x007)));
# 340 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");


typedef union {
    struct {
        unsigned PCLATH :5;
    };
} PCLATHbits_t;
extern volatile PCLATHbits_t PCLATHbits __attribute__((address(0x00A)));
# 360 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INTF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INTE :1;
        unsigned TMR0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :2;
        unsigned T0IF :1;
        unsigned :2;
        unsigned T0IE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 438 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x00C)));

__asm("PIR1 equ 0Ch");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x00C)));
# 494 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x00D)));

__asm("PIR2 equ 0Dh");


typedef union {
    struct {
        unsigned CCP2IF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x00D)));
# 514 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00E)));

__asm("TMR1 equ 0Eh");




extern volatile unsigned char TMR1L __attribute__((address(0x00E)));

__asm("TMR1L equ 0Eh");




extern volatile unsigned char TMR1H __attribute__((address(0x00F)));

__asm("TMR1H equ 0Fh");




extern volatile unsigned char T1CON __attribute__((address(0x010)));

__asm("T1CON equ 010h");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
    };
    struct {
        unsigned :2;
        unsigned T1INSYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x010)));
# 601 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x011)));

__asm("TMR2 equ 011h");




extern volatile unsigned char T2CON __attribute__((address(0x012)));

__asm("T2CON equ 012h");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned TOUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned TOUTPS0 :1;
        unsigned TOUTPS1 :1;
        unsigned TOUTPS2 :1;
        unsigned TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x012)));
# 679 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char SSPBUF __attribute__((address(0x013)));

__asm("SSPBUF equ 013h");




extern volatile unsigned char SSPCON __attribute__((address(0x014)));

__asm("SSPCON equ 014h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCONbits_t;
extern volatile SSPCONbits_t SSPCONbits __attribute__((address(0x014)));
# 756 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0x015)));

__asm("CCPR1 equ 015h");




extern volatile unsigned char CCPR1L __attribute__((address(0x015)));

__asm("CCPR1L equ 015h");




extern volatile unsigned char CCPR1H __attribute__((address(0x016)));

__asm("CCPR1H equ 016h");




extern volatile unsigned char CCP1CON __attribute__((address(0x017)));

__asm("CCP1CON equ 017h");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned CCP1Y :1;
        unsigned CCP1X :1;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0x017)));
# 835 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0x018)));

__asm("RCSTA equ 018h");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned RCD8 :1;
        unsigned :5;
        unsigned RC9 :1;
    };
    struct {
        unsigned :6;
        unsigned nRC8 :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x018)));
# 925 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char TXREG __attribute__((address(0x019)));

__asm("TXREG equ 019h");




extern volatile unsigned char RCREG __attribute__((address(0x01A)));

__asm("RCREG equ 01Ah");




extern volatile unsigned short CCPR2 __attribute__((address(0x01B)));

__asm("CCPR2 equ 01Bh");




extern volatile unsigned char CCPR2L __attribute__((address(0x01B)));

__asm("CCPR2L equ 01Bh");




extern volatile unsigned char CCPR2H __attribute__((address(0x01C)));

__asm("CCPR2H equ 01Ch");




extern volatile unsigned char CCP2CON __attribute__((address(0x01D)));

__asm("CCP2CON equ 01Dh");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned CCP2Y :1;
        unsigned CCP2X :1;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0x01D)));
# 1018 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char ADRES __attribute__((address(0x01E)));

__asm("ADRES equ 01Eh");


typedef union {
    struct {
        unsigned ADRES :8;
    };
} ADRESbits_t;
extern volatile ADRESbits_t ADRESbits __attribute__((address(0x01E)));
# 1038 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x01F)));

__asm("ADCON0 equ 01Fh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned :1;
        unsigned GO_nDONE :1;
        unsigned CHS :3;
        unsigned ADCS :2;
    };
    struct {
        unsigned :2;
        unsigned GO :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
    };
    struct {
        unsigned :2;
        unsigned nDONE :1;
    };
    struct {
        unsigned :2;
        unsigned GO_DONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01F)));
# 1134 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 1204 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char TRISA __attribute__((address(0x085)));

__asm("TRISA equ 085h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x085)));
# 1254 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char TRISB __attribute__((address(0x086)));

__asm("TRISB equ 086h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x086)));
# 1316 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char TRISC __attribute__((address(0x087)));

__asm("TRISC equ 087h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned TRISC3 :1;
        unsigned TRISC4 :1;
        unsigned TRISC5 :1;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0x087)));
# 1378 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x08C)));

__asm("PIE1 equ 08Ch");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x08C)));
# 1434 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x08D)));

__asm("PIE2 equ 08Dh");


typedef union {
    struct {
        unsigned CCP2IE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x08D)));
# 1454 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PCON __attribute__((address(0x08E)));

__asm("PCON equ 08Eh");


typedef union {
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
    };
    struct {
        unsigned nBO :1;
    };
} PCONbits_t;
extern volatile PCONbits_t PCONbits __attribute__((address(0x08E)));
# 1488 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x092)));

__asm("PR2 equ 092h");




extern volatile unsigned char SSPADD __attribute__((address(0x093)));

__asm("SSPADD equ 093h");




extern volatile unsigned char SSPSTAT __attribute__((address(0x094)));

__asm("SSPSTAT equ 094h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned :2;
        unsigned D :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DATA :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x094)));
# 1671 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0x098)));

__asm("TXSTA equ 098h");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TXD8 :1;
        unsigned :5;
        unsigned nTX8 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x098)));
# 1752 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char SPBRG __attribute__((address(0x099)));

__asm("SPBRG equ 099h");




extern volatile unsigned char ADCON1 __attribute__((address(0x09F)));

__asm("ADCON1 equ 09Fh");


typedef union {
    struct {
        unsigned PCFG :3;
    };
    struct {
        unsigned PCFG0 :1;
        unsigned PCFG1 :1;
        unsigned PCFG2 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x09F)));
# 1799 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile unsigned char PMDATA __attribute__((address(0x10C)));

__asm("PMDATA equ 010Ch");




extern volatile unsigned char PMADR __attribute__((address(0x10D)));

__asm("PMADR equ 010Dh");




extern volatile unsigned char PMDATH __attribute__((address(0x10E)));

__asm("PMDATH equ 010Eh");




extern volatile unsigned char PMADRH __attribute__((address(0x10F)));

__asm("PMADRH equ 010Fh");




extern volatile unsigned char PMCON1 __attribute__((address(0x18C)));

__asm("PMCON1 equ 018Ch");


typedef union {
    struct {
        unsigned RD :1;
    };
} PMCON1bits_t;
extern volatile PMCON1bits_t PMCON1bits __attribute__((address(0x18C)));
# 1853 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\proc\\pic16f73.h" 3
extern volatile __bit ADCS0 __attribute__((address(0xFE)));


extern volatile __bit ADCS1 __attribute__((address(0xFF)));


extern volatile __bit ADIE __attribute__((address(0x466)));


extern volatile __bit ADIF __attribute__((address(0x66)));


extern volatile __bit ADON __attribute__((address(0xF8)));


extern volatile __bit BF __attribute__((address(0x4A0)));


extern volatile __bit BRGH __attribute__((address(0x4C2)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CCP1IE __attribute__((address(0x462)));


extern volatile __bit CCP1IF __attribute__((address(0x62)));


extern volatile __bit CCP1M0 __attribute__((address(0xB8)));


extern volatile __bit CCP1M1 __attribute__((address(0xB9)));


extern volatile __bit CCP1M2 __attribute__((address(0xBA)));


extern volatile __bit CCP1M3 __attribute__((address(0xBB)));


extern volatile __bit CCP1X __attribute__((address(0xBD)));


extern volatile __bit CCP1Y __attribute__((address(0xBC)));


extern volatile __bit CCP2IE __attribute__((address(0x468)));


extern volatile __bit CCP2IF __attribute__((address(0x68)));


extern volatile __bit CCP2M0 __attribute__((address(0xE8)));


extern volatile __bit CCP2M1 __attribute__((address(0xE9)));


extern volatile __bit CCP2M2 __attribute__((address(0xEA)));


extern volatile __bit CCP2M3 __attribute__((address(0xEB)));


extern volatile __bit CCP2X __attribute__((address(0xED)));


extern volatile __bit CCP2Y __attribute__((address(0xEC)));


extern volatile __bit CHS0 __attribute__((address(0xFB)));


extern volatile __bit CHS1 __attribute__((address(0xFC)));


extern volatile __bit CHS2 __attribute__((address(0xFD)));


extern volatile __bit CKE __attribute__((address(0x4A6)));


extern volatile __bit CKP __attribute__((address(0xA4)));


extern volatile __bit CREN __attribute__((address(0xC4)));


extern volatile __bit CSRC __attribute__((address(0x4C7)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x4A5)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit D_A __attribute__((address(0x4A5)));


extern volatile __bit D_nA __attribute__((address(0x4A5)));


extern volatile __bit FERR __attribute__((address(0xC2)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO __attribute__((address(0xFA)));


extern volatile __bit GO_DONE __attribute__((address(0xFA)));


extern volatile __bit GO_nDONE __attribute__((address(0xFA)));


extern volatile __bit I2C_DATA __attribute__((address(0x4A5)));


extern volatile __bit I2C_READ __attribute__((address(0x4A2)));


extern volatile __bit I2C_START __attribute__((address(0x4A3)));


extern volatile __bit I2C_STOP __attribute__((address(0x4A4)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit OERR __attribute__((address(0xC1)));


extern volatile __bit PCFG0 __attribute__((address(0x4F8)));


extern volatile __bit PCFG1 __attribute__((address(0x4F9)));


extern volatile __bit PCFG2 __attribute__((address(0x4FA)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit RA0 __attribute__((address(0x28)));


extern volatile __bit RA1 __attribute__((address(0x29)));


extern volatile __bit RA2 __attribute__((address(0x2A)));


extern volatile __bit RA3 __attribute__((address(0x2B)));


extern volatile __bit RA4 __attribute__((address(0x2C)));


extern volatile __bit RA5 __attribute__((address(0x2D)));


extern volatile __bit RB0 __attribute__((address(0x30)));


extern volatile __bit RB1 __attribute__((address(0x31)));


extern volatile __bit RB2 __attribute__((address(0x32)));


extern volatile __bit RB3 __attribute__((address(0x33)));


extern volatile __bit RB4 __attribute__((address(0x34)));


extern volatile __bit RB5 __attribute__((address(0x35)));


extern volatile __bit RB6 __attribute__((address(0x36)));


extern volatile __bit RB7 __attribute__((address(0x37)));


extern volatile __bit RBIE __attribute__((address(0x5B)));


extern volatile __bit RBIF __attribute__((address(0x58)));


extern volatile __bit RC0 __attribute__((address(0x38)));


extern volatile __bit RC1 __attribute__((address(0x39)));


extern volatile __bit RC2 __attribute__((address(0x3A)));


extern volatile __bit RC3 __attribute__((address(0x3B)));


extern volatile __bit RC4 __attribute__((address(0x3C)));


extern volatile __bit RC5 __attribute__((address(0x3D)));


extern volatile __bit RC6 __attribute__((address(0x3E)));


extern volatile __bit RC7 __attribute__((address(0x3F)));


extern volatile __bit RC8_9 __attribute__((address(0xC6)));


extern volatile __bit RC9 __attribute__((address(0xC6)));


extern volatile __bit RCD8 __attribute__((address(0xC0)));


extern volatile __bit RCIE __attribute__((address(0x465)));


extern volatile __bit RCIF __attribute__((address(0x65)));


extern volatile __bit RD __attribute__((address(0xC60)));


extern volatile __bit READ_WRITE __attribute__((address(0x4A2)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit RX9 __attribute__((address(0xC6)));


extern volatile __bit RX9D __attribute__((address(0xC0)));


extern volatile __bit R_W __attribute__((address(0x4A2)));


extern volatile __bit R_nW __attribute__((address(0x4A2)));


extern volatile __bit SMP __attribute__((address(0x4A7)));


extern volatile __bit SPEN __attribute__((address(0xC7)));


extern volatile __bit SREN __attribute__((address(0xC5)));


extern volatile __bit SSPEN __attribute__((address(0xA5)));


extern volatile __bit SSPIE __attribute__((address(0x463)));


extern volatile __bit SSPIF __attribute__((address(0x63)));


extern volatile __bit SSPM0 __attribute__((address(0xA0)));


extern volatile __bit SSPM1 __attribute__((address(0xA1)));


extern volatile __bit SSPM2 __attribute__((address(0xA2)));


extern volatile __bit SSPM3 __attribute__((address(0xA3)));


extern volatile __bit SSPOV __attribute__((address(0xA6)));


extern volatile __bit SYNC __attribute__((address(0x4C4)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKPS0 __attribute__((address(0x84)));


extern volatile __bit T1CKPS1 __attribute__((address(0x85)));


extern volatile __bit T1INSYNC __attribute__((address(0x82)));


extern volatile __bit T1OSCEN __attribute__((address(0x83)));


extern volatile __bit T2CKPS0 __attribute__((address(0x90)));


extern volatile __bit T2CKPS1 __attribute__((address(0x91)));


extern volatile __bit TMR0IE __attribute__((address(0x5D)));


extern volatile __bit TMR0IF __attribute__((address(0x5A)));


extern volatile __bit TMR1CS __attribute__((address(0x81)));


extern volatile __bit TMR1IE __attribute__((address(0x460)));


extern volatile __bit TMR1IF __attribute__((address(0x60)));


extern volatile __bit TMR1ON __attribute__((address(0x80)));


extern volatile __bit TMR2IE __attribute__((address(0x461)));


extern volatile __bit TMR2IF __attribute__((address(0x61)));


extern volatile __bit TMR2ON __attribute__((address(0x92)));


extern volatile __bit TOUTPS0 __attribute__((address(0x93)));


extern volatile __bit TOUTPS1 __attribute__((address(0x94)));


extern volatile __bit TOUTPS2 __attribute__((address(0x95)));


extern volatile __bit TOUTPS3 __attribute__((address(0x96)));


extern volatile __bit TRISA0 __attribute__((address(0x428)));


extern volatile __bit TRISA1 __attribute__((address(0x429)));


extern volatile __bit TRISA2 __attribute__((address(0x42A)));


extern volatile __bit TRISA3 __attribute__((address(0x42B)));


extern volatile __bit TRISA4 __attribute__((address(0x42C)));


extern volatile __bit TRISA5 __attribute__((address(0x42D)));


extern volatile __bit TRISB0 __attribute__((address(0x430)));


extern volatile __bit TRISB1 __attribute__((address(0x431)));


extern volatile __bit TRISB2 __attribute__((address(0x432)));


extern volatile __bit TRISB3 __attribute__((address(0x433)));


extern volatile __bit TRISB4 __attribute__((address(0x434)));


extern volatile __bit TRISB5 __attribute__((address(0x435)));


extern volatile __bit TRISB6 __attribute__((address(0x436)));


extern volatile __bit TRISB7 __attribute__((address(0x437)));


extern volatile __bit TRISC0 __attribute__((address(0x438)));


extern volatile __bit TRISC1 __attribute__((address(0x439)));


extern volatile __bit TRISC2 __attribute__((address(0x43A)));


extern volatile __bit TRISC3 __attribute__((address(0x43B)));


extern volatile __bit TRISC4 __attribute__((address(0x43C)));


extern volatile __bit TRISC5 __attribute__((address(0x43D)));


extern volatile __bit TRISC6 __attribute__((address(0x43E)));


extern volatile __bit TRISC7 __attribute__((address(0x43F)));


extern volatile __bit TRMT __attribute__((address(0x4C1)));


extern volatile __bit TX8_9 __attribute__((address(0x4C6)));


extern volatile __bit TX9 __attribute__((address(0x4C6)));


extern volatile __bit TX9D __attribute__((address(0x4C0)));


extern volatile __bit TXD8 __attribute__((address(0x4C0)));


extern volatile __bit TXEN __attribute__((address(0x4C5)));


extern volatile __bit TXIE __attribute__((address(0x464)));


extern volatile __bit TXIF __attribute__((address(0x64)));


extern volatile __bit UA __attribute__((address(0x4A1)));


extern volatile __bit WCOL __attribute__((address(0xA7)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nA __attribute__((address(0x4A5)));


extern volatile __bit nADDRESS __attribute__((address(0x4A5)));


extern volatile __bit nBO __attribute__((address(0x470)));


extern volatile __bit nBOR __attribute__((address(0x470)));


extern volatile __bit nDONE __attribute__((address(0xFA)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nPOR __attribute__((address(0x471)));


extern volatile __bit nRBPU __attribute__((address(0x40F)));


extern volatile __bit nRC8 __attribute__((address(0xC6)));


extern volatile __bit nT1SYNC __attribute__((address(0x82)));


extern volatile __bit nTO __attribute__((address(0x1C)));


extern volatile __bit nTX8 __attribute__((address(0x4C6)));


extern volatile __bit nW __attribute__((address(0x4A2)));


extern volatile __bit nWRITE __attribute__((address(0x4A2)));
# 409 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic_chip_select.h" 2 3
# 14 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 2 3
# 30 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\eeprom_routines.h" 1 3
# 86 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 2 3





#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
# 137 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 28 "C:/Program Files (x86)/Microchip/MPLABX/v5.40/packs/Microchip/PIC16Fxxx_DFP/1.2.33/xc8\\pic\\include\\xc.h" 2 3
# 10 "newmain.c" 2

#pragma config WDTE = OFF, PWRTE = OFF, FOSC = HS






void ADC_selectorCanal(unsigned short int canal);
void ADC_setear_Clock();
void ADC_ON();
void ADC_start_conversion();
void ADC_stop_conversion();
unsigned int ADC_readValue();
void leer_canales();
void activarPrecalentamiento();
void activarCombustible();
void activarArranque();
void apagarMotor();
void leerPulsadores();
void accionesPulsadores();
void leer_combustible_onoff_cargaBat();
void accionar_combustible_onoff_cargaBat();
void leer_temperatura_presion();
void accionar_temperatura_presion();
void configuracion_inicial();
void leer_tension_grupo();
void accionar_tension_grupo();
void leer_tension_linea();
void titilar_led_manual();
void encender_led_red_disponible();
void apagar_led_red_disponible();
void encender_alarma();
void apagar_led_uso_linea();
void encenderTransferencia();
void grupo_disponible();
void grupo_en_uso();
void funcion_minima();
void desactivar_uso_de_red();
void apagar_grupo_en_uso();
void apagar_grupo_disponible();
void activar_uso_de_red();
void apagar_funcion_minima();
void desactivar_combustible();
void refrigeracion_de_grupo();
void apagar_grupo();
void reintentar_inicio();
void iniciar_equipo();
void desactivarEquipo();
void desactivarTensionGrupo();


enum{

    INDICE_PULSADORES,
    INDICE_COMBUSTIBLE,
    INDICE_TEMPERATURA_PRESION,
    INDICE_TENSION_LINEA,
    INDICE_TENSION_DE_GRUPO


};

typedef struct estado{

    unsigned short int temp_pre;
    unsigned short int pulsadores;
    unsigned short int combustibles;
    unsigned short int tension_linea;
    unsigned short int tension_grupo;

}estados;

enum {

    TEYPRE_TEMPALTA,
    TEYPRE_OK,
    TEYPRE_ERRORAMBAS,
    TEYPRE_PREBAJA



};

enum {
    PULSAD_NADA,
    PULSAD_ON,
    PULSAD_OFF,
    PULSAD_MANUAL,
    PULSAD_AUTO

};

enum {
    V_LINE_220,
    V_LINE_210,
    V_LINE_200,
    V_LINE_190,
    V_LINE_180


};

enum {
    V_GRUP_OK,
    V_GRUP_ERROR,
    V_GRUP_SIN_TENSION

};

enum {
    RED_TENSION,
    TRANSFERENCIA_GRUPO,
    GRUPO_EN_USO,
    TRANSFERENCIA_RED

};


estados estado;

unsigned short int lectura[5] = {0};
# 158 "newmain.c"
unsigned short int flag_inicio_grupo = 0;
unsigned short int flag_parpadeo_automatico = 0;
unsigned short int flag_inicio_red = 0;
unsigned int led_manual = 0;
unsigned short int flag_hubo_falla = 0;
unsigned short int flag_equipo_en_marcha = 0;
unsigned short int reintentar_arranque = 0;


int main()
{





  TRISB = 0;
  TRISC = 0;


  TRISA = 0xFF;


   ADCON1 = 0b00000000;
   ADCON0 = 0b00000000;


   ADC_setear_Clock();


   configuracion_inicial();

  while(1)
  {


      leer_canales();




      leer_tension_linea();



      titilar_led_manual();



      switch(estado.tension_linea){
          case RED_TENSION:

              encender_led_red_disponible();


              break;

          case TRANSFERENCIA_GRUPO:
              desactivar_uso_de_red();
              apagar_led_red_disponible();
              activarCombustible();
              activarPrecalentamiento();
              activarArranque();
              encenderTransferencia();
              grupo_disponible();
              grupo_en_uso();
              funcion_minima();
              leer_canales();
              leer_tension_grupo();
              accionar_tension_grupo();

              if((estado.tension_grupo != V_GRUP_OK) && (flag_hubo_falla == 0)){
                  reintentar_inicio();
              }

              estado.tension_linea = GRUPO_EN_USO;


              break;
          case GRUPO_EN_USO:

              leer_tension_grupo();

              if(estado.tension_grupo == V_GRUP_ERROR || estado.tension_grupo == V_GRUP_SIN_TENSION){
                  flag_hubo_falla = 1;
                  desactivarTensionGrupo();
              }

              accionar_tension_grupo();

              if((estado.tension_grupo == V_GRUP_OK) && (flag_hubo_falla == 0)){

                leer_temperatura_presion();
                accionar_temperatura_presion();

              }

              break;
          case TRANSFERENCIA_RED:

              apagar_grupo_en_uso();
              encenderTransferencia();
              apagar_grupo_disponible();
              encender_led_red_disponible();
              activar_uso_de_red();
              refrigeracion_de_grupo();
              desactivar_combustible();
              estado.tension_linea = RED_TENSION;

              break;
          default:
              break;
      }





  }

  return 0;
}

void ADC_selectorCanal(unsigned short int canal){

    ADCON0 = (ADCON0 & 0b11000111) | (canal << 3);
    _delay((unsigned long)((20)*(4000000/4000.0)));
}


void ADC_setear_Clock(){


   ADCON0 |= 0b10000000;


}

void ADC_ON(){

       ADCON0 |= 0b00000001;
       _delay((unsigned long)((20)*(4000000/4000.0)));


}


void ADC_start_conversion(){


    ADCON0 |= 0x4;


}


void ADC_stop_conversion(){

    ADCON0 &= 0xfb;

}


unsigned int ADC_readValue(){
    return ADRES;
}


void leer_canales(){

    unsigned short int canal = 0;


    while(canal < 5){
    ADC_ON();

    ADC_selectorCanal(canal);

      if((!(ADCON0 & 0b00000100))){
          ADC_start_conversion();
      }

      while((!(!(ADCON0 & 0b00000100)))){
            _delay((unsigned long)((20)*(4000000/4000.0)));

      }


      lectura[canal] = ADC_readValue();
      canal ++;
      ADC_stop_conversion();
    }

}

void refrigeracion_de_grupo(){
    unsigned short int contador = 0;

    while(contador < 60){
    _delay((unsigned long)((1000)*(4000000/4000.0)));
    contador++;
    }

}
void desactivar_combustible(){
    RC1 = 0;
    _delay((unsigned long)((2000)*(4000000/4000.0)));

}

void apagar_grupo(){

    if(flag_hubo_falla == 0){
       RC1 = 0;
       RC5 = 0;
       RB4 = 1;
       encender_alarma();
       flag_hubo_falla = 1;
    }

}


void titilar_led_manual(){


        RC4 = 0;
       _delay((unsigned long)((1000)*(4000000/4000.0)));
        RC4 = 1;


}

void activar_uso_de_red(){
    RC6 = 0;
}




void desactivar_uso_de_red(){
    RC6 = 1;
}


void encender_led_red_disponible(){

    RB5 = 0;

}

void apagar_led_red_disponible(){


        RB5 = 1;

}

void encender_alarma(){



        RC2 = 1;


}



void activarPrecalentamiento(){




    RC7 = 1;
    _delay((unsigned long)((2000)*(4000000/4000.0)));
    RC7 = 0;


}


void activarArranque(){





    RB6 = 1;
    _delay((unsigned long)((8000)*(4000000/4000.0)));
    RB6 = 0;


}

void apagar_led_uso_linea(){
    RC6 = 0;
}
void prender_led_uso_grupo(){
    RC5 = 1;
}


void activarCombustible(){




    RC1 = 1;
    _delay((unsigned long)((2000)*(4000000/4000.0)));


}

void encenderTransferencia(){
    unsigned short int counter = 0;
    while(counter < 10){

    RB3 = 0;
    _delay((unsigned long)((300)*(4000000/4000.0)));
    RB3 = 1;
    counter = counter + 1;
    }
}



void apagar_grupo_disponible(){
    RB4 = 1;
    _delay((unsigned long)((1000)*(4000000/4000.0)));
}

void grupo_disponible(){
    RB4 = 0;
    _delay((unsigned long)((1000)*(4000000/4000.0)));
}
void grupo_en_uso(){
    RC5 = 1;
    _delay((unsigned long)((1000)*(4000000/4000.0)));
}

void apagar_grupo_en_uso(){
    RC5 = 0;
    _delay((unsigned long)((1000)*(4000000/4000.0)));
}

void funcion_minima(){

    RB3 = 0;
    _delay((unsigned long)((15000)*(4000000/4000.0)));
    RB3 = 1;

}

void apagar_funcion_minima(){
    RB3 = 1;
}

void apagarMotor(){




    RC2 = 1;

}


void leerPulsadores(){




    if(lectura[INDICE_PULSADORES] < 15){
         estado.pulsadores = PULSAD_ON;
    }
    if(lectura[INDICE_PULSADORES] >= 15 && lectura[INDICE_PULSADORES] < 50 ){
        estado.pulsadores = PULSAD_OFF;
    }

    if(lectura[INDICE_PULSADORES] >= 50 && lectura[INDICE_PULSADORES] < 100 ){
        estado.pulsadores = PULSAD_MANUAL;
    }
    if(lectura[INDICE_PULSADORES] >= 100 && lectura[INDICE_PULSADORES] < 150){
        estado.pulsadores = PULSAD_AUTO;
    }
    if(lectura[INDICE_PULSADORES] >= 150){
        estado.pulsadores = PULSAD_NADA;
    }



}

void accionesPulsadores(){

    switch (estado.pulsadores){

        case PULSAD_NADA:


            break;
        case PULSAD_ON:

            break;
        case PULSAD_OFF:

            break;
        case PULSAD_MANUAL:
            configuracion_inicial();
            _delay((unsigned long)((100)*(4000000/4000.0)));
            break;
        case PULSAD_AUTO:

            break;
        default:
            break;

    }

}


void leer_combustible_onoff_cargaBat(){




    if(lectura[INDICE_COMBUSTIBLE] >= 240){
        estado.combustibles = 0;

    }
    if(lectura[INDICE_COMBUSTIBLE] >= 200 && lectura[INDICE_COMBUSTIBLE] < 240 ){




        estado.combustibles = 1;
    }

    if(lectura[INDICE_COMBUSTIBLE] >= 160 && lectura[INDICE_COMBUSTIBLE] < 200){




        estado.combustibles = 2;
    }
    if(lectura[INDICE_COMBUSTIBLE] >= 140 && lectura[INDICE_COMBUSTIBLE] < 160){




        estado.combustibles = 3;
    }
    if(lectura[INDICE_COMBUSTIBLE] >= 120 && lectura[INDICE_COMBUSTIBLE] < 140){





        estado.combustibles = 4;
    }
    if(lectura[INDICE_COMBUSTIBLE] >= 107 && lectura[INDICE_COMBUSTIBLE] < 120){




        estado.combustibles = 5;
    }
    if(lectura[INDICE_COMBUSTIBLE] >= 100 && lectura[INDICE_COMBUSTIBLE] < 107){




        estado.combustibles = 6;
    }
    if(lectura[INDICE_COMBUSTIBLE] < 100){




        estado.combustibles = 7;

    }



}
void accionar_combustible_onoff_cargaBat(){




    switch(estado.combustibles){
        case 0:






        RB0 = 0;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;estado.tension_linea = GRUPO_EN_USO;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
# 675 "newmain.c"
        break;


        case 1:






        RB0 = 1;
        RB1 = 0;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;


        break;


        case 2:




        RB0 = 1;
        RB1 = 1;
        RB2 = 0;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
        break;

        case 3:




            RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 0;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
            break;

        case 4:




        RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 0;
        RB5 = 1;
        RC0 = 1;
        RC3 = 1;
        break;

        case 5:




        RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 0;
        RC0 = 1;
        RC3 = 1;
        break;

        case 6:




        RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 0;
        RC3 = 1;
        break;

        case 7:




        RB0 = 1;
        RB1 = 1;
        RB2 = 1;
        RB3 = 1;
        RB4 = 1;
        RB5 = 1;
        RC0 = 1;
        RC3 = 0;
        break;
    }



}


void leer_temperatura_presion(){


    if(lectura[INDICE_TEMPERATURA_PRESION] <= 105){
        estado.temp_pre = TEYPRE_ERRORAMBAS;
    }
    if(lectura[INDICE_TEMPERATURA_PRESION] > 105 && lectura[INDICE_TEMPERATURA_PRESION] <= 135){
        estado.temp_pre = TEYPRE_PREBAJA;
    }
    if(lectura[INDICE_TEMPERATURA_PRESION] > 135 && lectura[INDICE_TEMPERATURA_PRESION] <= 190){
        estado.temp_pre =TEYPRE_TEMPALTA;
    }
    if(lectura[INDICE_TEMPERATURA_PRESION] > 190 && lectura[INDICE_TEMPERATURA_PRESION] <= 255){
        estado.temp_pre = TEYPRE_OK;
    }





}

void accionar_temperatura_presion(){

    switch(estado.temp_pre){
        case TEYPRE_ERRORAMBAS:



            apagar_grupo();


            RB2 = 0;
            RC0 = 0;

            break;
        case TEYPRE_PREBAJA:



            apagar_grupo();





            RC0 = 0;
            RB2 = 1;




            break;
        case TEYPRE_TEMPALTA:



            apagar_grupo();


            RB2 = 1;
            RC0 = 0;

            break;
        case TEYPRE_OK:


            RB2 = 1;
            RC0 = 1;

            break;
        default:
            break;
    }




}






void leer_tension_linea(){

    unsigned short int no_iniciar = 4000 / 1000;
    unsigned short int verificar_red = 45000 / 1000;

    if(lectura[INDICE_TENSION_LINEA] >= 113){


        if(estado.tension_linea == GRUPO_EN_USO){

            flag_inicio_red = flag_inicio_red + 1;

            if(flag_inicio_red > verificar_red){
                estado.tension_linea = TRANSFERENCIA_RED;
                flag_inicio_red = 0;
                return;
            }

            return;

        }



        estado.tension_linea = RED_TENSION;
        flag_inicio_grupo = 0;



    }
    else{


        if(estado.tension_linea == GRUPO_EN_USO){
            flag_inicio_red = 0;
            return;
        }

        flag_inicio_grupo = flag_inicio_grupo + 1;

        if(flag_inicio_grupo > no_iniciar && flag_hubo_falla == 0){
            estado.tension_linea = TRANSFERENCIA_GRUPO;
            flag_inicio_grupo = 0;
            return;
        }

    }





}




void leer_tension_grupo(){


    if(lectura[INDICE_TENSION_DE_GRUPO] >= 113){
        estado.tension_grupo = V_GRUP_OK;
    }


    if(lectura[INDICE_TENSION_DE_GRUPO] >= 50 && lectura[INDICE_TENSION_DE_GRUPO] < 113){
        estado.tension_grupo = V_GRUP_ERROR;
    }


    if(lectura[INDICE_TENSION_DE_GRUPO] < 50){
        estado.tension_grupo = V_GRUP_SIN_TENSION;
    }



}
void accionar_tension_grupo(){
    switch(estado.tension_grupo){
        case V_GRUP_OK:

            RB0 = 1;
            flag_equipo_en_marcha = 1;
            reintentar_arranque = 0;

            break;

        case V_GRUP_ERROR:



            if(flag_hubo_falla != 0){
            apagar_grupo();
            RB0 = 0;
            break;

            }


        case V_GRUP_SIN_TENSION:

            if(reintentar_arranque == 2){
                apagar_grupo();

                RC3 = 0;
                break;
            }

            if(flag_hubo_falla != 0){
                apagar_grupo();
                RC3 = 0;
                break;
            }

            break;

    }
}

void reintentar_inicio(){
    desactivarEquipo();
    reintentar_arranque++;
    iniciar_equipo();

    if((estado.tension_grupo != V_GRUP_OK) && (flag_hubo_falla == 0)){
        desactivarEquipo();
        iniciar_equipo();
        reintentar_arranque++;
        if((estado.tension_grupo != V_GRUP_OK) && (flag_hubo_falla == 0)){
            accionar_tension_grupo();
        }

     }


    estado.tension_linea = GRUPO_EN_USO;

}

void iniciar_equipo(){
    desactivar_uso_de_red();
    apagar_led_red_disponible();
    activarCombustible();
    activarPrecalentamiento();
    activarArranque();
    encenderTransferencia();
    grupo_disponible();
    grupo_en_uso();
    funcion_minima();
    leer_canales();
    leer_tension_grupo();
    accionar_tension_grupo();

}


void desactivarEquipo(){
    apagar_grupo_en_uso();
    apagar_grupo_disponible();
    desactivar_combustible();
    _delay((unsigned long)((20000)*(4000000/4000.0)));
    _delay((unsigned long)((10000)*(4000000/4000.0)));

}

void desactivarTensionGrupo(){
    apagar_grupo_en_uso();
    apagar_grupo_disponible();
    desactivar_combustible();
    encender_alarma();
}


void configuracion_inicial(){
    RC0 = 1;
    RC1 = 0;
    RC2 = 0;
    RC3 = 1;
    RC4 = 1;
    RC5 = 0;
    RC6 = 0;
    RC7 = 0;

    RB0 = 1;
    RB1 = 1;
    RB2 = 1;
    RB3 = 1;
    RB4 = 1;
    RB5 = 1;
    RB6 = 0;
    flag_hubo_falla = 0;
    flag_inicio_grupo = 0;
    flag_parpadeo_automatico = 0;
    flag_inicio_red = 0;
    led_manual = 0;
    flag_equipo_en_marcha = 0;
    reintentar_arranque = 0;
    estado.tension_grupo = RED_TENSION;

}
