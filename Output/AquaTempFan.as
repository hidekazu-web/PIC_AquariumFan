opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 47796"

opt pagewidth 120

	opt lm

	processor	16F88
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 46 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 463 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 469 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 481 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T1CON equ 010h ;# 
# 552 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR2 equ 011h ;# 
# 558 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T2CON equ 012h ;# 
# 628 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 634 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPCON equ 014h ;# 
# 703 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 709 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 715 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 721 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 778 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCSTA equ 018h ;# 
# 872 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXREG equ 019h ;# 
# 878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 890 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 985 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1054 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISA equ 085h ;# 
# 1115 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISB equ 086h ;# 
# 1176 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1231 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1264 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1297 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1367 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1424 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PR2 equ 092h ;# 
# 1430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1436 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1684 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1745 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1814 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1931 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1988 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1994 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2000 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2006 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2012 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2062 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 463 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 469 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 481 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T1CON equ 010h ;# 
# 552 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR2 equ 011h ;# 
# 558 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T2CON equ 012h ;# 
# 628 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 634 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPCON equ 014h ;# 
# 703 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 709 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 715 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 721 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 778 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCSTA equ 018h ;# 
# 872 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXREG equ 019h ;# 
# 878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 890 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 985 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1054 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISA equ 085h ;# 
# 1115 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISB equ 086h ;# 
# 1176 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1231 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1264 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1297 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1367 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1424 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PR2 equ 092h ;# 
# 1430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1436 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1684 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1745 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1814 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1931 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1988 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1994 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2000 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2006 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2012 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2062 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 463 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 469 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 481 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T1CON equ 010h ;# 
# 552 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR2 equ 011h ;# 
# 558 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T2CON equ 012h ;# 
# 628 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 634 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPCON equ 014h ;# 
# 703 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 709 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 715 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 721 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 778 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCSTA equ 018h ;# 
# 872 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXREG equ 019h ;# 
# 878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 890 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 985 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1054 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISA equ 085h ;# 
# 1115 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISB equ 086h ;# 
# 1176 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1231 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1264 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1297 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1367 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1424 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PR2 equ 092h ;# 
# 1430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1436 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1684 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1745 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1814 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1931 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1988 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1994 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2000 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2006 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2012 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2062 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 463 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 469 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 481 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T1CON equ 010h ;# 
# 552 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR2 equ 011h ;# 
# 558 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T2CON equ 012h ;# 
# 628 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 634 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPCON equ 014h ;# 
# 703 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 709 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 715 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 721 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 778 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCSTA equ 018h ;# 
# 872 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXREG equ 019h ;# 
# 878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 890 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 985 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1054 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISA equ 085h ;# 
# 1115 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISB equ 086h ;# 
# 1176 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1231 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1264 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1297 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1367 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1424 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PR2 equ 092h ;# 
# 1430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1436 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1684 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1745 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1814 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1931 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1988 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1994 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2000 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2006 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2012 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2062 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 463 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 469 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 481 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T1CON equ 010h ;# 
# 552 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR2 equ 011h ;# 
# 558 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T2CON equ 012h ;# 
# 628 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 634 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPCON equ 014h ;# 
# 703 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 709 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 715 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 721 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 778 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCSTA equ 018h ;# 
# 872 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXREG equ 019h ;# 
# 878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 890 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 985 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1054 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISA equ 085h ;# 
# 1115 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISB equ 086h ;# 
# 1176 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1231 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1264 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1297 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1367 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1424 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PR2 equ 092h ;# 
# 1430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1436 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1684 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1745 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1814 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1931 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1988 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1994 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2000 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2006 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2012 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2062 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 463 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 469 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 481 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T1CON equ 010h ;# 
# 552 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR2 equ 011h ;# 
# 558 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T2CON equ 012h ;# 
# 628 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 634 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPCON equ 014h ;# 
# 703 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 709 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 715 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 721 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 778 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCSTA equ 018h ;# 
# 872 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXREG equ 019h ;# 
# 878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 890 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 985 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1054 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISA equ 085h ;# 
# 1115 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISB equ 086h ;# 
# 1176 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1231 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1264 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1297 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1367 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1424 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PR2 equ 092h ;# 
# 1430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1436 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1684 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1745 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1814 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1931 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1988 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1994 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2000 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2006 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2012 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2062 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 463 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 469 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 481 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T1CON equ 010h ;# 
# 552 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR2 equ 011h ;# 
# 558 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T2CON equ 012h ;# 
# 628 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 634 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPCON equ 014h ;# 
# 703 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 709 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 715 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 721 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 778 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCSTA equ 018h ;# 
# 872 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXREG equ 019h ;# 
# 878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 890 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 985 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1054 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISA equ 085h ;# 
# 1115 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISB equ 086h ;# 
# 1176 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1231 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1264 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1297 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1367 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1424 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PR2 equ 092h ;# 
# 1430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1436 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1684 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1745 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1814 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1931 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1988 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1994 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2000 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2006 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2012 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2062 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON2 equ 018Dh ;# 
# 46 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INDF equ 00h ;# 
# 52 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR0 equ 01h ;# 
# 58 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCL equ 02h ;# 
# 64 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
STATUS equ 03h ;# 
# 151 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
FSR equ 04h ;# 
# 157 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTA equ 05h ;# 
# 218 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PORTB equ 06h ;# 
# 279 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCLATH equ 0Ah ;# 
# 298 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
INTCON equ 0Bh ;# 
# 375 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR1 equ 0Ch ;# 
# 430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIR2 equ 0Dh ;# 
# 463 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1 equ 0Eh ;# 
# 469 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1L equ 0Eh ;# 
# 475 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR1H equ 0Fh ;# 
# 481 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T1CON equ 010h ;# 
# 552 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TMR2 equ 011h ;# 
# 558 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
T2CON equ 012h ;# 
# 628 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPBUF equ 013h ;# 
# 634 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPCON equ 014h ;# 
# 703 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1 equ 015h ;# 
# 709 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1L equ 015h ;# 
# 715 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCPR1H equ 016h ;# 
# 721 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CCP1CON equ 017h ;# 
# 778 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCSTA equ 018h ;# 
# 872 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXREG equ 019h ;# 
# 878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
RCREG equ 01Ah ;# 
# 884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESH equ 01Eh ;# 
# 890 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON0 equ 01Fh ;# 
# 985 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OPTION_REG equ 081h ;# 
# 1054 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISA equ 085h ;# 
# 1115 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TRISB equ 086h ;# 
# 1176 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE1 equ 08Ch ;# 
# 1231 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PIE2 equ 08Dh ;# 
# 1264 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PCON equ 08Eh ;# 
# 1297 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCCON equ 08Fh ;# 
# 1367 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
OSCTUNE equ 090h ;# 
# 1424 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
PR2 equ 092h ;# 
# 1430 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPADD equ 093h ;# 
# 1436 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SSPSTAT equ 094h ;# 
# 1604 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
TXSTA equ 098h ;# 
# 1684 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
SPBRG equ 099h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ANSEL equ 09Bh ;# 
# 1745 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CMCON equ 09Ch ;# 
# 1814 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
CVRCON equ 09Dh ;# 
# 1878 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADRESL equ 09Eh ;# 
# 1884 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
ADCON1 equ 09Fh ;# 
# 1931 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
WDTCON equ 0105h ;# 
# 1988 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATA equ 010Ch ;# 
# 1994 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADR equ 010Dh ;# 
# 2000 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEDATH equ 010Eh ;# 
# 2006 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EEADRH equ 010Fh ;# 
# 2012 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON1 equ 018Ch ;# 
# 2062 "C:\Program Files\Microchip\xc8\v1.10\include\pic16f88.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_hw_init
	FNCALL	_main,_int_init
	FNCALL	_main,_vfd_data_init
	FNCALL	_main,_vfd_init
	FNCALL	_main,_InttoAscii
	FNCALL	_main,_strcpy
	FNCALL	_main,_strcat
	FNCALL	_main,_vfd_write
	FNCALL	_hw_init,_Adc_init
	FNCALL	_vfd_data_init,_strcpy
	FNCALL	_vfd_init,_vfd_write
	FNCALL	_vfd_init,_strcpy
	FNCALL	_InttoAscii,___wmul
	FNCALL	_InttoAscii,_Power
	FNCALL	_InttoAscii,___aldiv
	FNCALL	_InttoAscii,___almod
	FNCALL	_Power,___lmul
	FNROOT	_main
	FNCALL	intlevel1,_int_ctrl
	global	intlevel1
	FNROOT	intlevel1
	global	_ADConvertFlag
	global	_Cycle_Unit
	global	_T05_Counter
	global	_ADC_DATA_BUF
	global	_Adc_Data
	global	_Adc_data
	global	_T1_Counter
	global	_AdcDataGetFlag
	global	_Disp_State
	global	_Upside_Data
	global	_Vfd_Data
	global	_Downside_Data
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PIR1
_PIR1	set	0xC
	global	_PORTA
_PORTA	set	0x5
	global	_PORTB
_PORTB	set	0x6
	global	_TMR0
_TMR0	set	0x1
	global	_TXREG
_TXREG	set	0x19
	global	_ADIF
_ADIF	set	0x66
	global	_ADON
_ADON	set	0xF8
	global	_GIE
_GIE	set	0x5F
	global	_GO_nDONE
_GO_nDONE	set	0xFA
	global	_INT0IE
_INT0IE	set	0x5C
	global	_INT0IF
_INT0IF	set	0x59
	global	_PEIE
_PEIE	set	0x5E
	global	_RB2
_RB2	set	0x32
	global	_RB3
_RB3	set	0x33
	global	_RB5
_RB5	set	0x35
	global	_RBIE
_RBIE	set	0x5B
	global	_RBIF
_RBIF	set	0x58
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_ANSEL
_ANSEL	set	0x9B
	global	_OSCCON
_OSCCON	set	0x8F
	global	_OSCTUNE
_OSCTUNE	set	0x90
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_ADIE
_ADIE	set	0x466
	global	_CCP1IE
_CCP1IE	set	0x462
	global	_INTEDG
_INTEDG	set	0x40E
	global	_PS0
_PS0	set	0x408
	global	_PS1
_PS1	set	0x409
	global	_PS2
_PS2	set	0x40A
	global	_PSA
_PSA	set	0x40B
	global	_RCIE
_RCIE	set	0x465
	global	_SSPIE
_SSPIE	set	0x463
	global	_T0CS
_T0CS	set	0x40D
	global	_T0SE
_T0SE	set	0x40C
	global	_TMR1IE
_TMR1IE	set	0x460
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_TXIE
_TXIE	set	0x464
	global	_nRBPU
_nRBPU	set	0x40F
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_3:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	111	;'o'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	48	;'0'
	retlw	49	;'1'
	retlw	50	;'2'
	retlw	51	;'3'
	retlw	52	;'4'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	55	;'7'
	retlw	56	;'8'
	retlw	57	;'9'
	retlw	65	;'A'
	retlw	66	;'B'
	retlw	67	;'C'
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_1:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
STR_2	equ	STR_1+0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_FOSC$INTOSCIO
__CFG_FOSC$INTOSCIO equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
	file	"AquaTempFan.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ADConvertFlag:
       ds      1

_Cycle_Unit:
       ds      1

_T05_Counter:
       ds      1

_ADC_DATA_BUF:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Adc_Data:
       ds      2

_Adc_data:
       ds      2

_T1_Counter:
       ds      2

_errno:
       ds      2

_AdcDataGetFlag:
       ds      1

_Disp_State:
       ds      1

_Upside_Data:
       ds      17

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_Vfd_Data:
       ds      33

_Downside_Data:
       ds      17

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Bh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+032h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
?_vfd_data_init:	; 0 bytes @ 0x0
?_vfd_init:	; 0 bytes @ 0x0
?_vfd_write:	; 0 bytes @ 0x0
?_Adc_init:	; 0 bytes @ 0x0
?_hw_init:	; 0 bytes @ 0x0
?_int_init:	; 0 bytes @ 0x0
?_int_ctrl:	; 0 bytes @ 0x0
??_int_ctrl:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	5
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
??_vfd_write:	; 0 bytes @ 0x0
??_Adc_init:	; 0 bytes @ 0x0
??_hw_init:	; 0 bytes @ 0x0
??_int_init:	; 0 bytes @ 0x0
	global	?_strcpy
?_strcpy:	; 1 bytes @ 0x0
	global	?_strcat
?_strcat:	; 1 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	strcat@from
strcat@from:	; 1 bytes @ 0x0
	global	strcpy@from
strcpy@from:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	1
??_strcat:	; 0 bytes @ 0x1
	ds	1
??_strcpy:	; 0 bytes @ 0x2
	global	vfd_write@data
vfd_write@data:	; 1 bytes @ 0x2
	global	strcat@to
strcat@to:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	vfd_write@i
vfd_write@i:	; 1 bytes @ 0x3
	global	strcat@cp
strcat@cp:	; 1 bytes @ 0x3
	ds	1
??___wmul:	; 0 bytes @ 0x4
	global	vfd_write@txdata
vfd_write@txdata:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	1
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x5
	ds	1
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x6
	ds	1
??_vfd_data_init:	; 0 bytes @ 0x7
??_vfd_init:	; 0 bytes @ 0x7
	ds	1
??___lmul:	; 0 bytes @ 0x8
	global	vfd_init@busy_flag
vfd_init@busy_flag:	; 1 bytes @ 0x8
	ds	1
	global	vfd_init@i
vfd_init@i:	; 1 bytes @ 0x9
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	4
	global	?_Power
?_Power:	; 4 bytes @ 0xD
	global	Power@data
Power@data:	; 4 bytes @ 0xD
	ds	4
	global	Power@num
Power@num:	; 1 bytes @ 0x11
	ds	1
??_Power:	; 0 bytes @ 0x12
	ds	1
	global	Power@i
Power@i:	; 1 bytes @ 0x13
	ds	1
	global	Power@result
Power@result:	; 4 bytes @ 0x14
	ds	4
	global	?___almod
?___almod:	; 4 bytes @ 0x18
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x18
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x18
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x18
	ds	4
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x1C
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x1C
	ds	4
??___almod:	; 0 bytes @ 0x20
??___aldiv:	; 0 bytes @ 0x20
	ds	1
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x21
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x21
	ds	1
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x22
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x22
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x23
	ds	4
	global	?_InttoAscii
?_InttoAscii:	; 0 bytes @ 0x27
	global	InttoAscii@data
InttoAscii@data:	; 2 bytes @ 0x27
	ds	2
	global	InttoAscii@ascii
InttoAscii@ascii:	; 1 bytes @ 0x29
	ds	1
??_InttoAscii:	; 0 bytes @ 0x2A
	ds	2
	global	InttoAscii@flg
InttoAscii@flg:	; 1 bytes @ 0x2C
	ds	1
	global	InttoAscii@databuf
InttoAscii@databuf:	; 1 bytes @ 0x2D
	ds	1
	global	InttoAscii@dec
InttoAscii@dec:	; 1 bytes @ 0x2E
	ds	1
	global	InttoAscii@i
InttoAscii@i:	; 1 bytes @ 0x2F
	ds	1
??_main:	; 0 bytes @ 0x30
	ds	1
	global	main@i
main@i:	; 1 bytes @ 0x31
	ds	1
;!
;!Data Sizes:
;!    Strings     51
;!    Constant    0
;!    Data        0
;!    BSS         82
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      10
;!    BANK0            80     50      77
;!    BANK1            80      0      50
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    ?___lmul	unsigned long  size(1) Largest target is 0
;!
;!    ?___almod	long  size(1) Largest target is 2
;!		 -> ADC_DATA_BUF(COMMON[2]), 
;!
;!    ?___aldiv	long  size(1) Largest target is 0
;!
;!    ?_Power	long  size(1) Largest target is 0
;!
;!    ?___wmul	unsigned int  size(1) Largest target is 0
;!
;!    ?_strcat	PTR unsigned char  size(1) Largest target is 33
;!		 -> Vfd_Data(BANK1[33]), 
;!
;!    ?_strcpy	PTR unsigned char  size(1) Largest target is 33
;!		 -> Downside_Data(BANK1[17]), Vfd_Data(BANK1[33]), Upside_Data(BANK0[17]), 
;!
;!    strcpy@from	PTR const unsigned char  size(2) Largest target is 17
;!		 -> STR_4(CODE[17]), STR_3(CODE[17]), STR_2(CODE[17]), STR_1(CODE[17]), 
;!		 -> Upside_Data(BANK0[17]), 
;!
;!    strcpy@to	PTR unsigned char  size(1) Largest target is 33
;!		 -> Downside_Data(BANK1[17]), Vfd_Data(BANK1[33]), Upside_Data(BANK0[17]), 
;!
;!    strcpy@cp	PTR unsigned char  size(1) Largest target is 33
;!		 -> Downside_Data(BANK1[17]), Vfd_Data(BANK1[33]), Upside_Data(BANK0[17]), 
;!
;!    strcat@from	PTR const unsigned char  size(1) Largest target is 17
;!		 -> Downside_Data(BANK1[17]), 
;!
;!    strcat@to	PTR unsigned char  size(1) Largest target is 33
;!		 -> Vfd_Data(BANK1[33]), 
;!
;!    strcat@cp	PTR unsigned char  size(1) Largest target is 33
;!		 -> Vfd_Data(BANK1[33]), 
;!
;!    InttoAscii@ascii	PTR unsigned char  size(1) Largest target is 17
;!		 -> Upside_Data(BANK0[17]), 
;!
;!    sp__strcat	PTR unsigned char  size(1) Largest target is 33
;!		 -> Vfd_Data(BANK1[33]), 
;!
;!    sp__strcpy	PTR unsigned char  size(1) Largest target is 33
;!		 -> Downside_Data(BANK1[17]), Vfd_Data(BANK1[33]), Upside_Data(BANK0[17]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _int_ctrl in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_InttoAscii
;!    _vfd_data_init->_strcpy
;!    _vfd_init->_strcpy
;!    _InttoAscii->___aldiv
;!    _Power->___lmul
;!    ___almod->_Power
;!    ___aldiv->_Power
;!
;!Critical Paths under _int_ctrl in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _int_ctrl in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _int_ctrl in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _int_ctrl in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0    3093
;!                                             48 BANK0      2     2      0
;!                            _hw_init
;!                           _int_init
;!                      _vfd_data_init
;!                           _vfd_init
;!                         _InttoAscii
;!                             _strcpy
;!                             _strcat
;!                          _vfd_write
;! ---------------------------------------------------------------------------------
;! (1) _hw_init                                              0     0      0       0
;!                           _Adc_init
;! ---------------------------------------------------------------------------------
;! (2) _Adc_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _int_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _vfd_data_init                                        1     1      0     103
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (1) _vfd_init                                             3     3      0     514
;!                                              7 BANK0      3     3      0
;!                          _vfd_write
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (1) _InttoAscii                                           9     6      3    1970
;!                                             39 BANK0      9     6      3
;!                             ___wmul
;!                              _Power
;!                            ___aldiv
;!                            ___almod
;! ---------------------------------------------------------------------------------
;! (2) _strcpy                                               7     5      2     103
;!                                              0 BANK0      7     5      2
;! ---------------------------------------------------------------------------------
;! (1) _strcat                                               4     3      1     137
;!                                              0 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _vfd_write                                            5     5      0     167
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (2) _Power                                               11     6      5     303
;!                                             13 BANK0     11     6      5
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     136
;!                                              0 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              13     5      8     136
;!                                              0 BANK0     13     5      8
;! ---------------------------------------------------------------------------------
;! (2) ___almod                                             11     3      8     433
;!                                             24 BANK0     11     3      8
;!                              _Power (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             15     7      8     445
;!                                             24 BANK0     15     7      8
;!                              _Power (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _int_ctrl                                             5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _hw_init
;!     _Adc_init
;!   _int_init
;!   _vfd_data_init
;!     _strcpy
;!   _vfd_init
;!     _vfd_write
;!     _strcpy
;!   _InttoAscii
;!     ___wmul
;!     _Power
;!       ___lmul
;!     ___aldiv
;!       _Power (ARG)
;!         ___lmul
;!     ___almod
;!       _Power (ARG)
;!         ___lmul
;!   _strcpy
;!   _strcat
;!   _vfd_write
;!
;! _int_ctrl (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      5       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       3       2        0.0%
;!ABS                  0      0      89       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     32      4D       5       96.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0      32       7       62.5%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      8C      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 21 in file "C:\PIC_WorkSpace\AquaTempFan\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_hw_init
;;		_int_init
;;		_vfd_data_init
;;		_vfd_init
;;		_InttoAscii
;;		_strcpy
;;		_strcat
;;		_vfd_write
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\PIC_WorkSpace\AquaTempFan\main.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [allreg]
	line	24
	
l6843:	
;main.c: 22: unsigned char i;
;main.c: 24: hw_init();
	fcall	_hw_init
	line	25
	
l6845:	
;main.c: 25: int_init();
	fcall	_int_init
	line	26
	
l6847:	
;main.c: 26: vfd_data_init();
	fcall	_vfd_data_init
	line	27
	
l6849:	
;main.c: 27: vfd_init();
	fcall	_vfd_init
	line	28
	
l6851:	
;main.c: 28: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	30
;main.c: 30: while(1){
	
l2438:	
	line	32
;main.c: 32: if(AdcDataGetFlag)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_AdcDataGetFlag),w	;volatile
	skipz
	goto	u1250
	goto	l6857
u1250:
	line	34
	
l6853:	
;main.c: 33: {
;main.c: 34: AdcDataGetFlag = 0;
	clrf	(_AdcDataGetFlag)	;volatile
	line	35
	
l6855:	
;main.c: 35: Adc_data = Adc_Data&0x03FF;
	movlw	low(03FFh)
	andwf	(_Adc_Data),w	;volatile
	movwf	(_Adc_data)	;volatile
	movlw	high(03FFh)
	andwf	(_Adc_Data+1),w	;volatile
	movwf	1+(_Adc_data)	;volatile
	goto	l6857
	line	36
	
l2439:	
	line	39
	
l6857:	
;main.c: 36: }
;main.c: 39: InttoAscii(Adc_data, Upside_Data);
	movf	(_Adc_data+1),w	;volatile
	clrf	(?_InttoAscii+1)
	addwf	(?_InttoAscii+1)
	movf	(_Adc_data),w	;volatile
	clrf	(?_InttoAscii)
	addwf	(?_InttoAscii)

	movlw	(_Upside_Data)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(0+?_InttoAscii+02h)
	fcall	_InttoAscii
	line	40
	
l6859:	
;main.c: 40: strcpy(Vfd_Data, Upside_Data);
	movlw	(_Upside_Data&0ffh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_strcpy)
	movlw	(0x0/2)
	movwf	(?_strcpy+1)
	movlw	(_Vfd_Data)&0ffh
	fcall	_strcpy
	line	41
	
l6861:	
;main.c: 41: strcat(Vfd_Data, Downside_Data);
	movlw	(_Downside_Data)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_strcat)
	movlw	(_Vfd_Data)&0ffh
	fcall	_strcat
	line	43
	
l6863:	
;main.c: 43: vfd_write(0x0B);
	movlw	(0Bh)
	fcall	_vfd_write
	line	44
	
l6865:	
;main.c: 44: for(i = 0; i < 32; i++) vfd_write(Vfd_Data[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l6867:	
	movlw	(020h)
	subwf	(main@i),w
	skipc
	goto	u1261
	goto	u1260
u1261:
	goto	l6871
u1260:
	goto	l2438
	
l6869:	
	goto	l2438
	
l2440:	
	
l6871:	
	movf	(main@i),w
	addlw	_Vfd_Data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_vfd_write
	
l6873:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l6875:	
	movlw	(020h)
	subwf	(main@i),w
	skipc
	goto	u1271
	goto	u1270
u1271:
	goto	l6871
u1270:
	goto	l2438
	
l2441:	
	goto	l2438
	line	45
	
l2442:	
	line	30
	goto	l2438
	
l2443:	
	line	46
	
l2444:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_hw_init

;; *************** function _hw_init *****************
;; Defined at:
;;		line 9 in file "C:\PIC_WorkSpace\AquaTempFan\hw_init.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Adc_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text528,local,class=CODE,delta=2,merge=1
global __ptext528
__ptext528:	;psect for function _hw_init
psect	text528
	file	"C:\PIC_WorkSpace\AquaTempFan\hw_init.c"
	line	9
	global	__size_of_hw_init
	__size_of_hw_init	equ	__end_of_hw_init-_hw_init
	
_hw_init:	
	opt	stack 5
; Regs used in _hw_init: [wreg+status,2+status,0+pclath+cstack]
	line	10
	
l6773:	
;hw_init.c: 10: OSCTUNE = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(144)^080h	;volatile
	line	11
	
l6775:	
;hw_init.c: 11: OSCCON = 0x66;
	movlw	(066h)
	movwf	(143)^080h	;volatile
	line	14
	
l6777:	
;hw_init.c: 14: nRBPU = 1;
	bsf	(1039/8)^080h,(1039)&7	;volatile
	line	15
	
l6779:	
;hw_init.c: 15: INTEDG = 0;
	bcf	(1038/8)^080h,(1038)&7	;volatile
	line	16
	
l6781:	
;hw_init.c: 16: T0CS = 0;
	bcf	(1037/8)^080h,(1037)&7	;volatile
	line	17
	
l6783:	
;hw_init.c: 17: T0SE = 0;
	bcf	(1036/8)^080h,(1036)&7	;volatile
	line	18
	
l6785:	
;hw_init.c: 18: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7	;volatile
	line	19
	
l6787:	
;hw_init.c: 19: PS2 = 0;
	bcf	(1034/8)^080h,(1034)&7	;volatile
	line	20
	
l6789:	
;hw_init.c: 20: PS1 = 1;
	bsf	(1033/8)^080h,(1033)&7	;volatile
	line	21
	
l6791:	
;hw_init.c: 21: PS0 = 0;
	bcf	(1032/8)^080h,(1032)&7	;volatile
	line	25
	
l6793:	
;hw_init.c: 25: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	26
	
l6795:	
;hw_init.c: 26: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	27
	
l6797:	
;hw_init.c: 27: TMR0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	28
	
l6799:	
;hw_init.c: 28: INT0IE = 0;
	bcf	(92/8),(92)&7	;volatile
	line	29
	
l6801:	
;hw_init.c: 29: RBIE = 0;
	bcf	(91/8),(91)&7	;volatile
	line	30
	
l6803:	
;hw_init.c: 30: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	31
	
l6805:	
;hw_init.c: 31: INT0IF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	32
	
l6807:	
;hw_init.c: 32: RBIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	35
	
l6809:	
;hw_init.c: 35: ADIE = 1;
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	36
	
l6811:	
;hw_init.c: 36: RCIE = 0;
	bcf	(1125/8)^080h,(1125)&7	;volatile
	line	37
	
l6813:	
;hw_init.c: 37: TXIE = 0;
	bcf	(1124/8)^080h,(1124)&7	;volatile
	line	38
	
l6815:	
;hw_init.c: 38: SSPIE = 0;
	bcf	(1123/8)^080h,(1123)&7	;volatile
	line	39
	
l6817:	
;hw_init.c: 39: CCP1IE = 0;
	bcf	(1122/8)^080h,(1122)&7	;volatile
	line	40
	
l6819:	
;hw_init.c: 40: TMR2IE = 0;
	bcf	(1121/8)^080h,(1121)&7	;volatile
	line	41
	
l6821:	
;hw_init.c: 41: TMR1IE = 0;
	bcf	(1120/8)^080h,(1120)&7	;volatile
	line	44
	
l6823:	
;hw_init.c: 44: PIR1 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(12)	;volatile
	line	94
;hw_init.c: 94: TRISA = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	95
	
l6825:	
;hw_init.c: 95: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	98
	
l6827:	
;hw_init.c: 98: TRISB = 0x08;
	movlw	(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	99
;hw_init.c: 99: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	122
	
l6829:	
;hw_init.c: 122: SPBRG = 0x66;
	movlw	(066h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	123
	
l6831:	
;hw_init.c: 123: TXREG = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(25)	;volatile
	line	126
	
l6833:	
;hw_init.c: 126: TMR0 = 0;
	clrf	(1)	;volatile
	line	129
	
l6835:	
;hw_init.c: 129: Adc_init();
	fcall	_Adc_init
	line	131
	
l1200:	
	return
	opt stack 0
GLOBAL	__end_of_hw_init
	__end_of_hw_init:
	signat	_hw_init,88
	global	_Adc_init

;; *************** function _Adc_init *****************
;; Defined at:
;;		line 21 in file "C:\PIC_WorkSpace\AquaTempFan\ADC_CTRL.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_hw_init
;; This function uses a non-reentrant model
;;
psect	text529,local,class=CODE,delta=2,merge=1
global __ptext529
__ptext529:	;psect for function _Adc_init
psect	text529
	file	"C:\PIC_WorkSpace\AquaTempFan\ADC_CTRL.C"
	line	21
	global	__size_of_Adc_init
	__size_of_Adc_init	equ	__end_of_Adc_init-_Adc_init
	
_Adc_init:	
	opt	stack 5
; Regs used in _Adc_init: [wreg+status,2]
	line	22
	
l6757:	
;ADC_CTRL.C: 22: ANSEL = 0x01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(155)^080h	;volatile
	line	23
;ADC_CTRL.C: 23: ADCON1 = 0x80;
	movlw	(080h)
	movwf	(159)^080h	;volatile
	line	24
;ADC_CTRL.C: 24: ADCON0 = 0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	25
	
l6759:	
;ADC_CTRL.C: 25: ADON = 1;
	bsf	(248/8),(248)&7	;volatile
	line	27
	
l6761:	
;ADC_CTRL.C: 27: ADC_DATA_BUF.WORD = 0;
	clrf	(_ADC_DATA_BUF)	;volatile
	clrf	(_ADC_DATA_BUF+1)	;volatile
	line	28
	
l6763:	
;ADC_CTRL.C: 28: Adc_Data = 0;
	clrf	(_Adc_Data)	;volatile
	clrf	(_Adc_Data+1)	;volatile
	line	29
	
l6765:	
;ADC_CTRL.C: 29: ADConvertFlag = 0;
	clrf	(_ADConvertFlag)	;volatile
	line	30
	
l6767:	
;ADC_CTRL.C: 30: AdcDataGetFlag = 0;
	clrf	(_AdcDataGetFlag)	;volatile
	line	31
	
l6769:	
;ADC_CTRL.C: 31: Adc_data = 0;
	clrf	(_Adc_data)	;volatile
	clrf	(_Adc_data+1)	;volatile
	line	33
	
l6771:	
;ADC_CTRL.C: 33: GO_nDONE = 1;
	bsf	(250/8),(250)&7	;volatile
	line	34
	
l599:	
	return
	opt stack 0
GLOBAL	__end_of_Adc_init
	__end_of_Adc_init:
	signat	_Adc_init,88
	global	_int_init

;; *************** function _int_init *****************
;; Defined at:
;;		line 25 in file "C:\PIC_WorkSpace\AquaTempFan\interrupt_ctrl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text530,local,class=CODE,delta=2,merge=1
global __ptext530
__ptext530:	;psect for function _int_init
psect	text530
	file	"C:\PIC_WorkSpace\AquaTempFan\interrupt_ctrl.c"
	line	25
	global	__size_of_int_init
	__size_of_int_init	equ	__end_of_int_init-_int_init
	
_int_init:	
	opt	stack 6
; Regs used in _int_init: [status,2]
	line	26
	
l6837:	
;interrupt_ctrl.c: 26: TMR0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(1)	;volatile
	line	28
	
l6839:	
;interrupt_ctrl.c: 28: T05_Counter = 0;
	clrf	(_T05_Counter)
	line	29
;interrupt_ctrl.c: 29: T1_Counter = 0;
	clrf	(_T1_Counter)
	clrf	(_T1_Counter+1)
	line	30
	
l6841:	
;interrupt_ctrl.c: 30: Cycle_Unit.Byte = 0x00;
	clrf	(_Cycle_Unit)
	line	31
	
l1805:	
	return
	opt stack 0
GLOBAL	__end_of_int_init
	__end_of_int_init:
	signat	_int_init,88
	global	_vfd_data_init

;; *************** function _vfd_data_init *****************
;; Defined at:
;;		line 80 in file "C:\PIC_WorkSpace\AquaTempFan\vfd_data.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_strcpy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text531,local,class=CODE,delta=2,merge=1
global __ptext531
__ptext531:	;psect for function _vfd_data_init
psect	text531
	file	"C:\PIC_WorkSpace\AquaTempFan\vfd_data.c"
	line	80
	global	__size_of_vfd_data_init
	__size_of_vfd_data_init	equ	__end_of_vfd_data_init-_vfd_data_init
	
_vfd_data_init:	
	opt	stack 4
; Regs used in _vfd_data_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l6877:	
;vfd_data.c: 81: unsigned char i;
;vfd_data.c: 82: strcpy(Upside_Data, "   Now Loading  ");
	movlw	low((STR_3-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_Upside_Data)&0ffh
	fcall	_strcpy
	line	83
;vfd_data.c: 83: strcpy(Downside_Data, "0123456789ABCDEF");
	movlw	low((STR_4-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_Downside_Data)&0ffh
	fcall	_strcpy
	line	84
	
l3701:	
	return
	opt stack 0
GLOBAL	__end_of_vfd_data_init
	__end_of_vfd_data_init:
	signat	_vfd_data_init,88
	global	_vfd_init

;; *************** function _vfd_init *****************
;; Defined at:
;;		line 26 in file "C:\PIC_WorkSpace\AquaTempFan\vfd_ctrl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    9[BANK0 ] unsigned char 
;;  busy_flag       1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_vfd_write
;;		_strcpy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text532,local,class=CODE,delta=2,merge=1
global __ptext532
__ptext532:	;psect for function _vfd_init
psect	text532
	file	"C:\PIC_WorkSpace\AquaTempFan\vfd_ctrl.c"
	line	26
	global	__size_of_vfd_init
	__size_of_vfd_init	equ	__end_of_vfd_init-_vfd_init
	
_vfd_init:	
	opt	stack 4
; Regs used in _vfd_init: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	29
	
l6879:	
;vfd_ctrl.c: 27: unsigned char i, busy_flag;
;vfd_ctrl.c: 29: busy_flag = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(vfd_init@busy_flag)
	line	30
;vfd_ctrl.c: 30: while(RB3);
	goto	l3061
	
l3062:	
	
l3061:	
	btfsc	(51/8),(51)&7	;volatile
	goto	u1281
	goto	u1280
u1281:
	goto	l3061
u1280:
	goto	l6897
	
l3063:	
	line	31
;vfd_ctrl.c: 31: while(busy_flag == 0){
	goto	l6897
	
l3065:	
	line	32
;vfd_ctrl.c: 32: RB2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	33
;vfd_ctrl.c: 33: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	34
;vfd_ctrl.c: 34: for(i = 0; i < 100; i++)if(RB3 == 1) busy_flag = 1;
	clrf	(vfd_init@i)
	
l6881:	
	movlw	(064h)
	subwf	(vfd_init@i),w
	skipc
	goto	u1291
	goto	u1290
u1291:
	goto	l3066
u1290:
	goto	l3067
	
l6883:	
	goto	l3067
	
l3066:	
	btfss	(51/8),(51)&7	;volatile
	goto	u1301
	goto	u1300
u1301:
	goto	l6887
u1300:
	
l6885:	
	clrf	(vfd_init@busy_flag)
	bsf	status,0
	rlf	(vfd_init@busy_flag),f
	goto	l6887
	
l3068:	
	
l6887:	
	movlw	(01h)
	movwf	(??_vfd_init+0)+0
	movf	(??_vfd_init+0)+0,w
	addwf	(vfd_init@i),f
	movlw	(064h)
	subwf	(vfd_init@i),w
	skipc
	goto	u1311
	goto	u1310
u1311:
	goto	l3066
u1310:
	
l3067:	
	line	35
;vfd_ctrl.c: 35: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	36
;vfd_ctrl.c: 36: for(i = 0; i < 100; i++)if(RB3 == 1) busy_flag = 1;
	clrf	(vfd_init@i)
	
l6889:	
	movlw	(064h)
	subwf	(vfd_init@i),w
	skipc
	goto	u1321
	goto	u1320
u1321:
	goto	l3069
u1320:
	goto	l6897
	
l6891:	
	goto	l6897
	
l3069:	
	btfss	(51/8),(51)&7	;volatile
	goto	u1331
	goto	u1330
u1331:
	goto	l6895
u1330:
	
l6893:	
	clrf	(vfd_init@busy_flag)
	bsf	status,0
	rlf	(vfd_init@busy_flag),f
	goto	l6895
	
l3071:	
	
l6895:	
	movlw	(01h)
	movwf	(??_vfd_init+0)+0
	movf	(??_vfd_init+0)+0,w
	addwf	(vfd_init@i),f
	movlw	(064h)
	subwf	(vfd_init@i),w
	skipc
	goto	u1341
	goto	u1340
u1341:
	goto	l3069
u1340:
	goto	l6897
	
l3070:	
	goto	l6897
	line	37
	
l3064:	
	line	31
	
l6897:	
	movf	(vfd_init@busy_flag),w
	skipz
	goto	u1350
	goto	l3065
u1350:
	
l3072:	
	line	38
;vfd_ctrl.c: 37: }
;vfd_ctrl.c: 38: RB2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	39
	
l6899:	
;vfd_ctrl.c: 39: vfd_write(0x20);
	movlw	(020h)
	fcall	_vfd_write
	line	40
	
l6901:	
;vfd_ctrl.c: 40: for(i = 0; i < 32; i++) vfd_write(0x20);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(vfd_init@i)
	
l6903:	
	movlw	(020h)
	subwf	(vfd_init@i),w
	skipc
	goto	u1361
	goto	u1360
u1361:
	goto	l6907
u1360:
	goto	l6913
	
l6905:	
	goto	l6913
	
l3073:	
	
l6907:	
	movlw	(020h)
	fcall	_vfd_write
	
l6909:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_vfd_init+0)+0
	movf	(??_vfd_init+0)+0,w
	addwf	(vfd_init@i),f
	
l6911:	
	movlw	(020h)
	subwf	(vfd_init@i),w
	skipc
	goto	u1371
	goto	u1370
u1371:
	goto	l6907
u1370:
	goto	l6913
	
l3074:	
	line	41
	
l6913:	
;vfd_ctrl.c: 41: vfd_write(0x0B);
	movlw	(0Bh)
	fcall	_vfd_write
	line	43
	
l6915:	
;vfd_ctrl.c: 43: strcpy(Upside_Data, "                ");
	movlw	low((STR_1-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_Upside_Data)&0ffh
	fcall	_strcpy
	line	44
	
l6917:	
;vfd_ctrl.c: 44: strcpy(Downside_Data, "                ");
	movlw	low((STR_2-__stringbase))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_strcpy)
	movlw	80h
	movwf	(?_strcpy+1)
	movlw	(_Downside_Data)&0ffh
	fcall	_strcpy
	line	46
	
l6919:	
;vfd_ctrl.c: 46: Disp_State = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Disp_State)
	line	47
	
l3075:	
	return
	opt stack 0
GLOBAL	__end_of_vfd_init
	__end_of_vfd_init:
	signat	_vfd_init,88
	global	_InttoAscii

;; *************** function _InttoAscii *****************
;; Defined at:
;;		line 88 in file "C:\PIC_WorkSpace\AquaTempFan\vfd_ctrl.c"
;; Parameters:    Size  Location     Type
;;  data            2   39[BANK0 ] int 
;;  ascii           1   41[BANK0 ] PTR unsigned char 
;;		 -> Upside_Data(17), 
;; Auto vars:     Size  Location     Type
;;  i               1   47[BANK0 ] unsigned char 
;;  dec             1   46[BANK0 ] unsigned char 
;;  databuf         1   45[BANK0 ] unsigned char 
;;  flg             1   44[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___wmul
;;		_Power
;;		___aldiv
;;		___almod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text533,local,class=CODE,delta=2,merge=1
global __ptext533
__ptext533:	;psect for function _InttoAscii
psect	text533
	file	"C:\PIC_WorkSpace\AquaTempFan\vfd_ctrl.c"
	line	88
	global	__size_of_InttoAscii
	__size_of_InttoAscii	equ	__end_of_InttoAscii-_InttoAscii
	
_InttoAscii:	
	opt	stack 4
; Regs used in _InttoAscii: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	91
	
l6921:	
;vfd_ctrl.c: 89: unsigned char i, dec, flg, databuf;
;vfd_ctrl.c: 91: for(i = 0; i < 10; i++);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(InttoAscii@i)
	
l6923:	
	movlw	(0Ah)
	subwf	(InttoAscii@i),w
	skipc
	goto	u1381
	goto	u1380
u1381:
	goto	l6927
u1380:
	goto	l3090
	
l6925:	
	goto	l3090
	
l3089:	
	
l6927:	
	movlw	(01h)
	movwf	(??_InttoAscii+0)+0
	movf	(??_InttoAscii+0)+0,w
	addwf	(InttoAscii@i),f
	
l6929:	
	movlw	(0Ah)
	subwf	(InttoAscii@i),w
	skipc
	goto	u1391
	goto	u1390
u1391:
	goto	l6927
u1390:
	
l3090:	
	line	92
;vfd_ctrl.c: 92: if(data < 0)
	btfss	(InttoAscii@data+1),7
	goto	u1401
	goto	u1400
u1401:
	goto	l6935
u1400:
	line	94
	
l6931:	
;vfd_ctrl.c: 93: {
;vfd_ctrl.c: 94: ascii[i] = '-';
	movlw	(02Dh)
	movwf	(??_InttoAscii+0)+0
	movf	(InttoAscii@i),w
	addwf	(InttoAscii@ascii),w
	movwf	(??_InttoAscii+1)+0
	movf	0+(??_InttoAscii+1)+0,w
	movwf	fsr0
	movf	(??_InttoAscii+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	95
	
l6933:	
;vfd_ctrl.c: 95: data *= -1;
	movlw	low(-1)
	movwf	(?___wmul)
	movlw	high(-1)
	movwf	((?___wmul))+1
	movf	(InttoAscii@data+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(InttoAscii@data),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___wmul)),w
	clrf	(InttoAscii@data+1)
	addwf	(InttoAscii@data+1)
	movf	(0+(?___wmul)),w
	clrf	(InttoAscii@data)
	addwf	(InttoAscii@data)

	goto	l6935
	line	96
	
l3091:	
	line	97
	
l6935:	
;vfd_ctrl.c: 96: }
;vfd_ctrl.c: 97: i++;
	movlw	(01h)
	movwf	(??_InttoAscii+0)+0
	movf	(??_InttoAscii+0)+0,w
	addwf	(InttoAscii@i),f
	line	99
	
l6937:	
;vfd_ctrl.c: 99: dec = 5;
	movlw	(05h)
	movwf	(??_InttoAscii+0)+0
	movf	(??_InttoAscii+0)+0,w
	movwf	(InttoAscii@dec)
	line	100
	
l6939:	
;vfd_ctrl.c: 100: flg = 0;
	clrf	(InttoAscii@flg)
	line	101
;vfd_ctrl.c: 101: while(i < 16)
	goto	l6959
	
l3093:	
	line	103
	
l6941:	
;vfd_ctrl.c: 102: {
;vfd_ctrl.c: 103: databuf = (unsigned char)(data / Power(10, dec));
	movf	(InttoAscii@dec),w
	movwf	(??_InttoAscii+0)+0
	movf	(??_InttoAscii+0)+0,w
	movwf	0+(?_Power)+04h
	movlw	0
	movwf	(?_Power+3)
	movlw	0
	movwf	(?_Power+2)
	movlw	0
	movwf	(?_Power+1)
	movlw	0Ah
	movwf	(?_Power)

	fcall	_Power
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_Power)),w
	movwf	(?___aldiv+3)
	movf	(2+(?_Power)),w
	movwf	(?___aldiv+2)
	movf	(1+(?_Power)),w
	movwf	(?___aldiv+1)
	movf	(0+(?_Power)),w
	movwf	(?___aldiv)

	movf	(InttoAscii@data),w
	movwf	0+(?___aldiv)+04h
	movf	(InttoAscii@data+1),w
	movwf	1+(?___aldiv)+04h
	movlw	0
	btfsc	1+(?___aldiv)+04h,7
	movlw	255
	movwf	2+(?___aldiv)+04h
	movwf	3+(?___aldiv)+04h
	fcall	___aldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___aldiv)))),w
	movwf	(??_InttoAscii+1)+0
	movf	(??_InttoAscii+1)+0,w
	movwf	(InttoAscii@databuf)
	line	104
;vfd_ctrl.c: 104: data %= Power(10, dec);
	movf	(InttoAscii@dec),w
	movwf	(??_InttoAscii+0)+0
	movf	(??_InttoAscii+0)+0,w
	movwf	0+(?_Power)+04h
	movlw	0
	movwf	(?_Power+3)
	movlw	0
	movwf	(?_Power+2)
	movlw	0
	movwf	(?_Power+1)
	movlw	0Ah
	movwf	(?_Power)

	fcall	_Power
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?_Power)),w
	movwf	(?___almod+3)
	movf	(2+(?_Power)),w
	movwf	(?___almod+2)
	movf	(1+(?_Power)),w
	movwf	(?___almod+1)
	movf	(0+(?_Power)),w
	movwf	(?___almod)

	movf	(InttoAscii@data),w
	movwf	0+(?___almod)+04h
	movf	(InttoAscii@data+1),w
	movwf	1+(?___almod)+04h
	movlw	0
	btfsc	1+(?___almod)+04h,7
	movlw	255
	movwf	2+(?___almod)+04h
	movwf	3+(?___almod)+04h
	fcall	___almod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___almod)))),w
	clrf	(InttoAscii@data+1)
	addwf	(InttoAscii@data+1)
	movf	0+(((0+(?___almod)))),w
	clrf	(InttoAscii@data)
	addwf	(InttoAscii@data)

	line	105
	
l6943:	
;vfd_ctrl.c: 105: if(databuf != 0)
	movf	(InttoAscii@databuf),w
	skipz
	goto	u1410
	goto	l6949
u1410:
	line	107
	
l6945:	
;vfd_ctrl.c: 106: {
;vfd_ctrl.c: 107: ascii[i] = 0x30 + databuf;
	movf	(InttoAscii@databuf),w
	addlw	030h
	movwf	(??_InttoAscii+0)+0
	movf	(InttoAscii@i),w
	addwf	(InttoAscii@ascii),w
	movwf	(??_InttoAscii+1)+0
	movf	0+(??_InttoAscii+1)+0,w
	movwf	fsr0
	movf	(??_InttoAscii+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	108
	
l6947:	
;vfd_ctrl.c: 108: flg = 1;
	clrf	(InttoAscii@flg)
	bsf	status,0
	rlf	(InttoAscii@flg),f
	line	109
;vfd_ctrl.c: 109: } else {
	goto	l6955
	
l3094:	
	line	110
	
l6949:	
;vfd_ctrl.c: 110: if(flg) ascii[i] = '0';
	movf	(InttoAscii@flg),w
	skipz
	goto	u1420
	goto	l6953
u1420:
	
l6951:	
	movlw	(030h)
	movwf	(??_InttoAscii+0)+0
	movf	(InttoAscii@i),w
	addwf	(InttoAscii@ascii),w
	movwf	(??_InttoAscii+1)+0
	movf	0+(??_InttoAscii+1)+0,w
	movwf	fsr0
	movf	(??_InttoAscii+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l6955
	line	111
	
l3096:	
	
l6953:	
;vfd_ctrl.c: 111: else ascii[i] = ' ';
	movlw	(020h)
	movwf	(??_InttoAscii+0)+0
	movf	(InttoAscii@i),w
	addwf	(InttoAscii@ascii),w
	movwf	(??_InttoAscii+1)+0
	movf	0+(??_InttoAscii+1)+0,w
	movwf	fsr0
	movf	(??_InttoAscii+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	goto	l6955
	
l3097:	
	goto	l6955
	line	112
	
l3095:	
	line	113
	
l6955:	
;vfd_ctrl.c: 112: }
;vfd_ctrl.c: 113: i++;
	movlw	(01h)
	movwf	(??_InttoAscii+0)+0
	movf	(??_InttoAscii+0)+0,w
	addwf	(InttoAscii@i),f
	line	114
	
l6957:	
;vfd_ctrl.c: 114: dec--;
	movlw	low(01h)
	subwf	(InttoAscii@dec),f
	goto	l6959
	line	115
	
l3092:	
	line	101
	
l6959:	
	movlw	(010h)
	subwf	(InttoAscii@i),w
	skipc
	goto	u1431
	goto	u1430
u1431:
	goto	l6941
u1430:
	goto	l3099
	
l3098:	
	line	116
	
l3099:	
	return
	opt stack 0
GLOBAL	__end_of_InttoAscii
	__end_of_InttoAscii:
	signat	_InttoAscii,8312
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v1.10\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> Downside_Data(17), Vfd_Data(33), Upside_Data(17), 
;;  from            2    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_4(17), STR_3(17), STR_2(17), STR_1(17), 
;;		 -> Upside_Data(17), 
;; Auto vars:     Size  Location     Type
;;  to              1    5[BANK0 ] PTR unsigned char 
;;		 -> Downside_Data(17), Vfd_Data(33), Upside_Data(17), 
;;  cp              1    6[BANK0 ] PTR unsigned char 
;;		 -> Downside_Data(17), Vfd_Data(33), Upside_Data(17), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    2
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_vfd_init
;;		_vfd_data_init
;; This function uses a non-reentrant model
;;
psect	text534,local,class=CODE,delta=2,merge=1
global __ptext534
__ptext534:	;psect for function _strcpy
psect	text534
	file	"C:\Program Files\Microchip\xc8\v1.10\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 5
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0+btemp+1+pclath]
;strcpy@to stored from wreg
	line	18
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcpy@to)
	
l6961:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l6963
	
l5550:	
	line	20
	goto	l6963
	
l5549:	
	line	19
	
l6963:	
	movf	(strcpy@from+1),w
	movwf	(??_strcpy+0)+0+1
	movf	(strcpy@from),w
	movwf	(??_strcpy+0)+0
	movlw	(01h)
	addwf	(strcpy@from),f
	skipnc
	incf	(strcpy@from+1),f
	movf	1+(??_strcpy+0)+0,w
	movwf	btemp+1
	movf	0+(??_strcpy+0)+0,w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_strcpy+2)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strcpy@cp),f
	movf	(??_strcpy+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movf	(indf),f
	skipz
	goto	u1441
	goto	u1440
u1441:
	goto	l6963
u1440:
	goto	l5552
	
l5551:	
	line	22
;	Return value of _strcpy is never used
	
l5552:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8313
	global	_strcat

;; *************** function _strcat *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v1.10\sources\strcat.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> Vfd_Data(33), 
;;  from            1    0[BANK0 ] PTR const unsigned char 
;;		 -> Downside_Data(17), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[BANK0 ] PTR unsigned char 
;;		 -> Vfd_Data(33), 
;;  cp              1    3[BANK0 ] PTR unsigned char 
;;		 -> Vfd_Data(33), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text535,local,class=CODE,delta=2,merge=1
global __ptext535
__ptext535:	;psect for function _strcat
psect	text535
	file	"C:\Program Files\Microchip\xc8\v1.10\sources\strcat.c"
	line	10
	global	__size_of_strcat
	__size_of_strcat	equ	__end_of_strcat-_strcat
	
_strcat:	
	opt	stack 6
; Regs used in _strcat: [wreg-fsr0h+status,2+status,0]
;strcat@to stored from wreg
	line	18
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strcat@to)
	
l6965:	
	movf	(strcat@to),w
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	movwf	(strcat@cp)
	line	19
	goto	l6969
	
l5541:	
	line	20
	
l6967:	
	movlw	(01h)
	movwf	(??_strcat+0)+0
	movf	(??_strcat+0)+0,w
	addwf	(strcat@cp),f
	goto	l6969
	
l5540:	
	line	19
	
l6969:	
	movf	(strcat@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u1451
	goto	u1450
u1451:
	goto	l6967
u1450:
	goto	l6971
	
l5542:	
	line	21
	goto	l6971
	
l5544:	
	line	22
	goto	l6971
	
l5543:	
	line	21
	
l6971:	
	movf	(strcat@from),w
	movwf	fsr0
	movlw	01h
	addwf	(strcat@from),f
	movf	indf,w
	movwf	(??_strcat+0)+0
	movf	(strcat@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strcat@cp),f
	movf	(??_strcat+0)+0,w
	movwf	indf
	movf	(indf),f
	skipz
	goto	u1461
	goto	u1460
u1461:
	goto	l6971
u1460:
	goto	l5546
	
l5545:	
	line	24
;	Return value of _strcat is never used
	
l5546:	
	return
	opt stack 0
GLOBAL	__end_of_strcat
	__end_of_strcat:
	signat	_strcat,8313
	global	_vfd_write

;; *************** function _vfd_write *****************
;; Defined at:
;;		line 70 in file "C:\PIC_WorkSpace\AquaTempFan\vfd_ctrl.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[BANK0 ] unsigned char 
;;  txdata          1    4[BANK0 ] unsigned char 
;;  i               1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_vfd_init
;; This function uses a non-reentrant model
;;
psect	text536,local,class=CODE,delta=2,merge=1
global __ptext536
__ptext536:	;psect for function _vfd_write
psect	text536
	file	"C:\PIC_WorkSpace\AquaTempFan\vfd_ctrl.c"
	line	70
	global	__size_of_vfd_write
	__size_of_vfd_write	equ	__end_of_vfd_write-_vfd_write
	
_vfd_write:	
	opt	stack 6
; Regs used in _vfd_write: [wreg+status,2+status,0]
;vfd_write@data stored from wreg
	line	73
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(vfd_write@data)
	
l6973:	
;vfd_ctrl.c: 71: unsigned char i, txdata;
;vfd_ctrl.c: 73: txdata = data;
	movf	(vfd_write@data),w
	movwf	(??_vfd_write+0)+0
	movf	(??_vfd_write+0)+0,w
	movwf	(vfd_write@txdata)
	line	74
;vfd_ctrl.c: 74: while(RB3);
	goto	l3078
	
l3079:	
	
l3078:	
	btfsc	(51/8),(51)&7	;volatile
	goto	u1471
	goto	u1470
u1471:
	goto	l3078
u1470:
	
l3080:	
	line	75
;vfd_ctrl.c: 75: for(i = 0; i < 8; i++)
	clrf	(vfd_write@i)
	
l6975:	
	movlw	(08h)
	subwf	(vfd_write@i),w
	skipc
	goto	u1481
	goto	u1480
u1481:
	goto	l3081
u1480:
	goto	l3083
	
l6977:	
	goto	l3083
	line	76
	
l3081:	
	line	77
;vfd_ctrl.c: 76: {
;vfd_ctrl.c: 77: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	78
;vfd_ctrl.c: 78: RB2 = (txdata & 0x01);
	btfsc	(vfd_write@txdata),0
	goto	u1491
	goto	u1490
	
u1491:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7	;volatile
	goto	u1504
u1490:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7	;volatile
u1504:
	line	79
;vfd_ctrl.c: 79: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	80
	
l6979:	
;vfd_ctrl.c: 80: txdata = txdata >> 1;
	movf	(vfd_write@txdata),w
	movwf	(??_vfd_write+0)+0
	clrc
	rrf	(??_vfd_write+0)+0,w
	movwf	(??_vfd_write+1)+0
	movf	(??_vfd_write+1)+0,w
	movwf	(vfd_write@txdata)
	line	75
	movlw	(01h)
	movwf	(??_vfd_write+0)+0
	movf	(??_vfd_write+0)+0,w
	addwf	(vfd_write@i),f
	
l6981:	
	movlw	(08h)
	subwf	(vfd_write@i),w
	skipc
	goto	u1511
	goto	u1510
u1511:
	goto	l3081
u1510:
	goto	l3083
	
l3082:	
	line	82
;vfd_ctrl.c: 81: }
;vfd_ctrl.c: 82: while(RB3 == 0);
	goto	l3083
	
l3084:	
	
l3083:	
	btfss	(51/8),(51)&7	;volatile
	goto	u1521
	goto	u1520
u1521:
	goto	l3083
u1520:
	goto	l3086
	
l3085:	
	line	84
;vfd_ctrl.c: 83: return;
	
l3086:	
	return
	opt stack 0
GLOBAL	__end_of_vfd_write
	__end_of_vfd_write:
	signat	_vfd_write,4216
	global	_Power

;; *************** function _Power *****************
;; Defined at:
;;		line 7 in file "C:\PIC_WorkSpace\AquaTempFan\sub.c"
;; Parameters:    Size  Location     Type
;;  data            4   13[BANK0 ] long 
;;  num             1   17[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  result          4   20[BANK0 ] long 
;;  i               1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lmul
;; This function is called by:
;;		_InttoAscii
;; This function uses a non-reentrant model
;;
psect	text537,local,class=CODE,delta=2,merge=1
global __ptext537
__ptext537:	;psect for function _Power
psect	text537
	file	"C:\PIC_WorkSpace\AquaTempFan\sub.c"
	line	7
	global	__size_of_Power
	__size_of_Power	equ	__end_of_Power-_Power
	
_Power:	
	opt	stack 4
; Regs used in _Power: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l6983:	
;sub.c: 8: unsigned char i;
;sub.c: 9: long result;
;sub.c: 11: result = 1;
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Power@result+3)
	movlw	0
	movwf	(Power@result+2)
	movlw	0
	movwf	(Power@result+1)
	movlw	01h
	movwf	(Power@result)

	line	13
	
l6985:	
;sub.c: 13: for (i = 0; i < num; i++) {
	clrf	(Power@i)
	goto	l6991
	
l4887:	
	line	14
	
l6987:	
;sub.c: 14: result *= data;
	movf	(Power@data+3),w
	movwf	(?___lmul+3)
	movf	(Power@data+2),w
	movwf	(?___lmul+2)
	movf	(Power@data+1),w
	movwf	(?___lmul+1)
	movf	(Power@data),w
	movwf	(?___lmul)

	movf	(Power@result+3),w
	movwf	3+(?___lmul)+04h
	movf	(Power@result+2),w
	movwf	2+(?___lmul)+04h
	movf	(Power@result+1),w
	movwf	1+(?___lmul)+04h
	movf	(Power@result),w
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lmul)),w
	movwf	(Power@result+3)
	movf	(2+(?___lmul)),w
	movwf	(Power@result+2)
	movf	(1+(?___lmul)),w
	movwf	(Power@result+1)
	movf	(0+(?___lmul)),w
	movwf	(Power@result)

	line	13
	
l6989:	
	movlw	(01h)
	movwf	(??_Power+0)+0
	movf	(??_Power+0)+0,w
	addwf	(Power@i),f
	goto	l6991
	
l4886:	
	
l6991:	
	movf	(Power@num),w
	subwf	(Power@i),w
	skipc
	goto	u1531
	goto	u1530
u1531:
	goto	l6987
u1530:
	goto	l6993
	
l4888:	
	line	16
	
l6993:	
;sub.c: 15: }
;sub.c: 16: return result;
	movf	(Power@result+3),w
	movwf	(?_Power+3)
	movf	(Power@result+2),w
	movwf	(?_Power+2)
	movf	(Power@result+1),w
	movwf	(?_Power+1)
	movf	(Power@result),w
	movwf	(?_Power)

	goto	l4889
	
l6995:	
	line	17
	
l4889:	
	return
	opt stack 0
GLOBAL	__end_of_Power
	__end_of_Power:
	signat	_Power,8316
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v1.10\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[BANK0 ] unsigned int 
;;  multiplicand    2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InttoAscii
;; This function uses a non-reentrant model
;;
psect	text538,local,class=CODE,delta=2,merge=1
global __ptext538
__ptext538:	;psect for function ___wmul
psect	text538
	file	"C:\Program Files\Microchip\xc8\v1.10\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l6997:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l6999
	line	6
	
l5563:	
	line	7
	
l6999:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l5564
u1540:
	line	8
	
l7001:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l5564:	
	line	9
	movlw	01h
	
u1555:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1555
	line	10
	
l7003:	
	movlw	01h
	
u1565:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1565
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1571
	goto	u1570
u1571:
	goto	l6999
u1570:
	goto	l7005
	
l5565:	
	line	12
	
l7005:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l5566
	
l7007:	
	line	13
	
l5566:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v1.10\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[BANK0 ] unsigned long 
;;  multiplicand    4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Power
;; This function uses a non-reentrant model
;;
psect	text539,local,class=CODE,delta=2,merge=1
global __ptext539
__ptext539:	;psect for function ___lmul
psect	text539
	file	"C:\Program Files\Microchip\xc8\v1.10\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 4
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l7009:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	l7011
	line	6
	
l5638:	
	line	7
	
l7011:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l7015
u1580:
	line	8
	
l7013:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1591
	addwf	(___lmul@product+1),f
u1591:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1592
	addwf	(___lmul@product+2),f
u1592:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u1593
	addwf	(___lmul@product+3),f
u1593:

	goto	l7015
	
l5639:	
	line	9
	
l7015:	
	movlw	01h
	movwf	(??___lmul+0)+0
u1605:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u1605
	line	10
	
l7017:	
	movlw	01h
u1615:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u1615

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u1621
	goto	u1620
u1621:
	goto	l7011
u1620:
	goto	l7019
	
l5640:	
	line	12
	
l7019:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	l5641
	
l7021:	
	line	13
	
l5641:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___almod

;; *************** function ___almod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v1.10\sources\almod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   24[BANK0 ] long 
;;  dividend        4   28[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   34[BANK0 ] unsigned char 
;;  counter         1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   24[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InttoAscii
;; This function uses a non-reentrant model
;;
psect	text540,local,class=CODE,delta=2,merge=1
global __ptext540
__ptext540:	;psect for function ___almod
psect	text540
	file	"C:\Program Files\Microchip\xc8\v1.10\sources\almod.c"
	line	5
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:	
	opt	stack 5
; Regs used in ___almod: [wreg+status,2+status,0]
	line	8
	
l7023:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___almod@sign)
	line	9
	btfss	(___almod@dividend+3),7
	goto	u1631
	goto	u1630
u1631:
	goto	l7029
u1630:
	line	10
	
l7025:	
	comf	(___almod@dividend),f
	comf	(___almod@dividend+1),f
	comf	(___almod@dividend+2),f
	comf	(___almod@dividend+3),f
	incf	(___almod@dividend),f
	skipnz
	incf	(___almod@dividend+1),f
	skipnz
	incf	(___almod@dividend+2),f
	skipnz
	incf	(___almod@dividend+3),f
	line	11
	
l7027:	
	clrf	(___almod@sign)
	bsf	status,0
	rlf	(___almod@sign),f
	goto	l7029
	line	12
	
l5745:	
	line	13
	
l7029:	
	btfss	(___almod@divisor+3),7
	goto	u1641
	goto	u1640
u1641:
	goto	l7033
u1640:
	line	14
	
l7031:	
	comf	(___almod@divisor),f
	comf	(___almod@divisor+1),f
	comf	(___almod@divisor+2),f
	comf	(___almod@divisor+3),f
	incf	(___almod@divisor),f
	skipnz
	incf	(___almod@divisor+1),f
	skipnz
	incf	(___almod@divisor+2),f
	skipnz
	incf	(___almod@divisor+3),f
	goto	l7033
	
l5746:	
	line	15
	
l7033:	
	movf	(___almod@divisor+3),w
	iorwf	(___almod@divisor+2),w
	iorwf	(___almod@divisor+1),w
	iorwf	(___almod@divisor),w
	skipnz
	goto	u1651
	goto	u1650
u1651:
	goto	l7049
u1650:
	line	16
	
l7035:	
	clrf	(___almod@counter)
	bsf	status,0
	rlf	(___almod@counter),f
	line	17
	goto	l7039
	
l5749:	
	line	18
	
l7037:	
	movlw	01h
	movwf	(??___almod+0)+0
u1665:
	clrc
	rlf	(___almod@divisor),f
	rlf	(___almod@divisor+1),f
	rlf	(___almod@divisor+2),f
	rlf	(___almod@divisor+3),f
	decfsz	(??___almod+0)+0
	goto	u1665
	line	19
	movlw	(01h)
	movwf	(??___almod+0)+0
	movf	(??___almod+0)+0,w
	addwf	(___almod@counter),f
	goto	l7039
	line	20
	
l5748:	
	line	17
	
l7039:	
	btfss	(___almod@divisor+3),(31)&7
	goto	u1671
	goto	u1670
u1671:
	goto	l7037
u1670:
	goto	l7041
	
l5750:	
	goto	l7041
	line	21
	
l5751:	
	line	22
	
l7041:	
	movf	(___almod@divisor+3),w
	subwf	(___almod@dividend+3),w
	skipz
	goto	u1685
	movf	(___almod@divisor+2),w
	subwf	(___almod@dividend+2),w
	skipz
	goto	u1685
	movf	(___almod@divisor+1),w
	subwf	(___almod@dividend+1),w
	skipz
	goto	u1685
	movf	(___almod@divisor),w
	subwf	(___almod@dividend),w
u1685:
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l7045
u1680:
	line	23
	
l7043:	
	movf	(___almod@divisor),w
	subwf	(___almod@dividend),f
	movf	(___almod@divisor+1),w
	skipc
	incfsz	(___almod@divisor+1),w
	subwf	(___almod@dividend+1),f
	movf	(___almod@divisor+2),w
	skipc
	incfsz	(___almod@divisor+2),w
	subwf	(___almod@dividend+2),f
	movf	(___almod@divisor+3),w
	skipc
	incfsz	(___almod@divisor+3),w
	subwf	(___almod@dividend+3),f
	goto	l7045
	
l5752:	
	line	24
	
l7045:	
	movlw	01h
u1695:
	clrc
	rrf	(___almod@divisor+3),f
	rrf	(___almod@divisor+2),f
	rrf	(___almod@divisor+1),f
	rrf	(___almod@divisor),f
	addlw	-1
	skipz
	goto	u1695

	line	25
	
l7047:	
	movlw	low(01h)
	subwf	(___almod@counter),f
	btfss	status,2
	goto	u1701
	goto	u1700
u1701:
	goto	l7041
u1700:
	goto	l7049
	
l5753:	
	goto	l7049
	line	26
	
l5747:	
	line	27
	
l7049:	
	movf	(___almod@sign),w
	skipz
	goto	u1710
	goto	l7053
u1710:
	line	28
	
l7051:	
	comf	(___almod@dividend),f
	comf	(___almod@dividend+1),f
	comf	(___almod@dividend+2),f
	comf	(___almod@dividend+3),f
	incf	(___almod@dividend),f
	skipnz
	incf	(___almod@dividend+1),f
	skipnz
	incf	(___almod@dividend+2),f
	skipnz
	incf	(___almod@dividend+3),f
	goto	l7053
	
l5754:	
	line	29
	
l7053:	
	movf	(___almod@dividend+3),w
	movwf	(?___almod+3)
	movf	(___almod@dividend+2),w
	movwf	(?___almod+2)
	movf	(___almod@dividend+1),w
	movwf	(?___almod+1)
	movf	(___almod@dividend),w
	movwf	(?___almod)

	goto	l5755
	
l7055:	
	line	30
	
l5755:	
	return
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v1.10\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4   24[BANK0 ] long 
;;  dividend        4   28[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   35[BANK0 ] long 
;;  sign            1   34[BANK0 ] unsigned char 
;;  counter         1   33[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   24[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      15       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InttoAscii
;; This function uses a non-reentrant model
;;
psect	text541,local,class=CODE,delta=2,merge=1
global __ptext541
__ptext541:	;psect for function ___aldiv
psect	text541
	file	"C:\Program Files\Microchip\xc8\v1.10\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 5
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l7057:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u1721
	goto	u1720
u1721:
	goto	l7063
u1720:
	line	11
	
l7059:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	
l7061:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l7063
	line	13
	
l5758:	
	line	14
	
l7063:	
	btfss	(___aldiv@dividend+3),7
	goto	u1731
	goto	u1730
u1731:
	goto	l7069
u1730:
	line	15
	
l7065:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
l7067:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l7069
	line	17
	
l5759:	
	line	18
	
l7069:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l7071:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u1741
	goto	u1740
u1741:
	goto	l7091
u1740:
	line	20
	
l7073:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l7077
	
l5762:	
	line	22
	
l7075:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u1755:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u1755
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l7077
	line	24
	
l5761:	
	line	21
	
l7077:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u1761
	goto	u1760
u1761:
	goto	l7075
u1760:
	goto	l7079
	
l5763:	
	goto	l7079
	line	25
	
l5764:	
	line	26
	
l7079:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u1775:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u1775
	line	27
	
l7081:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u1785
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u1785
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u1785
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u1785:
	skipc
	goto	u1781
	goto	u1780
u1781:
	goto	l7087
u1780:
	line	28
	
l7083:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	29
	
l7085:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l7087
	line	30
	
l5765:	
	line	31
	
l7087:	
	movlw	01h
u1795:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u1795

	line	32
	
l7089:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u1801
	goto	u1800
u1801:
	goto	l7079
u1800:
	goto	l7091
	
l5766:	
	goto	l7091
	line	33
	
l5760:	
	line	34
	
l7091:	
	movf	(___aldiv@sign),w
	skipz
	goto	u1810
	goto	l7095
u1810:
	line	35
	
l7093:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	goto	l7095
	
l5767:	
	line	36
	
l7095:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l5768
	
l7097:	
	line	37
	
l5768:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_int_ctrl

;; *************** function _int_ctrl *****************
;; Defined at:
;;		line 36 in file "C:\PIC_WorkSpace\AquaTempFan\interrupt_ctrl.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text542,local,class=CODE,delta=2,merge=1
global __ptext542
__ptext542:	;psect for function _int_ctrl
psect	text542
	file	"C:\PIC_WorkSpace\AquaTempFan\interrupt_ctrl.c"
	line	36
	global	__size_of_int_ctrl
	__size_of_int_ctrl	equ	__end_of_int_ctrl-_int_ctrl
	
_int_ctrl:	
	opt	stack 4
; Regs used in _int_ctrl: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_int_ctrl+1)
	movf	fsr0,w
	movwf	(??_int_ctrl+2)
	movf	pclath,w
	movwf	(??_int_ctrl+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_int_ctrl+4)
	ljmp	_int_ctrl
psect	text542
	line	37
	
i1l6459:	
;interrupt_ctrl.c: 37: if(TMR0IF)
	btfss	(90/8),(90)&7	;volatile
	goto	u63_21
	goto	u63_20
u63_21:
	goto	i1l6485
u63_20:
	line	40
	
i1l6461:	
;interrupt_ctrl.c: 38: {
;interrupt_ctrl.c: 40: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	41
	
i1l6463:	
;interrupt_ctrl.c: 41: TMR0 = 0;
	clrf	(1)	;volatile
	line	43
	
i1l6465:	
;interrupt_ctrl.c: 43: T05_Counter++;
	movlw	(01h)
	movwf	(??_int_ctrl+0)+0
	movf	(??_int_ctrl+0)+0,w
	addwf	(_T05_Counter),f
	line	44
	
i1l6467:	
;interrupt_ctrl.c: 44: if(T05_Counter > 244)
	movlw	(0F5h)
	subwf	(_T05_Counter),w
	skipc
	goto	u64_21
	goto	u64_20
u64_21:
	goto	i1l6471
u64_20:
	line	46
	
i1l6469:	
;interrupt_ctrl.c: 45: {
;interrupt_ctrl.c: 46: T05_Counter = 0;
	clrf	(_T05_Counter)
	line	47
;interrupt_ctrl.c: 47: Cycle_Unit.Bit.t05 = 1;
	bsf	(_Cycle_Unit),6
	goto	i1l6471
	line	48
	
i1l1809:	
	line	49
	
i1l6471:	
;interrupt_ctrl.c: 48: }
;interrupt_ctrl.c: 49: T1_Counter++;
	movlw	low(01h)
	addwf	(_T1_Counter),f
	skipnc
	incf	(_T1_Counter+1),f
	movlw	high(01h)
	addwf	(_T1_Counter+1),f
	line	50
;interrupt_ctrl.c: 50: if(T1_Counter > 489)
	movlw	high(01EAh)
	subwf	(_T1_Counter+1),w
	movlw	low(01EAh)
	skipnz
	subwf	(_T1_Counter),w
	skipc
	goto	u65_21
	goto	u65_20
u65_21:
	goto	i1l6485
u65_20:
	line	52
	
i1l6473:	
;interrupt_ctrl.c: 51: {
;interrupt_ctrl.c: 52: T1_Counter = 0;
	clrf	(_T1_Counter)
	clrf	(_T1_Counter+1)
	line	53
	
i1l6475:	
;interrupt_ctrl.c: 53: Cycle_Unit.Bit.t1 = 1;
	bsf	(_Cycle_Unit),7
	line	57
	
i1l6477:	
;interrupt_ctrl.c: 56: {
;interrupt_ctrl.c: 57: ADConvertFlag = 0;
	clrf	(_ADConvertFlag)	;volatile
	line	58
	
i1l6479:	
;interrupt_ctrl.c: 58: Adc_Data = ADC_DATA_BUF.WORD;
	movf	(_ADC_DATA_BUF+1),w	;volatile
	clrf	(_Adc_Data+1)	;volatile
	addwf	(_Adc_Data+1)	;volatile
	movf	(_ADC_DATA_BUF),w	;volatile
	clrf	(_Adc_Data)	;volatile
	addwf	(_Adc_Data)	;volatile

	line	59
	
i1l6481:	
;interrupt_ctrl.c: 59: AdcDataGetFlag = 1;
	clrf	(_AdcDataGetFlag)	;volatile
	bsf	status,0
	rlf	(_AdcDataGetFlag),f	;volatile
	line	60
	
i1l6483:	
;interrupt_ctrl.c: 60: GO_nDONE = 1;
	bsf	(250/8),(250)&7	;volatile
	goto	i1l6485
	line	62
	
i1l1810:	
	goto	i1l6485
	line	63
	
i1l1808:	
	line	65
	
i1l6485:	
;interrupt_ctrl.c: 61: }
;interrupt_ctrl.c: 62: }
;interrupt_ctrl.c: 63: }
;interrupt_ctrl.c: 65: if(ADIF)
	btfss	(102/8),(102)&7	;volatile
	goto	u66_21
	goto	u66_20
u66_21:
	goto	i1l1813
u66_20:
	line	67
	
i1l6487:	
;interrupt_ctrl.c: 66: {
;interrupt_ctrl.c: 67: ADIF = 0;
	bcf	(102/8),(102)&7	;volatile
	line	68
;interrupt_ctrl.c: 68: if(GO_nDONE == 0)
	btfsc	(250/8),(250)&7	;volatile
	goto	u67_21
	goto	u67_20
u67_21:
	goto	i1l1813
u67_20:
	line	70
	
i1l6489:	
;interrupt_ctrl.c: 69: {
;interrupt_ctrl.c: 70: ADC_DATA_BUF.BYTE[1] = ADRESH;
	movf	(30),w	;volatile
	movwf	(??_int_ctrl+0)+0
	movf	(??_int_ctrl+0)+0,w
	movwf	0+(_ADC_DATA_BUF)+01h	;volatile
	line	71
;interrupt_ctrl.c: 71: ADC_DATA_BUF.BYTE[0] = ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_int_ctrl+0)+0
	movf	(??_int_ctrl+0)+0,w
	movwf	(_ADC_DATA_BUF)	;volatile
	line	72
	
i1l6491:	
;interrupt_ctrl.c: 72: ADConvertFlag = 1;
	clrf	(_ADConvertFlag)	;volatile
	bsf	status,0
	rlf	(_ADConvertFlag),f	;volatile
	goto	i1l1813
	line	73
	
i1l1812:	
	goto	i1l1813
	line	74
	
i1l1811:	
	line	75
	
i1l1813:	
	movf	(??_int_ctrl+4),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_int_ctrl+3),w
	movwf	pclath
	movf	(??_int_ctrl+2),w
	movwf	fsr0
	swapf	(??_int_ctrl+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_int_ctrl
	__end_of_int_ctrl:
	signat	_int_ctrl,88
psect	text543,local,class=CODE,delta=2,merge=1
global __ptext543
__ptext543:	;psect for function _int_ctrl
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
