opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 59893"

opt pagewidth 120

	opt pm

	processor	12F675
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
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
INDF equ 00h ;# 
# 68 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
TMR0 equ 01h ;# 
# 87 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
PCL equ 02h ;# 
# 106 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
STATUS equ 03h ;# 
# 193 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
FSR equ 04h ;# 
# 212 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
GPIO equ 05h ;# 
# 299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
PCLATH equ 0Ah ;# 
# 318 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
INTCON equ 0Bh ;# 
# 395 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
PIR1 equ 0Ch ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
TMR1 equ 0Eh ;# 
# 448 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
TMR1L equ 0Eh ;# 
# 467 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
TMR1H equ 0Fh ;# 
# 486 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
T1CON equ 010h ;# 
# 550 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
CMCON equ 019h ;# 
# 608 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
ADRESH equ 01Eh ;# 
# 627 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
ADCON0 equ 01Fh ;# 
# 710 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
OPTION_REG equ 081h ;# 
# 779 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
TRISIO equ 085h ;# 
# 828 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
PIE1 equ 08Ch ;# 
# 875 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
PCON equ 08Eh ;# 
# 908 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
OSCCAL equ 090h ;# 
# 967 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
WPU equ 095h ;# 
# 1011 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
IOC equ 096h ;# 
# 1016 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
IOCB equ 096h ;# 
# 1184 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
VRCON equ 099h ;# 
# 1243 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
EEDATA equ 09Ah ;# 
# 1248 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
EEDAT equ 09Ah ;# 
# 1280 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
EEADR equ 09Bh ;# 
# 1299 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
EECON1 equ 09Ch ;# 
# 1336 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
EECON2 equ 09Dh ;# 
# 1355 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
ADRESL equ 09Eh ;# 
# 1374 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic12f675.h"
ANSEL equ 09Fh ;# 
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

	global	_CMCON
_CMCON	set	0x19
	global	_GPIO
_GPIO	set	0x5
	global	_TMR0
_TMR0	set	0x1
	global	_GPIO0
_GPIO0	set	0x28
	global	_GPIO1
_GPIO1	set	0x29
	global	_GPIO2
_GPIO2	set	0x2A
	global	_GPIO3
_GPIO3	set	0x2B
	global	_GPIO4
_GPIO4	set	0x2C
	global	_GPIO5
_GPIO5	set	0x2D
	global	_ANSEL
_ANSEL	set	0x9F
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISIO
_TRISIO	set	0x85
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_FOSC$INTRCIO
__CFG_FOSC$INTRCIO equ 0x0
global __CFG_IDLOC0$
__CFG_IDLOC0$ equ 0x5
global __CFG_IDLOC1$
__CFG_IDLOC1$ equ 0x9
global __CFG_IDLOC2$
__CFG_IDLOC2$ equ 0x1
global __CFG_IDLOC3$
__CFG_IDLOC3$ equ 0x3
	file	"dist/default/production\PIC12F675.X.production.as"
	line	#
psect cinit,class=CODE,delta=2
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
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_main:	; 0 bytes @ 0x0
??_main:	; 0 bytes @ 0x0
	ds	1
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
;!    BANK0            62      1      11

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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0       0
;!                                              0 BANK0      1     1      0
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
;!BITCOMMON            0      0       0       0        0.0%
;!EEDATA              80      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!BITBANK0            3E      0       0       3        0.0%
;!BANK0               3E      1       B       4       17.7%
;!ABS                  0      0       B       5        0.0%
;!DATA                 0      0       B       6        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 123 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 20/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0
;;      Params:         0       0
;;      Locals:         0       0
;;      Temps:          0       1
;;      Totals:         0       1
;;Total ram usage:        1 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"main.c"
	line	123
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"main.c"
	line	123
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	125
	
l753:	
;main.c: 125: (CMCON = 0x07, ANSEL = 0x00, TRISIO = 0b00111000, GPIO = 0x00);
	movlw	(07h)
	movwf	(25)	;volatile
	
l755:	
	bsf	status, 5	;RP0=1, select bank1
	clrf	(159)^080h	;volatile
	
l757:	
	movlw	(038h)
	movwf	(133)^080h	;volatile
	bcf	status, 5	;RP0=0, select bank0
	clrf	(5)	;volatile
	line	126
	
l759:	
;main.c: 126: (OPTION_REG = 0b10000111, TMR0 = 61);
	movlw	(087h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(129)^080h	;volatile
	
l761:	
	movlw	(03Dh)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(1)	;volatile
	line	128
	
l763:	
;main.c: 128: sys_flags.b0 = GPIO3;
	bcf	(_sys_flags),0
	btfss	(43/8),(43)&7	;volatile
	goto	u385
	bsf	(_sys_flags),0
u385:

	line	129
	
l765:	
;main.c: 129: sys_flags.b1 = GPIO4;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(_sys_flags),1
	btfss	(44/8),(44)&7	;volatile
	goto	u395
	bsf	(_sys_flags),1
u395:

	line	130
	
l767:	
;main.c: 130: GPIO1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(41/8),(41)&7	;volatile
	line	131
	
l769:	
;main.c: 131: GPIO2 = 0;
	bcf	(42/8),(42)&7	;volatile
	line	132
	
l771:	
;main.c: 132: GPIO2 = 1;
	bsf	(42/8),(42)&7	;volatile
	line	133
;main.c: 133: dip_sw_pcnt = 0;
	clrf	(_dip_sw_pcnt)
	line	134
	
l773:	
;main.c: 134: led_tmr = 40;
	movlw	(028h)
	movwf	(_led_tmr)
	line	135
	
l775:	
;main.c: 135: output_tmr = 40;
	movlw	(028h)
	movwf	(_output_tmr)
	line	137
	
l777:	
;main.c: 137: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	138
	
l779:	
;main.c: 138: (hc164_shift.b7 = 0);
	bcf	(_hc164_shift),7
	line	139
	
l781:	
;main.c: 139: (hc164_shift._byte |= 0b00111111);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	line	140
	
l783:	
;main.c: 140: (sys_flags.b3 = 1, dip_sw_pcnt = 0);
	bsf	(_sys_flags),3
	
l785:	
	clrf	(_dip_sw_pcnt)
	line	141
	
l787:	
;main.c: 141: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	145
	
l789:	
;main.c: 145: if (TMR0 == 0xff) {
	movf	(1),w	;volatile
	xorlw	0FFh
	skipz
	goto	u401
	goto	u400
u401:
	goto	l803
u400:
	line	146
	
l791:	
;main.c: 146: TMR0 = 61;
	movlw	(03Dh)
	movwf	(1)	;volatile
	line	148
;main.c: 148: if (output_tmr) --output_tmr;
	movf	(_output_tmr),w
	skipz
	goto	u410
	goto	l45
u410:
	
l793:	
	decf	(_output_tmr),f
	goto	l797
	line	149
	
l45:	
;main.c: 149: else if ((hc164_shift.b7 == 0)) {
	btfsc	(_hc164_shift),7
	goto	u421
	goto	u420
u421:
	goto	l797
u420:
	line	150
	
l795:	
;main.c: 150: (hc164_shift.b7 = 1);
	bsf	(_hc164_shift),7
	line	151
;main.c: 151: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	154
	
l797:	
;main.c: 152: }
;main.c: 154: if (led_tmr) --led_tmr;
	movf	(_led_tmr),w
	skipz
	goto	u430
	goto	l48
u430:
	
l799:	
	decf	(_led_tmr),f
	goto	l803
	line	155
	
l48:	
;main.c: 155: else if ((hc164_shift.b6 == 1)) {
	btfss	(_hc164_shift),6
	goto	u441
	goto	u440
u441:
	goto	l803
u440:
	line	156
	
l801:	
;main.c: 156: (hc164_shift.b6 = 0);
	bcf	(_hc164_shift),6
	line	157
;main.c: 157: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	161
	
l803:	
;main.c: 158: }
;main.c: 159: }
;main.c: 161: if (sys_flags.b0 != GPIO3) {
	movf	(_sys_flags),w
	andlw	(1<<1)-1
	movwf	(??_main+0)+0
	movlw	0
	btfsc	(43/8),(43)&7	;volatile
	movlw	1
	xorwf	(??_main+0)+0,w
	skipnz
	goto	u451
	goto	u450
u451:
	goto	l825
u450:
	line	162
	
l805:	
;main.c: 162: sys_flags.b0 = GPIO3;
	bcf	(_sys_flags),0
	btfss	(43/8),(43)&7	;volatile
	goto	u465
	bsf	(_sys_flags),0
u465:

	line	163
;main.c: 163: if (GPIO3) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(43/8),(43)&7	;volatile
	goto	u471
	goto	u470
u471:
	goto	l825
u470:
	line	164
	
l807:	
;main.c: 164: if ((sys_flags.b2 == 1)) {
	btfss	(_sys_flags),2
	goto	u481
	goto	u480
u481:
	goto	l53
u480:
	line	165
	
l809:	
;main.c: 165: led_tmr = 40;
	movlw	(028h)
	movwf	(_led_tmr)
	line	166
	
l811:	
;main.c: 166: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	167
;main.c: 167: output_tmr = 40;
	movlw	(028h)
	movwf	(_output_tmr)
	line	168
	
l813:	
;main.c: 168: (hc164_shift.b7 = 0);
	bcf	(_hc164_shift),7
	line	169
;main.c: 169: } else {
	goto	l819
	
l53:	
	line	170
;main.c: 170: (hc164_shift.b7 = 1);
	bsf	(_hc164_shift),7
	line	171
	
l815:	
;main.c: 171: led_tmr = 2;
	movlw	(02h)
	movwf	(_led_tmr)
	line	172
	
l817:	
;main.c: 172: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	174
	
l819:	
;main.c: 173: }
;main.c: 174: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	175
	
l821:	
;main.c: 175: (sys_flags.b3 = 1, dip_sw_pcnt = 0);
	bsf	(_sys_flags),3
	
l823:	
	clrf	(_dip_sw_pcnt)
	line	179
	
l825:	
;main.c: 176: }
;main.c: 177: }
;main.c: 179: if (sys_flags.b1 != GPIO4) {
	rrf	(_sys_flags),w
	andlw	(1<<1)-1
	movwf	(??_main+0)+0
	movlw	0
	btfsc	(44/8),(44)&7	;volatile
	movlw	1
	xorwf	(??_main+0)+0,w
	skipnz
	goto	u491
	goto	u490
u491:
	goto	l55
u490:
	line	180
	
l827:	
;main.c: 180: sys_flags.b1 = GPIO4;
	bcf	(_sys_flags),1
	btfss	(44/8),(44)&7	;volatile
	goto	u505
	bsf	(_sys_flags),1
u505:

	line	181
;main.c: 181: if (GPIO4) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(44/8),(44)&7	;volatile
	goto	u511
	goto	u510
u511:
	goto	l55
u510:
	line	182
	
l829:	
;main.c: 182: if (counter) {
	movf	(_counter+1),w
	iorwf	(_counter),w
	skipnz
	goto	u521
	goto	u520
u521:
	goto	l841
u520:
	line	183
	
l831:	
;main.c: 183: --counter;
	movlw	low(01h)
	subwf	(_counter),f
	movlw	high(01h)
	skipc
	decf	(_counter+1),f
	subwf	(_counter+1),f
	line	184
	
l833:	
;main.c: 184: if (!led_tmr) led_tmr = 2;
	movf	(_led_tmr),f
	skipz
	goto	u531
	goto	u530
u531:
	goto	l837
u530:
	
l835:	
	movlw	(02h)
	movwf	(_led_tmr)
	line	185
	
l837:	
;main.c: 185: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	186
	
l839:	
;main.c: 186: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	188
	
l841:	
;main.c: 187: }
;main.c: 188: if (!counter) {
	movf	((_counter+1)),w
	iorwf	((_counter)),w
	skipz
	goto	u541
	goto	u540
u541:
	goto	l55
u540:
	line	189
	
l843:	
;main.c: 189: if ((sys_flags.b2 == 1)) {
	btfss	(_sys_flags),2
	goto	u551
	goto	u550
u551:
	goto	l60
u550:
	line	190
	
l845:	
;main.c: 190: led_tmr = 40;
	movlw	(028h)
	movwf	(_led_tmr)
	line	191
	
l847:	
;main.c: 191: (hc164_shift.b6 = 1);
	bsf	(_hc164_shift),6
	line	192
;main.c: 192: output_tmr = 40;
	movlw	(028h)
	movwf	(_output_tmr)
	line	193
	
l849:	
;main.c: 193: (hc164_shift.b7 = 0);
	bcf	(_hc164_shift),7
	line	194
	
l851:	
;main.c: 194: (sys_flags.b3 = 1, dip_sw_pcnt = 0);
	bsf	(_sys_flags),3
	
l853:	
	clrf	(_dip_sw_pcnt)
	line	195
;main.c: 195: } else {
	goto	l61
	
l60:	
	line	196
;main.c: 196: (hc164_shift.b7 = 1);
	bsf	(_hc164_shift),7
	line	197
;main.c: 197: (hc164_shift.b6 = 0);
	bcf	(_hc164_shift),6
	line	198
	
l61:	
	line	199
;main.c: 198: }
;main.c: 199: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	202
	
l55:	
	line	204
;main.c: 200: }
;main.c: 201: }
;main.c: 202: }
;main.c: 204: if ((sys_flags.b3 == 1)) {
	btfss	(_sys_flags),3
	goto	u561
	goto	u560
u561:
	goto	l943
u560:
	line	205
	
l855:	
;main.c: 205: if (dip_sw_pcnt == 0) {
	movf	(_dip_sw_pcnt),f
	skipz
	goto	u571
	goto	u570
u571:
	goto	l867
u570:
	line	206
	
l857:	
;main.c: 206: dip_sw_value = 0;
	clrf	(_dip_sw_value)
	clrf	(_dip_sw_value+1)
	line	207
	
l859:	
;main.c: 207: ((hc164_shift._byte |= 0b00111111), hc164_shift.b0 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l861:	
	bcf	(_hc164_shift),0
	line	208
	
l863:	
;main.c: 208: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	209
	
l865:	
;main.c: 209: ++dip_sw_pcnt;
	incf	(_dip_sw_pcnt),f
	line	210
;main.c: 210: } else if (dip_sw_pcnt == 1) {
	goto	l943
	
l867:	
	decf	(_dip_sw_pcnt),w
	skipz
	goto	u581
	goto	u580
u581:
	goto	l879
u580:
	line	211
	
l869:	
;main.c: 211: if (GPIO5 == 0) dip_sw_value += 100;
	btfsc	(45/8),(45)&7	;volatile
	goto	u591
	goto	u590
u591:
	goto	l873
u590:
	
l871:	
	movlw	064h
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	line	212
	
l873:	
;main.c: 212: ((hc164_shift._byte |= 0b00111111), hc164_shift.b1 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l875:	
	bcf	(_hc164_shift),1
	line	213
	
l877:	
;main.c: 213: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	214
;main.c: 214: ++dip_sw_pcnt;
	incf	(_dip_sw_pcnt),f
	line	215
;main.c: 215: } else if (dip_sw_pcnt == 2) {
	goto	l943
	
l879:	
	movf	(_dip_sw_pcnt),w
	xorlw	02h
	skipz
	goto	u601
	goto	u600
u601:
	goto	l891
u600:
	line	216
	
l881:	
;main.c: 216: if (GPIO5 == 0) dip_sw_value += 200;
	btfsc	(45/8),(45)&7	;volatile
	goto	u611
	goto	u610
u611:
	goto	l885
u610:
	
l883:	
	movlw	0C8h
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	line	217
	
l885:	
;main.c: 217: ((hc164_shift._byte |= 0b00111111), hc164_shift.b2 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l887:	
	bcf	(_hc164_shift),2
	goto	l877
	line	220
	
l891:	
	movf	(_dip_sw_pcnt),w
	xorlw	03h
	skipz
	goto	u621
	goto	u620
u621:
	goto	l903
u620:
	line	221
	
l893:	
;main.c: 221: if (GPIO5 == 0) dip_sw_value += 400;
	btfsc	(45/8),(45)&7	;volatile
	goto	u631
	goto	u630
u631:
	goto	l897
u630:
	
l895:	
	movlw	low(0190h)
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	movlw	high(0190h)
	addwf	(_dip_sw_value+1),f
	line	222
	
l897:	
;main.c: 222: ((hc164_shift._byte |= 0b00111111), hc164_shift.b3 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l899:	
	bcf	(_hc164_shift),3
	goto	l877
	line	225
	
l903:	
	movf	(_dip_sw_pcnt),w
	xorlw	04h
	skipz
	goto	u641
	goto	u640
u641:
	goto	l915
u640:
	line	226
	
l905:	
;main.c: 226: if (GPIO5 == 0) dip_sw_value += 800;
	btfsc	(45/8),(45)&7	;volatile
	goto	u651
	goto	u650
u651:
	goto	l909
u650:
	
l907:	
	movlw	low(0320h)
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	movlw	high(0320h)
	addwf	(_dip_sw_value+1),f
	line	227
	
l909:	
;main.c: 227: ((hc164_shift._byte |= 0b00111111), hc164_shift.b4 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l911:	
	bcf	(_hc164_shift),4
	goto	l877
	line	230
	
l915:	
	movf	(_dip_sw_pcnt),w
	xorlw	05h
	skipz
	goto	u661
	goto	u660
u661:
	goto	l927
u660:
	line	231
	
l917:	
;main.c: 231: if (GPIO5 == 0) dip_sw_value += 1600;
	btfsc	(45/8),(45)&7	;volatile
	goto	u671
	goto	u670
u671:
	goto	l921
u670:
	
l919:	
	movlw	low(0640h)
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	movlw	high(0640h)
	addwf	(_dip_sw_value+1),f
	line	232
	
l921:	
;main.c: 232: ((hc164_shift._byte |= 0b00111111), hc164_shift.b5 = 0);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	
l923:	
	bcf	(_hc164_shift),5
	goto	l877
	line	235
	
l927:	
	movf	(_dip_sw_pcnt),w
	xorlw	06h
	skipz
	goto	u681
	goto	u680
u681:
	goto	l73
u680:
	line	236
	
l929:	
;main.c: 236: if (GPIO5 == 0) dip_sw_value += 3200;
	btfsc	(45/8),(45)&7	;volatile
	goto	u691
	goto	u690
u691:
	goto	l933
u690:
	
l931:	
	movlw	low(0C80h)
	addwf	(_dip_sw_value),f
	skipnc
	incf	(_dip_sw_value+1),f
	movlw	high(0C80h)
	addwf	(_dip_sw_value+1),f
	line	237
	
l933:	
;main.c: 237: (hc164_shift._byte |= 0b00111111);
	movlw	(03Fh)
	iorwf	(_hc164_shift),f
	line	238
	
l935:	
;main.c: 238: counter = dip_sw_value;
	movf	(_dip_sw_value+1),w
	movwf	(_counter+1)
	movf	(_dip_sw_value),w
	movwf	(_counter)
	line	239
	
l937:	
;main.c: 239: if (dip_sw_value == 0) (sys_flags.b2 = 0);
	movf	((_dip_sw_value+1)),w
	iorwf	((_dip_sw_value)),w
	skipz
	goto	u701
	goto	u700
u701:
	goto	l82
u700:
	
l939:	
	bcf	(_sys_flags),2
	goto	l83
	line	240
	
l82:	
;main.c: 240: else (sys_flags.b2 = 1);
	bsf	(_sys_flags),2
	
l83:	
	line	241
;main.c: 241: (sys_flags.b5 = 1);
	bsf	(_sys_flags),5
	line	242
;main.c: 242: (sys_flags.b3 = 0);
	bcf	(_sys_flags),3
	goto	l865
	line	245
	
l73:	
	line	247
	
l943:	
;main.c: 244: }
;main.c: 245: }
;main.c: 247: if ((sys_flags.b5 == 1)) {
	btfss	(_sys_flags),5
	goto	u711
	goto	u710
u711:
	goto	l789
u710:
	line	248
	
l945:	
;main.c: 248: tmp1 = 8;
	movlw	(08h)
	movwf	(_tmp1)
	line	249
;main.c: 249: while (tmp1) {
	goto	l85
	line	250
	
l947:	
;main.c: 250: if (((hc164_shift._byte) & (1 <<((tmp1 - 1))))) GPIO0 = 1;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(_tmp1),w
	addlw	-1
	addlw	1
	goto	u724
u725:
	clrc
	rlf	(??_main+0)+0,f
u724:
	addlw	-1
	skipz
	goto	u725
	movf	0+(??_main+0)+0,w
	andwf	(_hc164_shift),w
	btfsc	status,2
	goto	u731
	goto	u730
u731:
	goto	l87
u730:
	
l949:	
	bsf	(40/8),(40)&7	;volatile
	goto	l88
	line	251
	
l87:	
;main.c: 251: else GPIO0 = 0;
	bcf	(40/8),(40)&7	;volatile
	
l88:	
	line	252
;main.c: 252: GPIO1 = 1;
	bsf	(41/8),(41)&7	;volatile
	line	253
;main.c: 253: GPIO1 = 0;
	bcf	(41/8),(41)&7	;volatile
	line	254
	
l951:	
;main.c: 254: tmp1--;
	decf	(_tmp1),f
	line	255
	
l85:	
	line	249
	movf	(_tmp1),f
	skipz
	goto	u741
	goto	u740
u741:
	goto	l947
u740:
	
l89:	
	line	256
;main.c: 255: }
;main.c: 256: (sys_flags.b5 = 0);
	bcf	(_sys_flags),5
	goto	l789
	global	start
	ljmp	start
	opt stack 0
	line	259
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 05Eh

	DABS	1,94,2	;btemp
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
