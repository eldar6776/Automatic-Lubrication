opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 59893"

opt pagewidth 120

	opt pm

	processor	12C508A
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
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12c508a.h"
INDF equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12c508a.h"
TMR0 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12c508a.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12c508a.h"
STATUS equ 03h ;# 
# 179 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12c508a.h"
FSR equ 04h ;# 
# 198 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12c508a.h"
OSCCAL equ 05h ;# 
# 272 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12c508a.h"
GPIO equ 06h ;# 
	FNROOT	_main
	global	_counter
	global	_dip_sw_value
	global	_dip_sw_pcnt
	global	_hc164_shift
	global	_sys_flags
	global	_tmp1
	global	_led_tmr
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
_led_tmr:
       ds      1

	global	_output_tmr
_output_tmr:
       ds      1

	global	_GPIO
_GPIO	set	0x6
	global	_OPTION
_OPTION	set	0x0
	global	_TMR0
_TMR0	set	0x1
	global	_TRIS
_TRIS	set	0x6
	global	_GP0
_GP0	set	0x30
	global	_GP1
_GP1	set	0x31
	global	_GP2
_GP2	set	0x32
	global	_GP3
_GP3	set	0x33
	global	_GP4
_GP4	set	0x34
	global	_GP5
_GP5	set	0x35
; #config settings
global __CFG_OSC$IntRC
__CFG_OSC$IntRC equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_IDLOC0$
__CFG_IDLOC0$ equ 0x5
global __CFG_IDLOC1$
__CFG_IDLOC1$ equ 0x9
global __CFG_IDLOC2$
__CFG_IDLOC2$ equ 0x1
global __CFG_IDLOC3$
__CFG_IDLOC3$ equ 0x3
	file	"dist/default/production\PIC12C508.X.production.as"
	line	#
psect cinit,class=ENTRY,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_counter:
       ds      2

_dip_sw_value:
       ds      2

_dip_sw_pcnt:
       ds      1

_hc164_shift:
       ds      1

_sys_flags:
       ds      1

_tmp1:
       ds      1

	line	#
; Clear objects allocated to BANK0
psect cinit,class=ENTRY,delta=2
	clrf	((__pbssBANK0)+0)&01Fh
	clrf	((__pbssBANK0)+1)&01Fh
	clrf	((__pbssBANK0)+2)&01Fh
	clrf	((__pbssBANK0)+3)&01Fh
	clrf	((__pbssBANK0)+4)&01Fh
	clrf	((__pbssBANK0)+5)&01Fh
	clrf	((__pbssBANK0)+6)&01Fh
	clrf	((__pbssBANK0)+7)&01Fh
psect cinit,class=ENTRY,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf fsr
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
??_main:	; 0 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_main:	; 0 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         8
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON            0      0       0
;!    BANK0            23      0      10

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!STACK                0      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!DATA                 0      0       A       1        0.0%
;!BITCOMMON            0      0       0       2        0.0%
;!BITBANK0            17      0       0       3        0.0%
;!COMMON               0      0       0       4        0.0%
;!BANK0               17      0       A       5       43.5%
;!ABS                  0      0       A       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 125 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       0
;;      Totals:         0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"main.c"
	line	125
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	125
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg-fsr0h+status,2-btemp+3]
	line	128
	
l685:	
;main.c: 128: GPIO = 0x00;
	clrf	(6)	;volatile
	line	129
	
l687:	
;main.c: 129: TRIS = 0b00111000;
	movlw	(038h)
	tris	0x6
	line	130
	
l689:	
;main.c: 130: OPTION = 0b11000111;
	movlw	(0C7h)
	option
	line	131
	
l691:	
;main.c: 131: TMR0 = 61;
	movlw	(03Dh)
	movwf	(1)	;volatile
	line	134
	
l693:	
;main.c: 134: sys_flags.b0 = GP3;
	movlw	0
	btfsc	(51/8),(51)&7	;volatile
	movlw	1
	movwf	btemp+3
	movf	btemp+3,w
	skipz
	bsf	(_sys_flags),0
	skipnz
	bcf	(_sys_flags),0
	line	135
	
l695:	
;main.c: 135: sys_flags.b1 = GP4;
	movlw	0
	btfsc	(52/8),(52)&7	;volatile
	movlw	1
	movwf	btemp+3
	movf	btemp+3,w
	skipz
	bsf	(_sys_flags),1
	skipnz
	bcf	(_sys_flags),1
	line	136
	
l697:	
;main.c: 136: GP1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	137
	
l699:	
;main.c: 137: GP2 = 0;
	bcf	(50/8),(50)&7	;volatile
	line	138
	
l701:	
;main.c: 138: GP2 = 1;
	bsf	(50/8),(50)&7	;volatile
	line	139
	
l703:	
;main.c: 139: dip_sw_pcnt = 0;
	clrf	(_dip_sw_pcnt)
	line	140
;main.c: 140: led_tmr = 40;
	movlw	(028h)
	movwf	(_led_tmr)
	line	141
;main.c: 141: output_tmr = 40;
	movlw	(028h)
	movwf	(_output_tmr)
	line	143
	
l705:	
;main.c: 143: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	144
	
l707:	
;main.c: 144: (hc164_shift.b7 = 0);
	bcf	(_hc164_shift),7
	line	145
	
l709:	
;main.c: 145: (hc164_shift._byte |= 0b00111111);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	line	146
	
l711:	
;main.c: 146: (sys_flags.b3 = 1, dip_sw_pcnt = 0);
	bsf	(_sys_flags),3
	
l713:	
	clrf	(_dip_sw_pcnt)
	line	147
	
l715:	
;main.c: 147: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	151
	
l717:	
;main.c: 151: if (TMR0 == 0xff) {
	movf	(1),w	;volatile
	xorlw	0FFh
	skipz
	goto	u341
	goto	u340
u341:
	goto	l735
u340:
	line	152
	
l719:	
;main.c: 152: TMR0 = 61;
	movlw	(03Dh)
	movwf	(1)	;volatile
	line	154
;main.c: 154: if (output_tmr) --output_tmr;
	movf	(_output_tmr),w
	skipz
	goto	u350
	goto	l723
u350:
	
l721:	
	decf	(_output_tmr),f
	goto	l727
	line	155
	
l723:	
;main.c: 155: else if ((hc164_shift.b7 == 0)) {
	btfsc	(_hc164_shift),7
	goto	u361
	goto	u360
u361:
	goto	l727
u360:
	line	156
	
l725:	
;main.c: 156: (hc164_shift.b7 = 1);
	bsf	(_hc164_shift),7
	line	157
;main.c: 157: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	160
	
l727:	
;main.c: 158: }
;main.c: 160: if (led_tmr) --led_tmr;
	movf	(_led_tmr),w
	skipz
	goto	u370
	goto	l731
u370:
	
l729:	
	decf	(_led_tmr),f
	goto	l735
	line	161
	
l731:	
;main.c: 161: else if ((hc164_shift.b6 == 1)) {
	btfss	(_hc164_shift),6
	goto	u381
	goto	u380
u381:
	goto	l735
u380:
	line	162
	
l733:	
;main.c: 162: (hc164_shift.b6 = 0);
	bcf	(_hc164_shift),6
	line	163
;main.c: 163: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	167
	
l735:	
;main.c: 164: }
;main.c: 165: }
;main.c: 167: if (sys_flags.b0 != GP3) {
	movf	(_sys_flags),w
	andlw	(1<<1)-1
	movwf	btemp+3
	movlw	0
	btfsc	(51/8),(51)&7	;volatile
	movlw	1
	xorwf	btemp+3,w
	skipnz
	goto	u391
	goto	u390
u391:
	goto	l761
u390:
	line	168
	
l737:	
;main.c: 168: sys_flags.b0 = GP3;
	movlw	0
	btfsc	(51/8),(51)&7	;volatile
	movlw	1
	movwf	btemp+3
	movf	btemp+3,w
	skipz
	bsf	(_sys_flags),0
	skipnz
	bcf	(_sys_flags),0
	line	169
	
l739:	
;main.c: 169: if (GP3) {
	btfss	(51/8),(51)&7	;volatile
	goto	u401
	goto	u400
u401:
	goto	l761
u400:
	line	170
	
l741:	
;main.c: 170: if ((sys_flags.b2 == 1)) {
	btfss	(_sys_flags),2
	goto	u411
	goto	u410
u411:
	goto	l749
u410:
	line	171
	
l743:	
;main.c: 171: led_tmr = 40;
	movlw	(028h)
	movwf	(_led_tmr)
	line	172
	
l745:	
;main.c: 172: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	173
	
l747:	
;main.c: 173: output_tmr = 40;
	movlw	(028h)
	movwf	(_output_tmr)
	line	174
;main.c: 174: (hc164_shift.b7 = 0);
	bcf	(_hc164_shift),7
	line	175
;main.c: 175: } else {
	goto	l755
	line	176
	
l749:	
;main.c: 176: (hc164_shift.b7 = 1);
	bsf	(_hc164_shift),7
	line	177
	
l751:	
;main.c: 177: led_tmr = 2;
	movlw	(02h)
	movwf	(_led_tmr)
	line	178
	
l753:	
;main.c: 178: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	180
	
l755:	
;main.c: 179: }
;main.c: 180: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	181
	
l757:	
;main.c: 181: (sys_flags.b3 = 1, dip_sw_pcnt = 0);
	bsf	(_sys_flags),3
	
l759:	
	clrf	(_dip_sw_pcnt)
	line	185
	
l761:	
;main.c: 182: }
;main.c: 183: }
;main.c: 185: if (sys_flags.b1 != GP4) {
	rrf	(_sys_flags),w
	andlw	(1<<1)-1
	movwf	btemp+3
	movlw	0
	btfsc	(52/8),(52)&7	;volatile
	movlw	1
	xorwf	btemp+3,w
	skipnz
	goto	u421
	goto	u420
u421:
	goto	l51
u420:
	line	186
	
l763:	
;main.c: 186: sys_flags.b1 = GP4;
	movlw	0
	btfsc	(52/8),(52)&7	;volatile
	movlw	1
	movwf	btemp+3
	movf	btemp+3,w
	skipz
	bsf	(_sys_flags),1
	skipnz
	bcf	(_sys_flags),1
	line	187
	
l765:	
;main.c: 187: if (GP4) {
	btfss	(52/8),(52)&7	;volatile
	goto	u431
	goto	u430
u431:
	goto	l51
u430:
	line	188
	
l767:	
;main.c: 188: if (counter) {
	movf	(_counter+1),w
	iorwf	(_counter),w
	skipnz
	goto	u441
	goto	u440
u441:
	goto	l779
u440:
	line	189
	
l769:	
;main.c: 189: --counter;
	movlw	01h
	movwf	btemp+0
	clrf	btemp+1
	movf	0+wtemp0,w
	subwf	(_counter),f
	movf	1+wtemp0,w
	skipc
	decf	(_counter+1),f
	subwf	(_counter+1),f
	line	190
	
l771:	
;main.c: 190: if (!led_tmr) led_tmr = 2;
	movf	(_led_tmr),f
	skipz
	goto	u451
	goto	u450
u451:
	goto	l775
u450:
	
l773:	
	movlw	(02h)
	movwf	(_led_tmr)
	line	191
	
l775:	
;main.c: 191: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	192
	
l777:	
;main.c: 192: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	194
	
l779:	
;main.c: 193: }
;main.c: 194: if (!counter) {
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u461
	goto	u460
u461:
	goto	l51
u460:
	line	195
	
l781:	
;main.c: 195: if ((sys_flags.b2 == 1)) {
	btfss	(_sys_flags),2
	goto	u471
	goto	u470
u471:
	goto	l791
u470:
	line	196
	
l783:	
;main.c: 196: led_tmr = 40;
	movlw	(028h)
	movwf	(_led_tmr)
	line	197
	
l785:	
;main.c: 197: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	198
	
l787:	
;main.c: 198: output_tmr = 40;
	movlw	(028h)
	movwf	(_output_tmr)
	line	199
;main.c: 199: (hc164_shift.b7 = 0);
	bcf	(_hc164_shift),7
	line	200
;main.c: 200: (sys_flags.b3 = 1, dip_sw_pcnt = 0);
	bsf	(_sys_flags),3
	
l789:	
	clrf	(_dip_sw_pcnt)
	line	201
;main.c: 201: } else {
	goto	l57
	line	202
	
l791:	
;main.c: 202: (hc164_shift.b7 = 1);
	bsf	(_hc164_shift),7
	line	203
;main.c: 203: (hc164_shift.b6 = 0);
	bcf	(_hc164_shift),6
	line	204
	
l57:	
	line	205
;main.c: 204: }
;main.c: 205: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	208
	
l51:	
	line	210
;main.c: 206: }
;main.c: 207: }
;main.c: 208: }
;main.c: 210: if ((sys_flags.b3 == 1)) {
	btfss	(_sys_flags),3
	goto	u481
	goto	u480
u481:
	goto	l893
u480:
	line	211
	
l793:	
;main.c: 211: if (dip_sw_pcnt == 0) {
	movf	(_dip_sw_pcnt),f
	skipz
	goto	u491
	goto	u490
u491:
	goto	l805
u490:
	line	212
	
l795:	
;main.c: 212: dip_sw_value = 0;
	clrf	(_dip_sw_value)
	clrf	(_dip_sw_value+1)
	line	213
	
l797:	
;main.c: 213: ((hc164_shift._byte |= 0b00111111), hc164_shift.b0 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l799:	
	bcf	(_hc164_shift),0
	line	214
	
l801:	
;main.c: 214: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	215
	
l803:	
;main.c: 215: ++dip_sw_pcnt;
	incf	(_dip_sw_pcnt),f
	line	216
;main.c: 216: } else if (dip_sw_pcnt == 1) {
	goto	l893
	
l805:	
	decf	(_dip_sw_pcnt),w
	skipz
	goto	u501
	goto	u500
u501:
	goto	l819
u500:
	line	217
	
l807:	
;main.c: 217: if (GP5 == 0) dip_sw_value += 100;
	btfsc	(53/8),(53)&7	;volatile
	goto	u511
	goto	u510
u511:
	goto	l811
u510:
	
l809:	
	movlw	064h
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	line	218
	
l811:	
;main.c: 218: ((hc164_shift._byte |= 0b00111111), hc164_shift.b1 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l813:	
	bcf	(_hc164_shift),1
	goto	l801
	line	221
	
l819:	
	movf	(_dip_sw_pcnt),w
	xorlw	02h
	skipz
	goto	u521
	goto	u520
u521:
	goto	l833
u520:
	line	222
	
l821:	
;main.c: 222: if (GP5 == 0) dip_sw_value += 200;
	btfsc	(53/8),(53)&7	;volatile
	goto	u531
	goto	u530
u531:
	goto	l825
u530:
	
l823:	
	movlw	0C8h
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	line	223
	
l825:	
;main.c: 223: ((hc164_shift._byte |= 0b00111111), hc164_shift.b2 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l827:	
	bcf	(_hc164_shift),2
	goto	l801
	line	226
	
l833:	
	movf	(_dip_sw_pcnt),w
	xorlw	03h
	skipz
	goto	u541
	goto	u540
u541:
	goto	l847
u540:
	line	227
	
l835:	
;main.c: 227: if (GP5 == 0) dip_sw_value += 400;
	btfsc	(53/8),(53)&7	;volatile
	goto	u551
	goto	u550
u551:
	goto	l839
u550:
	
l837:	
	movlw	low(0190h)
	movwf	btemp+0
	movlw	high(0190h)
	movwf	btemp+1
	movf	0+wtemp0,w
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	movf	1+wtemp0,w
	addwf	(_dip_sw_value+1),f
	line	228
	
l839:	
;main.c: 228: ((hc164_shift._byte |= 0b00111111), hc164_shift.b3 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l841:	
	bcf	(_hc164_shift),3
	goto	l801
	line	231
	
l847:	
	movf	(_dip_sw_pcnt),w
	xorlw	04h
	skipz
	goto	u561
	goto	u560
u561:
	goto	l861
u560:
	line	232
	
l849:	
;main.c: 232: if (GP5 == 0) dip_sw_value += 800;
	btfsc	(53/8),(53)&7	;volatile
	goto	u571
	goto	u570
u571:
	goto	l853
u570:
	
l851:	
	movlw	low(0320h)
	movwf	btemp+0
	movlw	high(0320h)
	movwf	btemp+1
	movf	0+wtemp0,w
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	movf	1+wtemp0,w
	addwf	(_dip_sw_value+1),f
	line	233
	
l853:	
;main.c: 233: ((hc164_shift._byte |= 0b00111111), hc164_shift.b4 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l855:	
	bcf	(_hc164_shift),4
	goto	l801
	line	236
	
l861:	
	movf	(_dip_sw_pcnt),w
	xorlw	05h
	skipz
	goto	u581
	goto	u580
u581:
	goto	l875
u580:
	line	237
	
l863:	
;main.c: 237: if (GP5 == 0) dip_sw_value += 1600;
	btfsc	(53/8),(53)&7	;volatile
	goto	u591
	goto	u590
u591:
	goto	l867
u590:
	
l865:	
	movlw	low(0640h)
	movwf	btemp+0
	movlw	high(0640h)
	movwf	btemp+1
	movf	0+wtemp0,w
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	movf	1+wtemp0,w
	addwf	(_dip_sw_value+1),f
	line	238
	
l867:	
;main.c: 238: ((hc164_shift._byte |= 0b00111111), hc164_shift.b5 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l869:	
	bcf	(_hc164_shift),5
	goto	l801
	line	241
	
l875:	
	movf	(_dip_sw_pcnt),w
	xorlw	06h
	skipz
	goto	u601
	goto	u600
u601:
	goto	l69
u600:
	line	242
	
l877:	
;main.c: 242: if (GP5 == 0) dip_sw_value += 3200;
	btfsc	(53/8),(53)&7	;volatile
	goto	u611
	goto	u610
u611:
	goto	l881
u610:
	
l879:	
	movlw	low(0C80h)
	movwf	btemp+0
	movlw	high(0C80h)
	movwf	btemp+1
	movf	0+wtemp0,w
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	movf	1+wtemp0,w
	addwf	(_dip_sw_value+1),f
	line	243
	
l881:	
;main.c: 243: (hc164_shift._byte |= 0b00111111);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	line	244
	
l883:	
;main.c: 244: counter = dip_sw_value;
	movf	(_dip_sw_value+1),w
	movwf	(_counter+1)
	movf	(_dip_sw_value),w
	movwf	(_counter)
	line	245
	
l885:	
;main.c: 245: if (dip_sw_value == 0) (sys_flags.b2 = 0);
	movf	((_dip_sw_value+1)),w
	iorwf	((_dip_sw_value)),w
	skipz
	goto	u621
	goto	u620
u621:
	goto	l889
u620:
	
l887:	
	bcf	(_sys_flags),2
	goto	l79
	line	246
	
l889:	
;main.c: 246: else (sys_flags.b2 = 1);
	bsf	(_sys_flags),2
	
l79:	
	line	247
;main.c: 247: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	248
;main.c: 248: (sys_flags.b3 = 0);
	bcf	(_sys_flags),3
	goto	l803
	line	251
	
l69:	
	line	253
	
l893:	
;main.c: 250: }
;main.c: 251: }
;main.c: 253: if ((sys_flags.b5 == 1)) {
	btfss	(_sys_flags),5
	goto	u631
	goto	u630
u631:
	goto	l717
u630:
	line	254
	
l895:	
;main.c: 254: tmp1 = 8;
	movlw	(08h)
	movwf	(_tmp1)
	line	255
;main.c: 255: while (tmp1) {
	goto	l905
	line	256
	
l897:	
;main.c: 256: if (((hc164_shift._byte) & (1 <<((tmp1 - 1))))) GP0 = 1;
	movf	(_hc164_shift),w
	movwf	btemp+3
	movlw	-1
	addwf	(_tmp1),w
	movwf	btemp+2
	incf	btemp+2,f
	movlw	(01h)
	movwf	btemp+1
	goto	u644
u645:
	clrc
	rlf	btemp+1,f
u644:
	decfsz	btemp+2,f
	goto	u645
	movf	0+btemp+1,w
	andwf	btemp+3,w
	btfsc	status,2
	goto	u651
	goto	u650
u651:
	goto	l901
u650:
	
l899:	
	bsf	(48/8),(48)&7	;volatile
	goto	l84
	line	257
	
l901:	
;main.c: 257: else GP0 = 0;
	bcf	(48/8),(48)&7	;volatile
	
l84:	
	line	258
;main.c: 258: GP1 = 1;
	bsf	(49/8),(49)&7	;volatile
	line	259
;main.c: 259: GP1 = 0;
	bcf	(49/8),(49)&7	;volatile
	line	260
	
l903:	
;main.c: 260: tmp1--;
	decf	(_tmp1),f
	line	255
	
l905:	
	movf	(_tmp1),f
	skipz
	goto	u661
	goto	u660
u661:
	goto	l897
u660:
	line	262
	
l907:	
;main.c: 261: }
;main.c: 262: (sys_flags.b5 = 0);
	bcf	(_sys_flags),5
	goto	l717
	global	start
	ljmp	start
	opt stack 0
	line	265
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 01Ch

	DABS	1,28,4	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
