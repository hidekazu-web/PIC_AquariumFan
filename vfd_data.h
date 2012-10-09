#ifndef VFD_DATA_h
#define VFD_DATA_h

void vfd_data_init(void);

#define	HOME	0x0B	//ホームポジション
#define	BS	0x08	//左に移動
#define	HT	0x09	//右に移動
#define	LF	0x0A	//別の行に移動
#define	CR	0x0D	//左端に移動

#define	A	0xB1
#define	I	0xB2
#define	U	0xB3
#define	E	0xB4
#define	O	0xB5

#define	KA	0xB6
#define	KI	0xB7
#define	KU	0xB8
#define	KE	0xB9
#define	KO	0xBA

#define	SA	0xBB
#define	SHI	0xBC
#define	SU	0xBD
#define	SE	0xBE
#define	SO	0xBF

#define	TA	0xC0
#define	CHI	0xC1
#define	TSU	0xC2
#define	TE	0xC3
#define	TO	0xC4

#define	NA	0xC5
#define	NI	0xC6
#define	NU	0xC7
#define	NE	0xC8
#define	NO	0xC9

#define	HA	0xCA
#define	HI	0xCB
#define	FU	0xCC
#define	HE	0xCD
#define	HO	0xCE

#define	MA	0xCF
#define	MI	0xD0
#define	MU	0xD1
#define	ME	0xD2
#define	MO	0xD3

#define	YA	0xD4
#define	YU	0xD5
#define	YO	0xD6

#define	RA	0xD7
#define	RI	0xD8
#define	RU	0xD9
#define	RE	0xDA
#define	RO	0xDB

#define	WA	0xDC
#define	NN	0xDD

#define	DAKUTEN	0xDE
#define	MARU		0xDF
#define	KUTEN	0xA4
#define	TOUTEN	0xA1

#define SP		0x20
#define	E_MARK	0x21
#define Q_MARK	0x3F

extern unsigned char Upside_Data[];
extern unsigned char Downside_Data[];
extern unsigned char Vfd_Data[];

#endif