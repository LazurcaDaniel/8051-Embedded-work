                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.4.0 #14620 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module src
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _printKey_PARM_2
                                     12 	.globl _main
                                     13 	.globl _printKey
                                     14 	.globl _getKeyPressed
                                     15 	.globl _CY
                                     16 	.globl _AC
                                     17 	.globl _F0
                                     18 	.globl _RS1
                                     19 	.globl _RS0
                                     20 	.globl _OV
                                     21 	.globl _F1
                                     22 	.globl _P
                                     23 	.globl _PS
                                     24 	.globl _PT1
                                     25 	.globl _PX1
                                     26 	.globl _PT0
                                     27 	.globl _PX0
                                     28 	.globl _RD
                                     29 	.globl _WR
                                     30 	.globl _T1
                                     31 	.globl _T0
                                     32 	.globl _INT1
                                     33 	.globl _INT0
                                     34 	.globl _TXD
                                     35 	.globl _RXD
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _EA
                                     45 	.globl _ES
                                     46 	.globl _ET1
                                     47 	.globl _EX1
                                     48 	.globl _ET0
                                     49 	.globl _EX0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _SM0
                                     59 	.globl _SM1
                                     60 	.globl _SM2
                                     61 	.globl _REN
                                     62 	.globl _TB8
                                     63 	.globl _RB8
                                     64 	.globl _TI
                                     65 	.globl _RI
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _TF1
                                     75 	.globl _TR1
                                     76 	.globl _TF0
                                     77 	.globl _TR0
                                     78 	.globl _IE1
                                     79 	.globl _IT1
                                     80 	.globl _IE0
                                     81 	.globl _IT0
                                     82 	.globl _P0_7
                                     83 	.globl _P0_6
                                     84 	.globl _P0_5
                                     85 	.globl _P0_4
                                     86 	.globl _P0_3
                                     87 	.globl _P0_2
                                     88 	.globl _P0_1
                                     89 	.globl _P0_0
                                     90 	.globl _B
                                     91 	.globl _ACC
                                     92 	.globl _PSW
                                     93 	.globl _IP
                                     94 	.globl _P3
                                     95 	.globl _IE
                                     96 	.globl _P2
                                     97 	.globl _SBUF
                                     98 	.globl _SCON
                                     99 	.globl _P1
                                    100 	.globl _TH1
                                    101 	.globl _TH0
                                    102 	.globl _TL1
                                    103 	.globl _TL0
                                    104 	.globl _TMOD
                                    105 	.globl _TCON
                                    106 	.globl _PCON
                                    107 	.globl _DPH
                                    108 	.globl _DPL
                                    109 	.globl _SP
                                    110 	.globl _P0
                                    111 ;--------------------------------------------------------
                                    112 ; special function registers
                                    113 ;--------------------------------------------------------
                                    114 	.area RSEG    (ABS,DATA)
      000000                        115 	.org 0x0000
                           000080   116 _P0	=	0x0080
                           000081   117 _SP	=	0x0081
                           000082   118 _DPL	=	0x0082
                           000083   119 _DPH	=	0x0083
                           000087   120 _PCON	=	0x0087
                           000088   121 _TCON	=	0x0088
                           000089   122 _TMOD	=	0x0089
                           00008A   123 _TL0	=	0x008a
                           00008B   124 _TL1	=	0x008b
                           00008C   125 _TH0	=	0x008c
                           00008D   126 _TH1	=	0x008d
                           000090   127 _P1	=	0x0090
                           000098   128 _SCON	=	0x0098
                           000099   129 _SBUF	=	0x0099
                           0000A0   130 _P2	=	0x00a0
                           0000A8   131 _IE	=	0x00a8
                           0000B0   132 _P3	=	0x00b0
                           0000B8   133 _IP	=	0x00b8
                           0000D0   134 _PSW	=	0x00d0
                           0000E0   135 _ACC	=	0x00e0
                           0000F0   136 _B	=	0x00f0
                                    137 ;--------------------------------------------------------
                                    138 ; special function bits
                                    139 ;--------------------------------------------------------
                                    140 	.area RSEG    (ABS,DATA)
      000000                        141 	.org 0x0000
                           000080   142 _P0_0	=	0x0080
                           000081   143 _P0_1	=	0x0081
                           000082   144 _P0_2	=	0x0082
                           000083   145 _P0_3	=	0x0083
                           000084   146 _P0_4	=	0x0084
                           000085   147 _P0_5	=	0x0085
                           000086   148 _P0_6	=	0x0086
                           000087   149 _P0_7	=	0x0087
                           000088   150 _IT0	=	0x0088
                           000089   151 _IE0	=	0x0089
                           00008A   152 _IT1	=	0x008a
                           00008B   153 _IE1	=	0x008b
                           00008C   154 _TR0	=	0x008c
                           00008D   155 _TF0	=	0x008d
                           00008E   156 _TR1	=	0x008e
                           00008F   157 _TF1	=	0x008f
                           000090   158 _P1_0	=	0x0090
                           000091   159 _P1_1	=	0x0091
                           000092   160 _P1_2	=	0x0092
                           000093   161 _P1_3	=	0x0093
                           000094   162 _P1_4	=	0x0094
                           000095   163 _P1_5	=	0x0095
                           000096   164 _P1_6	=	0x0096
                           000097   165 _P1_7	=	0x0097
                           000098   166 _RI	=	0x0098
                           000099   167 _TI	=	0x0099
                           00009A   168 _RB8	=	0x009a
                           00009B   169 _TB8	=	0x009b
                           00009C   170 _REN	=	0x009c
                           00009D   171 _SM2	=	0x009d
                           00009E   172 _SM1	=	0x009e
                           00009F   173 _SM0	=	0x009f
                           0000A0   174 _P2_0	=	0x00a0
                           0000A1   175 _P2_1	=	0x00a1
                           0000A2   176 _P2_2	=	0x00a2
                           0000A3   177 _P2_3	=	0x00a3
                           0000A4   178 _P2_4	=	0x00a4
                           0000A5   179 _P2_5	=	0x00a5
                           0000A6   180 _P2_6	=	0x00a6
                           0000A7   181 _P2_7	=	0x00a7
                           0000A8   182 _EX0	=	0x00a8
                           0000A9   183 _ET0	=	0x00a9
                           0000AA   184 _EX1	=	0x00aa
                           0000AB   185 _ET1	=	0x00ab
                           0000AC   186 _ES	=	0x00ac
                           0000AF   187 _EA	=	0x00af
                           0000B0   188 _P3_0	=	0x00b0
                           0000B1   189 _P3_1	=	0x00b1
                           0000B2   190 _P3_2	=	0x00b2
                           0000B3   191 _P3_3	=	0x00b3
                           0000B4   192 _P3_4	=	0x00b4
                           0000B5   193 _P3_5	=	0x00b5
                           0000B6   194 _P3_6	=	0x00b6
                           0000B7   195 _P3_7	=	0x00b7
                           0000B0   196 _RXD	=	0x00b0
                           0000B1   197 _TXD	=	0x00b1
                           0000B2   198 _INT0	=	0x00b2
                           0000B3   199 _INT1	=	0x00b3
                           0000B4   200 _T0	=	0x00b4
                           0000B5   201 _T1	=	0x00b5
                           0000B6   202 _WR	=	0x00b6
                           0000B7   203 _RD	=	0x00b7
                           0000B8   204 _PX0	=	0x00b8
                           0000B9   205 _PT0	=	0x00b9
                           0000BA   206 _PX1	=	0x00ba
                           0000BB   207 _PT1	=	0x00bb
                           0000BC   208 _PS	=	0x00bc
                           0000D0   209 _P	=	0x00d0
                           0000D1   210 _F1	=	0x00d1
                           0000D2   211 _OV	=	0x00d2
                           0000D3   212 _RS0	=	0x00d3
                           0000D4   213 _RS1	=	0x00d4
                           0000D5   214 _F0	=	0x00d5
                           0000D6   215 _AC	=	0x00d6
                           0000D7   216 _CY	=	0x00d7
                                    217 ;--------------------------------------------------------
                                    218 ; overlayable register banks
                                    219 ;--------------------------------------------------------
                                    220 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        221 	.ds 8
                                    222 ;--------------------------------------------------------
                                    223 ; internal ram data
                                    224 ;--------------------------------------------------------
                                    225 	.area DSEG    (DATA)
      000008                        226 _main_keys_10000_15:
      000008                        227 	.ds 4
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable items in internal ram
                                    230 ;--------------------------------------------------------
                                    231 	.area	OSEG    (OVR,DATA)
                                    232 	.area	OSEG    (OVR,DATA)
      00000C                        233 _printKey_PARM_2:
      00000C                        234 	.ds 1
                                    235 ;--------------------------------------------------------
                                    236 ; Stack segment in internal ram
                                    237 ;--------------------------------------------------------
                                    238 	.area SSEG
      00000D                        239 __start__stack:
      00000D                        240 	.ds	1
                                    241 
                                    242 ;--------------------------------------------------------
                                    243 ; indirectly addressable internal ram data
                                    244 ;--------------------------------------------------------
                                    245 	.area ISEG    (DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; absolute internal ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area IABS    (ABS,DATA)
                                    250 	.area IABS    (ABS,DATA)
                                    251 ;--------------------------------------------------------
                                    252 ; bit data
                                    253 ;--------------------------------------------------------
                                    254 	.area BSEG    (BIT)
                                    255 ;--------------------------------------------------------
                                    256 ; paged external ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area PSEG    (PAG,XDATA)
                                    259 ;--------------------------------------------------------
                                    260 ; uninitialized external ram data
                                    261 ;--------------------------------------------------------
                                    262 	.area XSEG    (XDATA)
                                    263 ;--------------------------------------------------------
                                    264 ; absolute external ram data
                                    265 ;--------------------------------------------------------
                                    266 	.area XABS    (ABS,XDATA)
                                    267 ;--------------------------------------------------------
                                    268 ; initialized external ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area XISEG   (XDATA)
                                    271 	.area HOME    (CODE)
                                    272 	.area GSINIT0 (CODE)
                                    273 	.area GSINIT1 (CODE)
                                    274 	.area GSINIT2 (CODE)
                                    275 	.area GSINIT3 (CODE)
                                    276 	.area GSINIT4 (CODE)
                                    277 	.area GSINIT5 (CODE)
                                    278 	.area GSINIT  (CODE)
                                    279 	.area GSFINAL (CODE)
                                    280 	.area CSEG    (CODE)
                                    281 ;--------------------------------------------------------
                                    282 ; interrupt vector
                                    283 ;--------------------------------------------------------
                                    284 	.area HOME    (CODE)
      000000                        285 __interrupt_vect:
      000000 02 00 06         [24]  286 	ljmp	__sdcc_gsinit_startup
                                    287 ;--------------------------------------------------------
                                    288 ; global & static initialisations
                                    289 ;--------------------------------------------------------
                                    290 	.area HOME    (CODE)
                                    291 	.area GSINIT  (CODE)
                                    292 	.area GSFINAL (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.globl __sdcc_gsinit_startup
                                    295 	.globl __sdcc_program_startup
                                    296 	.globl __start__stack
                                    297 	.globl __mcs51_genXINIT
                                    298 	.globl __mcs51_genXRAMCLEAR
                                    299 	.globl __mcs51_genRAMCLEAR
                                    300 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  301 	ljmp	__sdcc_program_startup
                                    302 ;--------------------------------------------------------
                                    303 ; Home
                                    304 ;--------------------------------------------------------
                                    305 	.area HOME    (CODE)
                                    306 	.area HOME    (CODE)
      000003                        307 __sdcc_program_startup:
      000003 02 01 0C         [24]  308 	ljmp	_main
                                    309 ;	return from main will return to caller
                                    310 ;--------------------------------------------------------
                                    311 ; code
                                    312 ;--------------------------------------------------------
                                    313 	.area CSEG    (CODE)
                                    314 ;------------------------------------------------------------
                                    315 ;Allocation info for local variables in function 'getKeyPressed'
                                    316 ;------------------------------------------------------------
                                    317 ;value                     Allocated to registers r7 
                                    318 ;------------------------------------------------------------
                                    319 ;	.\src.c:7: unsigned char getKeyPressed() {
                                    320 ;	-----------------------------------------
                                    321 ;	 function getKeyPressed
                                    322 ;	-----------------------------------------
      000062                        323 _getKeyPressed:
                           000007   324 	ar7 = 0x07
                           000006   325 	ar6 = 0x06
                           000005   326 	ar5 = 0x05
                           000004   327 	ar4 = 0x04
                           000003   328 	ar3 = 0x03
                           000002   329 	ar2 = 0x02
                           000001   330 	ar1 = 0x01
                           000000   331 	ar0 = 0x00
                                    332 ;	.\src.c:8: unsigned char value = 10;
      000062 7F 0A            [12]  333 	mov	r7,#0x0a
                                    334 ;	.\src.c:11: P0 = 0b01110111;
      000064 75 80 77         [24]  335 	mov	_P0,#0x77
                                    336 ;	.\src.c:12: if (P0_6 == 0) {
      000067 20 86 04         [24]  337 	jb	_P0_6,00107$
                                    338 ;	.\src.c:13: value = 1;
      00006A 7F 01            [12]  339 	mov	r7,#0x01
      00006C 80 0C            [24]  340 	sjmp	00108$
      00006E                        341 00107$:
                                    342 ;	.\src.c:14: } else if (P0_5 == 0) {
      00006E 20 85 04         [24]  343 	jb	_P0_5,00104$
                                    344 ;	.\src.c:15: value = 2;
      000071 7F 02            [12]  345 	mov	r7,#0x02
      000073 80 05            [24]  346 	sjmp	00108$
      000075                        347 00104$:
                                    348 ;	.\src.c:16: } else if (P0_4 == 0) {
      000075 20 84 02         [24]  349 	jb	_P0_4,00108$
                                    350 ;	.\src.c:17: value = 3;
      000078 7F 03            [12]  351 	mov	r7,#0x03
      00007A                        352 00108$:
                                    353 ;	.\src.c:21: P0 = 0b01111011;
      00007A 75 80 7B         [24]  354 	mov	_P0,#0x7b
                                    355 ;	.\src.c:22: if (P0_6 == 0) {
      00007D 20 86 04         [24]  356 	jb	_P0_6,00115$
                                    357 ;	.\src.c:23: value = 4;
      000080 7F 04            [12]  358 	mov	r7,#0x04
      000082 80 0C            [24]  359 	sjmp	00116$
      000084                        360 00115$:
                                    361 ;	.\src.c:24: } else if (P0_5 == 0) {
      000084 20 85 04         [24]  362 	jb	_P0_5,00112$
                                    363 ;	.\src.c:25: value = 5;
      000087 7F 05            [12]  364 	mov	r7,#0x05
      000089 80 05            [24]  365 	sjmp	00116$
      00008B                        366 00112$:
                                    367 ;	.\src.c:26: } else if (P0_4 == 0) {
      00008B 20 84 02         [24]  368 	jb	_P0_4,00116$
                                    369 ;	.\src.c:27: value = 6;
      00008E 7F 06            [12]  370 	mov	r7,#0x06
      000090                        371 00116$:
                                    372 ;	.\src.c:31: P0 = 0b01111101;
      000090 75 80 7D         [24]  373 	mov	_P0,#0x7d
                                    374 ;	.\src.c:32: if (P0_6 == 0) {
      000093 20 86 04         [24]  375 	jb	_P0_6,00123$
                                    376 ;	.\src.c:33: value = 7;
      000096 7F 07            [12]  377 	mov	r7,#0x07
      000098 80 0C            [24]  378 	sjmp	00124$
      00009A                        379 00123$:
                                    380 ;	.\src.c:34: } else if (P0_5 == 0) {
      00009A 20 85 04         [24]  381 	jb	_P0_5,00120$
                                    382 ;	.\src.c:35: value = 8;
      00009D 7F 08            [12]  383 	mov	r7,#0x08
      00009F 80 05            [24]  384 	sjmp	00124$
      0000A1                        385 00120$:
                                    386 ;	.\src.c:36: } else if (P0_4 == 0) {
      0000A1 20 84 02         [24]  387 	jb	_P0_4,00124$
                                    388 ;	.\src.c:37: value = 9;
      0000A4 7F 09            [12]  389 	mov	r7,#0x09
      0000A6                        390 00124$:
                                    391 ;	.\src.c:41: P0 = 0b01111110;
      0000A6 75 80 7E         [24]  392 	mov	_P0,#0x7e
                                    393 ;	.\src.c:42: if (P0_5 == 0) {
      0000A9 20 85 02         [24]  394 	jb	_P0_5,00126$
                                    395 ;	.\src.c:43: value = 0;
      0000AC 7F 00            [12]  396 	mov	r7,#0x00
      0000AE                        397 00126$:
                                    398 ;	.\src.c:46: return value;
      0000AE 8F 82            [24]  399 	mov	dpl, r7
                                    400 ;	.\src.c:47: }
      0000B0 22               [24]  401 	ret
                                    402 ;------------------------------------------------------------
                                    403 ;Allocation info for local variables in function 'printKey'
                                    404 ;------------------------------------------------------------
                                    405 ;value                     Allocated with name '_printKey_PARM_2'
                                    406 ;poz                       Allocated to registers r7 
                                    407 ;------------------------------------------------------------
                                    408 ;	.\src.c:49: void printKey(unsigned char poz, unsigned char value) {
                                    409 ;	-----------------------------------------
                                    410 ;	 function printKey
                                    411 ;	-----------------------------------------
      0000B1                        412 _printKey:
                                    413 ;	.\src.c:50: P3 = poz << 3;
      0000B1 E5 82            [12]  414 	mov	a,dpl
      0000B3 FF               [12]  415 	mov	r7,a
      0000B4 C4               [12]  416 	swap	a
      0000B5 03               [12]  417 	rr	a
      0000B6 54 F8            [12]  418 	anl	a,#0xf8
      0000B8 F5 B0            [12]  419 	mov	_P3,a
                                    420 ;	.\src.c:51: switch (value) {
      0000BA E5 0C            [12]  421 	mov	a,_printKey_PARM_2
      0000BC 24 F6            [12]  422 	add	a,#0xff - 0x09
      0000BE 40 4B            [24]  423 	jc	00113$
      0000C0 E5 0C            [12]  424 	mov	a,_printKey_PARM_2
      0000C2 24 0B            [12]  425 	add	a,#(00122$-3-.)
      0000C4 83               [24]  426 	movc	a,@a+pc
      0000C5 F5 82            [12]  427 	mov	dpl,a
      0000C7 E5 0C            [12]  428 	mov	a,_printKey_PARM_2
      0000C9 24 0E            [12]  429 	add	a,#(00123$-3-.)
      0000CB 83               [24]  430 	movc	a,@a+pc
      0000CC F5 83            [12]  431 	mov	dph,a
      0000CE E4               [12]  432 	clr	a
      0000CF 73               [24]  433 	jmp	@a+dptr
      0000D0                        434 00122$:
      0000D0 E4                     435 	.db	00101$
      0000D1 E8                     436 	.db	00102$
      0000D2 EC                     437 	.db	00103$
      0000D3 F0                     438 	.db	00104$
      0000D4 F4                     439 	.db	00105$
      0000D5 F8                     440 	.db	00106$
      0000D6 FC                     441 	.db	00107$
      0000D7 00                     442 	.db	00108$
      0000D8 04                     443 	.db	00109$
      0000D9 08                     444 	.db	00110$
      0000DA                        445 00123$:
      0000DA 00                     446 	.db	00101$>>8
      0000DB 00                     447 	.db	00102$>>8
      0000DC 00                     448 	.db	00103$>>8
      0000DD 00                     449 	.db	00104$>>8
      0000DE 00                     450 	.db	00105$>>8
      0000DF 00                     451 	.db	00106$>>8
      0000E0 00                     452 	.db	00107$>>8
      0000E1 01                     453 	.db	00108$>>8
      0000E2 01                     454 	.db	00109$>>8
      0000E3 01                     455 	.db	00110$>>8
                                    456 ;	.\src.c:52: case 0:
      0000E4                        457 00101$:
                                    458 ;	.\src.c:53: P1 = 0b11000000;
      0000E4 75 90 C0         [24]  459 	mov	_P1,#0xc0
                                    460 ;	.\src.c:54: break;
                                    461 ;	.\src.c:55: case 1:
      0000E7 22               [24]  462 	ret
      0000E8                        463 00102$:
                                    464 ;	.\src.c:56: P1 = 0b11111001;
      0000E8 75 90 F9         [24]  465 	mov	_P1,#0xf9
                                    466 ;	.\src.c:57: break;
                                    467 ;	.\src.c:58: case 2:
      0000EB 22               [24]  468 	ret
      0000EC                        469 00103$:
                                    470 ;	.\src.c:59: P1 = 0b10100100;
      0000EC 75 90 A4         [24]  471 	mov	_P1,#0xa4
                                    472 ;	.\src.c:60: break;
                                    473 ;	.\src.c:61: case 3:
      0000EF 22               [24]  474 	ret
      0000F0                        475 00104$:
                                    476 ;	.\src.c:62: P1 = 0b10110000;
      0000F0 75 90 B0         [24]  477 	mov	_P1,#0xb0
                                    478 ;	.\src.c:63: break;
                                    479 ;	.\src.c:64: case 4:
      0000F3 22               [24]  480 	ret
      0000F4                        481 00105$:
                                    482 ;	.\src.c:65: P1 = 0b10011001;
      0000F4 75 90 99         [24]  483 	mov	_P1,#0x99
                                    484 ;	.\src.c:66: break;
                                    485 ;	.\src.c:67: case 5:
      0000F7 22               [24]  486 	ret
      0000F8                        487 00106$:
                                    488 ;	.\src.c:68: P1 = 0b10010010;
      0000F8 75 90 92         [24]  489 	mov	_P1,#0x92
                                    490 ;	.\src.c:69: break;
                                    491 ;	.\src.c:70: case 6:
      0000FB 22               [24]  492 	ret
      0000FC                        493 00107$:
                                    494 ;	.\src.c:71: P1 = 0b10000010;
      0000FC 75 90 82         [24]  495 	mov	_P1,#0x82
                                    496 ;	.\src.c:72: break;
                                    497 ;	.\src.c:73: case 7:
      0000FF 22               [24]  498 	ret
      000100                        499 00108$:
                                    500 ;	.\src.c:74: P1 = 0b11111000;
      000100 75 90 F8         [24]  501 	mov	_P1,#0xf8
                                    502 ;	.\src.c:75: break;
                                    503 ;	.\src.c:76: case 8:
      000103 22               [24]  504 	ret
      000104                        505 00109$:
                                    506 ;	.\src.c:77: P1 = 0b10000000;
      000104 75 90 80         [24]  507 	mov	_P1,#0x80
                                    508 ;	.\src.c:78: break;
                                    509 ;	.\src.c:79: case 9:
      000107 22               [24]  510 	ret
      000108                        511 00110$:
                                    512 ;	.\src.c:80: P1 = 0b10010000;
      000108 75 90 90         [24]  513 	mov	_P1,#0x90
                                    514 ;	.\src.c:84: }
      00010B                        515 00113$:
                                    516 ;	.\src.c:85: }
      00010B 22               [24]  517 	ret
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'main'
                                    520 ;------------------------------------------------------------
                                    521 ;value                     Allocated to registers r5 
                                    522 ;state                     Allocated to registers r7 
                                    523 ;keys                      Allocated with name '_main_keys_10000_15'
                                    524 ;i                         Allocated to registers r6 
                                    525 ;j                         Allocated to registers r7 
                                    526 ;------------------------------------------------------------
                                    527 ;	.\src.c:87: int main() {
                                    528 ;	-----------------------------------------
                                    529 ;	 function main
                                    530 ;	-----------------------------------------
      00010C                        531 _main:
                                    532 ;	.\src.c:89: unsigned char state = STATE_WAIT;
      00010C 7F 00            [12]  533 	mov	r7,#0x00
                                    534 ;	.\src.c:92: while (1) {
      00010E 7E 00            [12]  535 	mov	r6,#0x00
      000110                        536 00111$:
                                    537 ;	.\src.c:93: value = getKeyPressed();
      000110 C0 07            [24]  538 	push	ar7
      000112 C0 06            [24]  539 	push	ar6
      000114 12 00 62         [24]  540 	lcall	_getKeyPressed
      000117 AD 82            [24]  541 	mov	r5, dpl
      000119 D0 06            [24]  542 	pop	ar6
      00011B D0 07            [24]  543 	pop	ar7
                                    544 ;	.\src.c:95: if (state == STATE_WAIT) {
      00011D EF               [12]  545 	mov	a,r7
      00011E 70 10            [24]  546 	jnz	00106$
                                    547 ;	.\src.c:96: if (value != 10) {
      000120 BD 0A 02         [24]  548 	cjne	r5,#0x0a,00164$
      000123 80 10            [24]  549 	sjmp	00107$
      000125                        550 00164$:
                                    551 ;	.\src.c:97: state = STATE_KEY_PRESSED;
      000125 7F 01            [12]  552 	mov	r7,#0x01
                                    553 ;	.\src.c:98: keys[i] = value;
      000127 EE               [12]  554 	mov	a,r6
      000128 24 08            [12]  555 	add	a, #_main_keys_10000_15
      00012A F8               [12]  556 	mov	r0,a
      00012B A6 05            [24]  557 	mov	@r0,ar5
                                    558 ;	.\src.c:99: i++;
      00012D 0E               [12]  559 	inc	r6
      00012E 80 05            [24]  560 	sjmp	00107$
      000130                        561 00106$:
                                    562 ;	.\src.c:102: if (value == 10) {
      000130 BD 0A 02         [24]  563 	cjne	r5,#0x0a,00107$
                                    564 ;	.\src.c:103: state = STATE_WAIT;
      000133 7F 00            [12]  565 	mov	r7,#0x00
      000135                        566 00107$:
                                    567 ;	.\src.c:107: if (i == 4) {
      000135 BE 04 D8         [24]  568 	cjne	r6,#0x04,00111$
                                    569 ;	.\src.c:112: P0_7 = 0;
                                    570 ;	assignBit
      000138 C2 87            [12]  571 	clr	_P0_7
                                    572 ;	.\src.c:113: unsigned char j = 0;
      00013A 7F 00            [12]  573 	mov	r7,#0x00
                                    574 ;	.\src.c:114: while (1) {
      00013C                        575 00116$:
                                    576 ;	.\src.c:115: printKey(j, keys[j]);
      00013C EF               [12]  577 	mov	a,r7
      00013D 24 08            [12]  578 	add	a, #_main_keys_10000_15
      00013F F9               [12]  579 	mov	r1,a
      000140 87 0C            [24]  580 	mov	_printKey_PARM_2,@r1
      000142 8F 82            [24]  581 	mov	dpl, r7
      000144 C0 07            [24]  582 	push	ar7
      000146 12 00 B1         [24]  583 	lcall	_printKey
      000149 D0 07            [24]  584 	pop	ar7
                                    585 ;	.\src.c:117: P0_7 = 1;
                                    586 ;	assignBit
      00014B D2 87            [12]  587 	setb	_P0_7
                                    588 ;	.\src.c:118: j++;
      00014D 0F               [12]  589 	inc	r7
                                    590 ;	.\src.c:119: if (j == 4) {
      00014E BF 04 02         [24]  591 	cjne	r7,#0x04,00114$
                                    592 ;	.\src.c:120: j = 0;
      000151 7F 00            [12]  593 	mov	r7,#0x00
      000153                        594 00114$:
                                    595 ;	.\src.c:122: P0_7 = 0;
                                    596 ;	assignBit
      000153 C2 87            [12]  597 	clr	_P0_7
                                    598 ;	.\src.c:125: return 0;
                                    599 ;	.\src.c:126: }
      000155 80 E5            [24]  600 	sjmp	00116$
                                    601 	.area CSEG    (CODE)
                                    602 	.area CONST   (CODE)
                                    603 	.area XINIT   (CODE)
                                    604 	.area CABS    (ABS,CODE)
