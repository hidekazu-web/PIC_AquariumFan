
	; Microchip MPLAB XC8 C Compiler V1.10
	; Copyright (C) 1984-2012 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; -oAquaTempFan.cof -mAquaTempFan.map --summary=default \
	; --output=default ADC_CTRL.p1 hw_init.p1 interrupt_ctrl.p1 main.p1 \
	; vfd_ctrl.p1 vfd_data.p1 Measure.p1 sub.p1 --chip=16F88 -P \
	; --runtime=default --opt=default,+asm,-debug,-speed,+space,9 --warn=0 \
	; -N255 -D__DEBUG=1 --addrqual=ignore --mode=pro -g --asmlist \
	; --errformat=Error   [%n] %f; %l.%c %s --msgformat=Advisory[%n] %s \
	; --warnformat=Warning [%n] %f; %l.%c %s
	;


	processor	16F88

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2
	psect	idloc,class=IDLOC,delta=2
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=2
	psect	intentry,class=CODE,delta=2
	psect	functab,class=CODE,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	psect	reset_vec
reset_vec:
	; No powerup routine
	global start

; jump to start
	goto	start & 0x7FF | (reset_vec & not 0x7FF)



	psect	init
start
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register CONFIG1 @ 0x2007
;	Brown-out Reset Enable bit
;	BOREN = OFF, BOR disabled
;	Data EE Memory Code Protection bit
;	CPD = 0x1, unprogrammed default
;	CCP1 Pin Selection bit
;	CCPMX = 0x1, unprogrammed default
;	In-Circuit Debugger Mode bit
;	DEBUG = 0x1, unprogrammed default
;	Flash Program Memory Write Enable bits
;	WRT = 0x3, unprogrammed default
;	Oscillator Selection bits
;	FOSC = INTOSCIO, INTRC oscillator; port I/O function on both RA6/OSC2/CLKO pin and RA7/OSC1/CLKI pin
;	RA5/MCLR/VPP Pin Function Select bit
;	MCLRE = OFF, RA5/MCLR/VPP pin function is digital I/O, MCLR internally tied to VDD
;	Watchdog Timer Enable bit
;	WDTE = OFF, WDT disabled
;	Flash Program Memory Code Protection bit
;	CP = 0x1, unprogrammed default
;	Low-Voltage Programming Enable bit
;	LVP = OFF, RB3 is digital I/O, HV on MCLR must be used for programming
;	Power-up Timer Enable bit
;	PWRTE = ON, PWRT enabled

	psect	config
		org 0x0
		dw 0xFF10


psect common,class=COMMON,space=1
psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect bank2,class=BANK2,space=1
psect bank3,class=BANK3,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1
psect sfr2,class=SFR2,space=1
psect sfr3,class=SFR3,space=1


	end	start
