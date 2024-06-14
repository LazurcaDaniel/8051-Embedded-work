;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (MINGW32)
;--------------------------------------------------------
	.module src
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_main_cif_10001_2:
	.ds 4
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;x                         Allocated to registers 
;nrCif                     Allocated to registers r6 
;cif                       Allocated with name '_main_cif_10001_2'
;i                         Allocated to registers r7 
;poz                       Allocated to registers r7 
;------------------------------------------------------------
;	.\src.c:20: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	.\src.c:22: P0_7 = 1;
;	assignBit
	setb	_P0_7
;	.\src.c:25: unsigned char cif[4] = {0};
	mov	_main_cif_10001_2,#0x00
	mov	(_main_cif_10001_2 + 0x0001),#0x00
	mov	(_main_cif_10001_2 + 0x0002),#0x00
	mov	(_main_cif_10001_2 + 0x0003),#0x00
;	.\src.c:36: while(x >= 10)
	mov	r7,#0x2a
00107$:
	cjne	r7,#0x0a,00190$
00190$:
	jc	00109$
;	.\src.c:38: x -= 10;
	mov	a,r7
	add	a,#0xf6
	mov	r7,a
;	.\src.c:39: cif[1]++;
	mov	a,(_main_cif_10001_2 + 0x0001)
	inc	a
	mov	(_main_cif_10001_2 + 0x0001),a
	sjmp	00107$
00109$:
;	.\src.c:41: cif[0] = x;
	mov	_main_cif_10001_2,r7
;	.\src.c:42: for(unsigned char i = 3; i >= 0; i--)
	mov	r7,#0x03
00130$:
;	.\src.c:43: if(cif[i] != 0)
	mov	a,r7
	add	a, #_main_cif_10001_2
	mov	r1,a
	mov	a,@r1
	jz	00132$
;	.\src.c:45: nrCif = i;
	mov	ar6,r7
;	.\src.c:46: break;
	sjmp	00112$
00132$:
;	.\src.c:42: for(unsigned char i = 3; i >= 0; i--)
	dec	r7
	sjmp	00130$
00112$:
;	.\src.c:51: unsigned char poz = 0;
	mov	r7,#0x00
;	.\src.c:52: P3 = poz << 3;
	mov	_P3,r7
;	.\src.c:53: while(1){
00128$:
;	.\src.c:55: switch (cif[poz])
	mov	a,r7
	add	a, #_main_cif_10001_2
	mov	r1,a
	mov	a,@r1
	mov	r5,a
	add	a,#0xff - 0x09
	jc	00124$
	mov	a,r5
	add	a,#(00194$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r5
	add	a,#(00195$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00194$:
	.db	00113$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00117$
	.db	00118$
	.db	00119$
	.db	00120$
	.db	00121$
	.db	00122$
00195$:
	.db	00113$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00118$>>8
	.db	00119$>>8
	.db	00120$>>8
	.db	00121$>>8
	.db	00122$>>8
;	.\src.c:57: case 0:
00113$:
;	.\src.c:58: P1 = 0b11000000;
	mov	_P1,#0xc0
;	.\src.c:59: break;
;	.\src.c:60: case 1:
	sjmp	00124$
00114$:
;	.\src.c:61: P1 = 0b11111001;
	mov	_P1,#0xf9
;	.\src.c:62: break;
;	.\src.c:63: case 2:
	sjmp	00124$
00115$:
;	.\src.c:64: P1 = 0b10100100;
	mov	_P1,#0xa4
;	.\src.c:65: break;
;	.\src.c:67: case 3:
	sjmp	00124$
00116$:
;	.\src.c:68: P1 = 0b101100001;
	mov	_P1,#0x61
;	.\src.c:69: break;
;	.\src.c:71: case 4: 
	sjmp	00124$
00117$:
;	.\src.c:72: P1 = 0b10011001;
	mov	_P1,#0x99
;	.\src.c:73: break;
;	.\src.c:75: case 5:
	sjmp	00124$
00118$:
;	.\src.c:76: P1 = 0b10010010;
	mov	_P1,#0x92
;	.\src.c:77: break;
;	.\src.c:79: case 6:
	sjmp	00124$
00119$:
;	.\src.c:80: P1 = 0b10000010;
	mov	_P1,#0x82
;	.\src.c:81: break;
;	.\src.c:83: case 7:
	sjmp	00124$
00120$:
;	.\src.c:84: P1 = 0b11111000;
	mov	_P1,#0xf8
;	.\src.c:85: break;
;	.\src.c:87: case 8:
	sjmp	00124$
00121$:
;	.\src.c:88: P1 = 0b10000000;
	mov	_P1,#0x80
;	.\src.c:89: break;
;	.\src.c:91: case 9:
	sjmp	00124$
00122$:
;	.\src.c:93: P1 = 0b10010000;
	mov	_P1,#0x90
;	.\src.c:97: }
00124$:
;	.\src.c:98: poz++;
	inc	r7
;	.\src.c:99: if(poz == nrCif + 1)
	mov	ar4,r6
	mov	r5,#0x00
	inc	r4
	cjne	r4,#0x00,00196$
	inc	r5
00196$:
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r2
	cjne	a,ar4,00126$
	mov	a,r3
	cjne	a,ar5,00126$
;	.\src.c:100: poz = 0;
	mov	r7,#0x00
00126$:
;	.\src.c:101: P0_7 = 1;
;	assignBit
	setb	_P0_7
;	.\src.c:103: P3 = poz << 3;
	mov	ar5,r7
	mov	a,r5
	swap	a
	rr	a
	anl	a,#0xf8
	mov	_P3,a
;	.\src.c:105: P0_7 = 0;
;	assignBit
	clr	_P0_7
;	.\src.c:107: }
	ljmp	00128$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
