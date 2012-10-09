#include <htc.h>
#include "ADC_CTRL.H"

#define CPU_FREQ 4000000 //Hz

void hw_init(void);

void hw_init(void)
{
	//OSCTUNE	= 0x00;	/*�Z�����ꂽ�N���b�N���g�p*/
	OSCCON	= 0x60;	/*�����N���b�N4MHz�A�����N���b�N����A�����N���b�N���V�X�e���N���b�N�Ɏg�p*/
	//OSCCON	= 0x20;	/*�����N���b�N250kHz�A�����N���b�N����A�����N���b�N���V�X�e���N���b�N�Ɏg�p*/
	
	//OPTION_REG
	nRBPU	= 1;		/*PORTB�v���A�b�v���g�p���Ȃ�*/
	INTEDG	= 0;		/*RB0/INT�s���̗�����G�b�W�ɂ�芄�荞��*/
	T0CS		= 0;		/*�^�C�}0�͓������߃T�C�N���N���b�N�ŃC���N�������g�ݒ�*/
	T0SE		= 0;		/*RA4�s������Low����High�ŃC���N�������g*/
	PSA		= 0;		/*�v���X�P�[����TMR0�֊��蓖�� (PS2~0 �~2)*/
	PS2		= 0;		/*�v���X�P�[�����[�g�I��2bit*/
	PS1		= 1;		/*�v���X�P�[�����[�g�I��1bit*/
	PS0		= 0;		/*�v���X�P�[�����[�g�I��0bit*/
	
	//���荞�݋��ݒ�--------------------------------------
	//INTCON	(Interrupt control register)
	GIE		= 0;		/*���荞�݋֎~�imain�J�n�O�Ɋ��荞�݋��ɂ��邱�ƁjGlobal Interrupt Enable bit*/
	PEIE		= 1;		/*Peripheral Interrupt Enable bit �S�Ẵ}�X�N���ĂȂ����荞�݂�����*/
	TMR0IE	= 1;		/*TMR0���荞�݋���*/
	INT0IE	= 0;		/*RB0���荞�݋֎~*/
	RBIE		= 0;		/*RB�|�[�g�ω����荞�݋֎~*/
	TMR0IF	= 0;		/*TMR0�I�[�o�[�t���[���ĂȂ�*/
	INT0IF	= 0;		/*RB0���荞�ݔ������Ă��Ȃ�*/
	RBIF		= 0;		/*��Ԃ��ω�����RB7:RB4�s���͂Ȃ�*/
	
	//PIE1(Peripheral interrupt enable register1)
	ADIE		= 1;		/*AD Converter Interrupt Enable bit*/
	RCIE		= 0;		/*AUSART Recieve Interrupt*/
	TXIE		= 0;		/*AUSART Transmit Interrupt*/
	SSPIE	= 0;		/*Syncronous Serial Port Interrupt*/
	CCP1IE	= 0;		/*CCP1 Interrupt*/
	TMR2IE	= 0;		/*TMR2 to PR2 Match Interrupt*/
	TMR1IE	= 0;		/*TMR1 Overflow Interrupt*/
	
	//PIR1
	PIR1 = 0x00;
	
	//PIE2(Peripheral interrupt enable register2)

//	OSFIE	= 0;		/*Oscillator Fail Interrupt*/
//	CMIE		= 0;		/*Comparator Interrupt*/
//	EEIE		= 0;		/*EEPROM���C�g�������荞�݋֎~*/

	
	//PIR2
//**	PIR2 = 0x00;
	
	//PCON
//**	nPOR		= 1;		/*Power-on Reset occurred*/
//**	nBOR		= 1;		/*Brown-out Reset occurred*/
//	PCON 	= 0x03;
	
	//�V���A�������ʐM�ݒ�-----------------------------
	//SSPSTAT--------------
	//SSPSTAT	= 0x00;
	//SMP	= 0;
	//CKE	= 0;
	//DA		= 0;
	//STOP	= 0;
	//START	= 0;
	//RW		= 0;
	//UA		= 0;
	//BF		= 0;
	
	//SSPCON---------------
	//SSPCON	= 
	//WCOL	= 0;
	//SSPOV	=
	//SSPEN	= 
	//CKP	= 1
	//SSPM3	= 
	//SSPM2	= 
	//SSPM1	= 
	//SSPM0	= 
	
	//-------------------------------------------------
	//
	//
	//
	//
	//OSCF	= 1;	//4MHz typical(PIC16F628A)
	//
	
	//�|�[�g�ݒ�-------------------------------------
	/*PORTA*/
	TRISA	= 0x01;	/*PORTA�o�͐ݒ�(RA0:Analog Input)*/
	PORTA	= 0x00;
	
	/*PORTB*/
	TRISB	= 0x08;	/*PORTB�o�͐ݒ�(RB3�̂ݓ���)*/
	PORTB	= 0x00;	
	
	//�ʐM�ݒ�---------------------------------------
	//RCSTA	= 0x80;
	//SPEN	= 1;	//�V���A���|�[�genabled
	//RX9	= 0;	//8bit��M
	//SREN	= 0;	//�V���O����M���w��F�֎~
	//CREN	= 0;	//�A����M���F�֎~
	//ADDEN	= 0;	//
	//FERR	= 0;	//�t���[�~���O�G���[�X�e�[�^�X�F����iRCREG���[�h�ŃN���A�j
	//OERR	= 0;	//�I�[�o�[�����G���[�X�e�[�^�X�F���iCREN��OFF, ON�ŃN���A�j
	//RX9D	= 0;	//��M�f�[�^9�r�b�g�� �p���e�B�r�b�g
	
	//TXSTA	= 0xB0;
	//CSRC	= 1;	//�����ʐM�}�X�^���[�h�iBRG����̐����N���b�N�j
	//TX9	= 0;	//8bit�g�����X�~�b�g
	//TXEN	= 1;	//Transmit enabled
	//SYNC	= 1;	//USART���[�h�@�����ʐM�H
	//bit3	= 0;	//����`���[�h�����0
	//BRGH	= 0;	//�X�s�[�h�񓯊��ʐM���@1:High speed 0:Low speed
	//TRMT	= 0;	//Transmit Shift Register Status bit 1:TSR empty 0:TSR full
	//TX9D	= 0;	//�p���e�B�H
	
	//SPBRG	= 0x66;	//102�@Fosc=8MHz�̂Ƃ��{�[���[�g19.417K
	//TXREG	= 0x00;	//���M�f�[�^���h��
	
	//�^�C�}0�ݒ�-------------------------------------
	TMR0	= 0;		//
	
	//ADC�ݒ�-----------------------------------------
	Adc_init();
	
}

