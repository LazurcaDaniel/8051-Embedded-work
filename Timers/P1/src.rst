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
                                     11 	.globl _main
                                     12 	.globl _func
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _flag
                                    110 	.globl _count
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
      000008                        226 _count::
      000008                        227 	.ds 1
      000009                        228 _flag::
      000009                        229 	.ds 1
                                    230 ;--------------------------------------------------------
                                    231 ; overlayable items in internal ram
                                    232 ;--------------------------------------------------------
                                    233 ;--------------------------------------------------------
                                    234 ; Stack segment in internal ram
                                    235 ;--------------------------------------------------------
                                    236 	.area SSEG
      00000A                        237 __start__stack:
      00000A                        238 	.ds	1
                                    239 
                                    240 ;--------------------------------------------------------
                                    241 ; indirectly addressable internal ram data
                                    242 ;--------------------------------------------------------
                                    243 	.area ISEG    (DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; absolute internal ram data
                                    246 ;--------------------------------------------------------
                                    247 	.area IABS    (ABS,DATA)
                                    248 	.area IABS    (ABS,DATA)
                                    249 ;--------------------------------------------------------
                                    250 ; bit data
                                    251 ;--------------------------------------------------------
                                    252 	.area BSEG    (BIT)
                                    253 ;--------------------------------------------------------
                                    254 ; paged external ram data
                                    255 ;--------------------------------------------------------
                                    256 	.area PSEG    (PAG,XDATA)
                                    257 ;--------------------------------------------------------
                                    258 ; uninitialized external ram data
                                    259 ;--------------------------------------------------------
                                    260 	.area XSEG    (XDATA)
                                    261 ;--------------------------------------------------------
                                    262 ; absolute external ram data
                                    263 ;--------------------------------------------------------
                                    264 	.area XABS    (ABS,XDATA)
                                    265 ;--------------------------------------------------------
                                    266 ; initialized external ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area XISEG   (XDATA)
                                    269 	.area HOME    (CODE)
                                    270 	.area GSINIT0 (CODE)
                                    271 	.area GSINIT1 (CODE)
                                    272 	.area GSINIT2 (CODE)
                                    273 	.area GSINIT3 (CODE)
                                    274 	.area GSINIT4 (CODE)
                                    275 	.area GSINIT5 (CODE)
                                    276 	.area GSINIT  (CODE)
                                    277 	.area GSFINAL (CODE)
                                    278 	.area CSEG    (CODE)
                                    279 ;--------------------------------------------------------
                                    280 ; interrupt vector
                                    281 ;--------------------------------------------------------
                                    282 	.area HOME    (CODE)
      000000                        283 __interrupt_vect:
      000000 02 00 11         [24]  284 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  285 	reti
      000004                        286 	.ds	7
      00000B 02 00 6D         [24]  287 	ljmp	_func
                                    288 ;--------------------------------------------------------
                                    289 ; global & static initialisations
                                    290 ;--------------------------------------------------------
                                    291 	.area HOME    (CODE)
                                    292 	.area GSINIT  (CODE)
                                    293 	.area GSFINAL (CODE)
                                    294 	.area GSINIT  (CODE)
                                    295 	.globl __sdcc_gsinit_startup
                                    296 	.globl __sdcc_program_startup
                                    297 	.globl __start__stack
                                    298 	.globl __mcs51_genXINIT
                                    299 	.globl __mcs51_genXRAMCLEAR
                                    300 	.globl __mcs51_genRAMCLEAR
                                    301 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  302 	ljmp	__sdcc_program_startup
                                    303 ;--------------------------------------------------------
                                    304 ; Home
                                    305 ;--------------------------------------------------------
                                    306 	.area HOME    (CODE)
                                    307 	.area HOME    (CODE)
      00000E                        308 __sdcc_program_startup:
      00000E 02 00 AA         [24]  309 	ljmp	_main
                                    310 ;	return from main will return to caller
                                    311 ;--------------------------------------------------------
                                    312 ; code
                                    313 ;--------------------------------------------------------
                                    314 	.area CSEG    (CODE)
                                    315 ;------------------------------------------------------------
                                    316 ;Allocation info for local variables in function 'func'
                                    317 ;------------------------------------------------------------
                                    318 ;	.\src.c:5: void func(void) __interrupt(1) {
                                    319 ;	-----------------------------------------
                                    320 ;	 function func
                                    321 ;	-----------------------------------------
      00006D                        322 _func:
                           000007   323 	ar7 = 0x07
                           000006   324 	ar6 = 0x06
                           000005   325 	ar5 = 0x05
                           000004   326 	ar4 = 0x04
                           000003   327 	ar3 = 0x03
                           000002   328 	ar2 = 0x02
                           000001   329 	ar1 = 0x01
                           000000   330 	ar0 = 0x00
      00006D C0 E0            [24]  331 	push	acc
      00006F C0 07            [24]  332 	push	ar7
      000071 C0 D0            [24]  333 	push	psw
      000073 75 D0 00         [24]  334 	mov	psw,#0x00
                                    335 ;	.\src.c:7: TH0 = 0xD8;
      000076 75 8C D8         [24]  336 	mov	_TH0,#0xd8
                                    337 ;	.\src.c:8: TL0 = 0xEF;
      000079 75 8A EF         [24]  338 	mov	_TL0,#0xef
                                    339 ;	.\src.c:10: if(flag == 0)
      00007C E5 09            [12]  340 	mov	a,_flag
      00007E 70 10            [24]  341 	jnz	00106$
                                    342 ;	.\src.c:12: count = count << 1;
      000080 E5 08            [12]  343 	mov	a,_count
      000082 25 E0            [12]  344 	add	a,acc
      000084 F5 08            [12]  345 	mov	_count,a
                                    346 ;	.\src.c:13: if(count == 0b10000000)
      000086 74 80            [12]  347 	mov	a,#0x80
      000088 B5 08 13         [24]  348 	cjne	a,_count,00107$
                                    349 ;	.\src.c:15: flag = 1;
      00008B 75 09 01         [24]  350 	mov	_flag,#0x01
      00008E 80 0E            [24]  351 	sjmp	00107$
      000090                        352 00106$:
                                    353 ;	.\src.c:20: count = count >> 1;
      000090 E5 08            [12]  354 	mov	a,_count
      000092 C3               [12]  355 	clr	c
      000093 13               [12]  356 	rrc	a
      000094 F5 08            [12]  357 	mov	_count,a
                                    358 ;	.\src.c:21: if(count == 0b00000001)
      000096 74 01            [12]  359 	mov	a,#0x01
      000098 B5 08 03         [24]  360 	cjne	a,_count,00107$
                                    361 ;	.\src.c:24: flag = 0;
      00009B 75 09 00         [24]  362 	mov	_flag,#0x00
      00009E                        363 00107$:
                                    364 ;	.\src.c:27: P1 = ~count;
      00009E E5 08            [12]  365 	mov	a,_count
      0000A0 F4               [12]  366 	cpl	a
      0000A1 F5 90            [12]  367 	mov	_P1,a
                                    368 ;	.\src.c:29: }
      0000A3 D0 D0            [24]  369 	pop	psw
      0000A5 D0 07            [24]  370 	pop	ar7
      0000A7 D0 E0            [24]  371 	pop	acc
      0000A9 32               [24]  372 	reti
                                    373 ;	eliminated unneeded push/pop dpl
                                    374 ;	eliminated unneeded push/pop dph
                                    375 ;	eliminated unneeded push/pop b
                                    376 ;------------------------------------------------------------
                                    377 ;Allocation info for local variables in function 'main'
                                    378 ;------------------------------------------------------------
                                    379 ;	.\src.c:31: int main(){
                                    380 ;	-----------------------------------------
                                    381 ;	 function main
                                    382 ;	-----------------------------------------
      0000AA                        383 _main:
                                    384 ;	.\src.c:32: TR0 = 0;
                                    385 ;	assignBit
      0000AA C2 8C            [12]  386 	clr	_TR0
                                    387 ;	.\src.c:33: TMOD = 1; ///modul 16 biti
      0000AC 75 89 01         [24]  388 	mov	_TMOD,#0x01
                                    389 ;	.\src.c:34: EA = 1; ///imi da voie sa bag timere
                                    390 ;	assignBit
      0000AF D2 AF            [12]  391 	setb	_EA
                                    392 ;	.\src.c:35: ET0 = 1; ////activeraza timerul 0
                                    393 ;	assignBit
      0000B1 D2 A9            [12]  394 	setb	_ET0
                                    395 ;	.\src.c:36: TH0 = 0xD8;
      0000B3 75 8C D8         [24]  396 	mov	_TH0,#0xd8
                                    397 ;	.\src.c:37: TL0 = 0xEF;
      0000B6 75 8A EF         [24]  398 	mov	_TL0,#0xef
                                    399 ;	.\src.c:39: TR0 = 1; ///porneste timerul 0
                                    400 ;	assignBit
      0000B9 D2 8C            [12]  401 	setb	_TR0
                                    402 ;	.\src.c:40: count = 1;
      0000BB 75 08 01         [24]  403 	mov	_count,#0x01
                                    404 ;	.\src.c:41: flag = 0;
      0000BE 75 09 00         [24]  405 	mov	_flag,#0x00
                                    406 ;	.\src.c:42: while(1){}
      0000C1                        407 00102$:
                                    408 ;	.\src.c:43: }
      0000C1 80 FE            [24]  409 	sjmp	00102$
                                    410 	.area CSEG    (CODE)
                                    411 	.area CONST   (CODE)
                                    412 	.area XINIT   (CODE)
                                    413 	.area CABS    (ABS,CODE)
