
	; Microchip MPLAB XC8 C Compiler V1.33
	; Copyright (C) 1984-2014 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=12C508A -G \
	; -mdist/default/production/PIC12C508.X.production.map --double=24 \
	; --float=24 --opt=all,+asm,+asmfile,-speed,+space,-debug \
	; --addrqual=ignore --mode=pro -N31 --warn=0 --asmlist \
	; -DXPRJ_default=default \
	; --summary=default,+psect,+class,+mem,+hex,-file \
	; --output=default,-inhx032 \
	; --runtime=default,+clear,+init,+keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib \
	; --output=-mcof,+elf:multilocs --stack=compiled:auto \
	; --errformat=%f:%l: error: (%n) %s \
	; --warnformat=%f:%l: warning: (%n) %s \
	; --msgformat=%f:%l: advisory: (%n) %s \
	; -odist/default/production/PIC12C508.X.production.elf \
	; build/default/production/main.p1
	;


	processor	12C508A

	global	_main,start,reset_vec
	fnroot	_main
	psect	config,class=CONFIG,delta=2,noexec
	psect	idloc,class=IDLOC,delta=2,noexec
	psect	code,class=CODE,delta=2
	psect	powerup,class=CODE,delta=2
	psect	reset_vec,class=CODE,delta=2
	psect	maintext,class=CODE,delta=2
	C	set	0
	Z	set	2
	PCL	set	2
	INDF	set	0

	STATUS	equ	3
	FSR	equ	4
OSCCAL	equ	0x5

	psect	reset_wrap,class=ENTRY,delta=2
	psect	text,class=CODE,delta=2
	psect	functab,class=ENTRY,delta=2
	psect	init,class=ENTRY,delta=2
	psect	cinit,class=ENTRY,delta=2
	psect	end_init,class=ENTRY,delta=2
	psect	clrtext,class=ENTRY,delta=2
	psect	jmp_tab,class=ENTRY,delta=2
	psect	strings,class=STRING,delta=2

	global stacklo, stackhi
	stacklo	equ	0
	stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec,class=CODE,delta=2
reset_vec:
	ds 1	;oscillator constant would be pre-programmed here
	psect	reset_wrap
reset_wrap:
	clrf	FSR		;select bank 0
	movwf	5		;calibrate oscillator
	; No powerup routine


	psect	init
start
	psect	end_init
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register IDLOC0 @ 0x200
;	using specified literal value

	psect	idloc
		org 0x0
		dw 0x5

; Config register IDLOC1 @ 0x201
;	using specified literal value

	psect	idloc
		org 0x1
		dw 0x9

; Config register IDLOC2 @ 0x202
;	using specified literal value

	psect	idloc
		org 0x2
		dw 0x1

; Config register IDLOC3 @ 0x203
;	using specified literal value

	psect	idloc
		org 0x3
		dw 0x3

; Config register CONFIG @ 0xFFF
;	Code protection bit
;	CP = 0x1, unprogrammed default
;	Oscillator selection bits
;	OSC = IntRC, internal RC oscillator
;	MCLR enable bit
;	MCLRE = OFF, MCLR tied to VDD, (Internally)
;	Watchdog timer enable bit
;	WDT = OFF, WDT disabled

	psect	config
		org 0x0
		dw 0xFFEA


psect bank0,class=BANK0,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect common,class=COMMON,space=1
psect sfr0,class=SFR0,space=1


	end	start
