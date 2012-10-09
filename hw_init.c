#include <htc.h>
#include "ADC_CTRL.H"

#define CPU_FREQ 4000000 //Hz

void hw_init(void);

void hw_init(void)
{
	//OSCTUNE	= 0x00;	/*校正されたクロックを使用*/
	OSCCON	= 0x60;	/*内蔵クロック4MHz、内蔵クロック安定、内蔵クロックをシステムクロックに使用*/
	//OSCCON	= 0x20;	/*内蔵クロック250kHz、内蔵クロック安定、内蔵クロックをシステムクロックに使用*/
	
	//OPTION_REG
	nRBPU	= 1;		/*PORTBプルアップを使用しない*/
	INTEDG	= 0;		/*RB0/INTピンの立下りエッジにより割り込み*/
	T0CS		= 0;		/*タイマ0は内部命令サイクルクロックでインクリメント設定*/
	T0SE		= 0;		/*RA4ピン入力LowからHighでインクリメント*/
	PSA		= 0;		/*プリスケーラはTMR0へ割り当て (PS2~0 ×2)*/
	PS2		= 0;		/*プリスケーラレート選択2bit*/
	PS1		= 1;		/*プリスケーラレート選択1bit*/
	PS0		= 0;		/*プリスケーラレート選択0bit*/
	
	//割り込み許可設定--------------------------------------
	//INTCON	(Interrupt control register)
	GIE		= 0;		/*割り込み禁止（main開始前に割り込み許可にすること）Global Interrupt Enable bit*/
	PEIE		= 1;		/*Peripheral Interrupt Enable bit 全てのマスクしてない割り込みを許可*/
	TMR0IE	= 1;		/*TMR0割り込み許可*/
	INT0IE	= 0;		/*RB0割り込み禁止*/
	RBIE		= 0;		/*RBポート変化割り込み禁止*/
	TMR0IF	= 0;		/*TMR0オーバーフローしてない*/
	INT0IF	= 0;		/*RB0割り込み発生していない*/
	RBIF		= 0;		/*状態が変化したRB7:RB4ピンはない*/
	
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
//	EEIE		= 0;		/*EEPROMライト完了割り込み禁止*/

	
	//PIR2
//**	PIR2 = 0x00;
	
	//PCON
//**	nPOR		= 1;		/*Power-on Reset occurred*/
//**	nBOR		= 1;		/*Brown-out Reset occurred*/
//	PCON 	= 0x03;
	
	//シリアル同期通信設定-----------------------------
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
	
	//ポート設定-------------------------------------
	/*PORTA*/
	TRISA	= 0x01;	/*PORTA出力設定(RA0:Analog Input)*/
	PORTA	= 0x00;
	
	/*PORTB*/
	TRISB	= 0x08;	/*PORTB出力設定(RB3のみ入力)*/
	PORTB	= 0x00;	
	
	//通信設定---------------------------------------
	//RCSTA	= 0x80;
	//SPEN	= 1;	//シリアルポートenabled
	//RX9	= 0;	//8bit受信
	//SREN	= 0;	//シングル受信許可指定：禁止
	//CREN	= 0;	//連続受信許可：禁止
	//ADDEN	= 0;	//
	//FERR	= 0;	//フレーミングエラーステータス：正常（RCREGリードでクリア）
	//OERR	= 0;	//オーバーランエラーステータス：正（CRENのOFF, ONでクリア）
	//RX9D	= 0;	//受信データ9ビット目 パリティビット
	
	//TXSTA	= 0xB0;
	//CSRC	= 1;	//同期通信マスタモード（BRGからの生成クロック）
	//TX9	= 0;	//8bitトランスミット
	//TXEN	= 1;	//Transmit enabled
	//SYNC	= 1;	//USARTモード　同期通信？
	//bit3	= 0;	//未定義リードすると0
	//BRGH	= 0;	//スピード非同期通信時　1:High speed 0:Low speed
	//TRMT	= 0;	//Transmit Shift Register Status bit 1:TSR empty 0:TSR full
	//TX9D	= 0;	//パリティ？
	
	//SPBRG	= 0x66;	//102　Fosc=8MHzのときボーレート19.417K
	//TXREG	= 0x00;	//送信データ黒塗り
	
	//タイマ0設定-------------------------------------
	TMR0	= 0;		//
	
	//ADC設定-----------------------------------------
	Adc_init();
	
}

