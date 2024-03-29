#ifndef INTERRUPT_CTRL_H
#define INTERRUPT_CTRL_H

union TimeCycle_Union{
	struct {
		unsigned char buf :6;
		unsigned char t05 :1; //0.5Sec Flag
		unsigned char t1  :1; //1Sec Flag
	} Bit;
	unsigned char Byte;
};
extern volatile union TimeCycle_Union Cycle_Unit;

void int_init(void);	//割り込み処理内で使用する変数などの初期化

#endif