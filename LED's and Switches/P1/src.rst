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
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 ;--------------------------------------------------------
                                    109 ; special function registers
                                    110 ;--------------------------------------------------------
                                    111 	.area RSEG    (ABS,DATA)
      000000                        112 	.org 0x0000
                           000080   113 _P0	=	0x0080
                           000081   114 _SP	=	0x0081
                           000082   115 _DPL	=	0x0082
                           000083   116 _DPH	=	0x0083
                           000087   117 _PCON	=	0x0087
                           000088   118 _TCON	=	0x0088
                           000089   119 _TMOD	=	0x0089
                           00008A   120 _TL0	=	0x008a
                           00008B   121 _TL1	=	0x008b
                           00008C   122 _TH0	=	0x008c
                           00008D   123 _TH1	=	0x008d
                           000090   124 _P1	=	0x0090
                           000098   125 _SCON	=	0x0098
                           000099   126 _SBUF	=	0x0099
                           0000A0   127 _P2	=	0x00a0
                           0000A8   128 _IE	=	0x00a8
                           0000B0   129 _P3	=	0x00b0
                           0000B8   130 _IP	=	0x00b8
                           0000D0   131 _PSW	=	0x00d0
                           0000E0   132 _ACC	=	0x00e0
                           0000F0   133 _B	=	0x00f0
                                    134 ;--------------------------------------------------------
                                    135 ; special function bits
                                    136 ;--------------------------------------------------------
                                    137 	.area RSEG    (ABS,DATA)
      000000                        138 	.org 0x0000
                           000080   139 _P0_0	=	0x0080
                           000081   140 _P0_1	=	0x0081
                           000082   141 _P0_2	=	0x0082
                           000083   142 _P0_3	=	0x0083
                           000084   143 _P0_4	=	0x0084
                           000085   144 _P0_5	=	0x0085
                           000086   145 _P0_6	=	0x0086
                           000087   146 _P0_7	=	0x0087
                           000088   147 _IT0	=	0x0088
                           000089   148 _IE0	=	0x0089
                           00008A   149 _IT1	=	0x008a
                           00008B   150 _IE1	=	0x008b
                           00008C   151 _TR0	=	0x008c
                           00008D   152 _TF0	=	0x008d
                           00008E   153 _TR1	=	0x008e
                           00008F   154 _TF1	=	0x008f
                           000090   155 _P1_0	=	0x0090
                           000091   156 _P1_1	=	0x0091
                           000092   157 _P1_2	=	0x0092
                           000093   158 _P1_3	=	0x0093
                           000094   159 _P1_4	=	0x0094
                           000095   160 _P1_5	=	0x0095
                           000096   161 _P1_6	=	0x0096
                           000097   162 _P1_7	=	0x0097
                           000098   163 _RI	=	0x0098
                           000099   164 _TI	=	0x0099
                           00009A   165 _RB8	=	0x009a
                           00009B   166 _TB8	=	0x009b
                           00009C   167 _REN	=	0x009c
                           00009D   168 _SM2	=	0x009d
                           00009E   169 _SM1	=	0x009e
                           00009F   170 _SM0	=	0x009f
                           0000A0   171 _P2_0	=	0x00a0
                           0000A1   172 _P2_1	=	0x00a1
                           0000A2   173 _P2_2	=	0x00a2
                           0000A3   174 _P2_3	=	0x00a3
                           0000A4   175 _P2_4	=	0x00a4
                           0000A5   176 _P2_5	=	0x00a5
                           0000A6   177 _P2_6	=	0x00a6
                           0000A7   178 _P2_7	=	0x00a7
                           0000A8   179 _EX0	=	0x00a8
                           0000A9   180 _ET0	=	0x00a9
                           0000AA   181 _EX1	=	0x00aa
                           0000AB   182 _ET1	=	0x00ab
                           0000AC   183 _ES	=	0x00ac
                           0000AF   184 _EA	=	0x00af
                           0000B0   185 _P3_0	=	0x00b0
                           0000B1   186 _P3_1	=	0x00b1
                           0000B2   187 _P3_2	=	0x00b2
                           0000B3   188 _P3_3	=	0x00b3
                           0000B4   189 _P3_4	=	0x00b4
                           0000B5   190 _P3_5	=	0x00b5
                           0000B6   191 _P3_6	=	0x00b6
                           0000B7   192 _P3_7	=	0x00b7
                           0000B0   193 _RXD	=	0x00b0
                           0000B1   194 _TXD	=	0x00b1
                           0000B2   195 _INT0	=	0x00b2
                           0000B3   196 _INT1	=	0x00b3
                           0000B4   197 _T0	=	0x00b4
                           0000B5   198 _T1	=	0x00b5
                           0000B6   199 _WR	=	0x00b6
                           0000B7   200 _RD	=	0x00b7
                           0000B8   201 _PX0	=	0x00b8
                           0000B9   202 _PT0	=	0x00b9
                           0000BA   203 _PX1	=	0x00ba
                           0000BB   204 _PT1	=	0x00bb
                           0000BC   205 _PS	=	0x00bc
                           0000D0   206 _P	=	0x00d0
                           0000D1   207 _F1	=	0x00d1
                           0000D2   208 _OV	=	0x00d2
                           0000D3   209 _RS0	=	0x00d3
                           0000D4   210 _RS1	=	0x00d4
                           0000D5   211 _F0	=	0x00d5
                           0000D6   212 _AC	=	0x00d6
                           0000D7   213 _CY	=	0x00d7
                                    214 ;--------------------------------------------------------
                                    215 ; overlayable register banks
                                    216 ;--------------------------------------------------------
                                    217 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        218 	.ds 8
                                    219 ;--------------------------------------------------------
                                    220 ; internal ram data
                                    221 ;--------------------------------------------------------
                                    222 	.area DSEG    (DATA)
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable items in internal ram
                                    225 ;--------------------------------------------------------
                                    226 ;--------------------------------------------------------
                                    227 ; Stack segment in internal ram
                                    228 ;--------------------------------------------------------
                                    229 	.area SSEG
      000008                        230 __start__stack:
      000008                        231 	.ds	1
                                    232 
                                    233 ;--------------------------------------------------------
                                    234 ; indirectly addressable internal ram data
                                    235 ;--------------------------------------------------------
                                    236 	.area ISEG    (DATA)
                                    237 ;--------------------------------------------------------
                                    238 ; absolute internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area IABS    (ABS,DATA)
                                    241 	.area IABS    (ABS,DATA)
                                    242 ;--------------------------------------------------------
                                    243 ; bit data
                                    244 ;--------------------------------------------------------
                                    245 	.area BSEG    (BIT)
                                    246 ;--------------------------------------------------------
                                    247 ; paged external ram data
                                    248 ;--------------------------------------------------------
                                    249 	.area PSEG    (PAG,XDATA)
                                    250 ;--------------------------------------------------------
                                    251 ; uninitialized external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area XSEG    (XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; absolute external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XABS    (ABS,XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; initialized external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XISEG   (XDATA)
                                    262 	.area HOME    (CODE)
                                    263 	.area GSINIT0 (CODE)
                                    264 	.area GSINIT1 (CODE)
                                    265 	.area GSINIT2 (CODE)
                                    266 	.area GSINIT3 (CODE)
                                    267 	.area GSINIT4 (CODE)
                                    268 	.area GSINIT5 (CODE)
                                    269 	.area GSINIT  (CODE)
                                    270 	.area GSFINAL (CODE)
                                    271 	.area CSEG    (CODE)
                                    272 ;--------------------------------------------------------
                                    273 ; interrupt vector
                                    274 ;--------------------------------------------------------
                                    275 	.area HOME    (CODE)
      000000                        276 __interrupt_vect:
      000000 02 00 06         [24]  277 	ljmp	__sdcc_gsinit_startup
                                    278 ;--------------------------------------------------------
                                    279 ; global & static initialisations
                                    280 ;--------------------------------------------------------
                                    281 	.area HOME    (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 	.area GSFINAL (CODE)
                                    284 	.area GSINIT  (CODE)
                                    285 	.globl __sdcc_gsinit_startup
                                    286 	.globl __sdcc_program_startup
                                    287 	.globl __start__stack
                                    288 	.globl __mcs51_genXINIT
                                    289 	.globl __mcs51_genXRAMCLEAR
                                    290 	.globl __mcs51_genRAMCLEAR
                                    291 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  292 	ljmp	__sdcc_program_startup
                                    293 ;--------------------------------------------------------
                                    294 ; Home
                                    295 ;--------------------------------------------------------
                                    296 	.area HOME    (CODE)
                                    297 	.area HOME    (CODE)
      000003                        298 __sdcc_program_startup:
      000003 02 00 62         [24]  299 	ljmp	_main
                                    300 ;	return from main will return to caller
                                    301 ;--------------------------------------------------------
                                    302 ; code
                                    303 ;--------------------------------------------------------
                                    304 	.area CSEG    (CODE)
                                    305 ;------------------------------------------------------------
                                    306 ;Allocation info for local variables in function 'main'
                                    307 ;------------------------------------------------------------
                                    308 ;	.\src.c:3: int main(){
                                    309 ;	-----------------------------------------
                                    310 ;	 function main
                                    311 ;	-----------------------------------------
      000062                        312 _main:
                           000007   313 	ar7 = 0x07
                           000006   314 	ar6 = 0x06
                           000005   315 	ar5 = 0x05
                           000004   316 	ar4 = 0x04
                           000003   317 	ar3 = 0x03
                           000002   318 	ar2 = 0x02
                           000001   319 	ar1 = 0x01
                           000000   320 	ar0 = 0x00
                                    321 ;	.\src.c:6: P1 = 0b10101010;
      000062 75 90 AA         [24]  322 	mov	_P1,#0xaa
                                    323 ;	.\src.c:7: while(1)
      000065                        324 00102$:
                                    325 ;	.\src.c:9: P1 = ~P1;
      000065 E5 90            [12]  326 	mov	a,_P1
      000067 F4               [12]  327 	cpl	a
      000068 F5 90            [12]  328 	mov	_P1,a
                                    329 ;	.\src.c:11: }
      00006A 80 F9            [24]  330 	sjmp	00102$
                                    331 	.area CSEG    (CODE)
                                    332 	.area CONST   (CODE)
                                    333 	.area XINIT   (CODE)
                                    334 	.area CABS    (ABS,CODE)
