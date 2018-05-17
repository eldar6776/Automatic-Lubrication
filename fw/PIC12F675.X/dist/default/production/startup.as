
	; Microchip MPLAB XC8 C Compiler V1.33
	; Copyright (C) 1984-2014 HI-TECH Software

	; Auto-generated runtime startup code for final link stage.

	;
	; Compiler options:
	;
	; --chip=12F675 -G -mdist/default/production/PIC12F675.X.production.map \
	; --double=24 --float=24 --opt=all,+asm,+asmfile,-speed,+space,-debug \
	; --addrqual=ignore --mode=pro -N31 --warn=0 --asmlist \
	; -DXPRJ_default=default \
	; --summary=default,+psect,+class,+mem,+hex,-file \
	; --output=default,-inhx032 \
	; --runtime=default,+clear,+init,+keep,-no_startup,+osccal,-resetbits,-download,-stackcall,+clib \
	; --output=-mcof,+elf:multilocs --stack=compiled:auto:auto \
	; --errformat=%f:%l: error: (%n) %s \
	; --warnformat=%f:%l: warning: (%n) %s \
	; --msgformat=%f:%l: advisory: (%n) %s \
	; -odist/default/production/PIC12F675.X.production.elf \
	; build/default/production/main.p1
	;


	processor	12F675

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

	OSCCAL	equ	0x90
	psect	osccal,class=CODE,delta=2
global ___osccal_val
___osccal_val:
	;oscillator constant would be pre-programmed here
	STATUS	equ	3
	PCLATH	equ	0Ah

	psect	eeprom_data,class=EEDATA,delta=2,space=3,noexec
	psect	intentry,class=CODE,delta=2
	psect	functab,class=CODE,delta=2
	global	intlevel0,intlevel1,intlevel2, intlevel3, intlevel4, intlevel5
intlevel0:
intlevel1:
intlevel2:
intlevel3:
intlevel4:
intlevel5:
	psect	init,class=CODE,delta=2
	psect	cinit,class=CODE,delta=2
	psect	text,class=CODE,delta=2
	psect	end_init,class=CODE,delta=2
	psect	clrtext,class=CODE,delta=2
	FSR	set	4
	psect	strings,class=CODE,delta=2,reloc=256

	global stacklo, stackhi
	stacklo	equ	0
	stackhi	equ	0


	psect	stack,class=STACK,space=2,noexec
	global ___sp,___int_sp
	___sp:
	___int_sp:
	psect	reset_vec
reset_vec:
	; No powerup routine
	; No interrupt routine


	psect	init
start
	psect	end_init
	bsf	STATUS,5		;select bank 1
	fcall	___osccal_val
movwf	0x90 ^ 0x80
	bcf	STATUS,5		;select bank 0
	global start_initialization
	ljmp start_initialization	;jump to C runtime clear & initialization

; Config register IDLOC0 @ 0x2000
;	using specified literal value

	psect	idloc
		org 0x0
		dw 0x5

; Config register IDLOC1 @ 0x2001
;	using specified literal value

	psect	idloc
		org 0x1
		dw 0x9

; Config register IDLOC2 @ 0x2002
;	using specified literal value

	psect	idloc
		org 0x2
		dw 0x1

; Config register IDLOC3 @ 0x2003
;	using specified literal value

	psect	idloc
		org 0x3
		dw 0x3

; Config register CONFIG @ 0x2007
;	Watchdog Timer Enable bit
;	WDTE = OFF, WDT disabled
;	Power-Up Timer Enable bit
;	PWRTE = 0x1, unprogrammed default
;	Code Protection bit
;	CP = 0x1, unprogrammed default
;	Brown-out Detect Enable bit
;	BOREN = 0x1, unprogrammed default
;	GP3/MCLR pin function select
;	MCLRE = OFF, GP3/MCLR pin function is digital I/O, MCLR internally tied to VDD
;	Data Code Protection bit
;	CPD = 0x1, unprogrammed default
;	Oscillator Selection bits
;	FOSC = INTRCIO, INTOSC oscillator: I/O function on GP4/OSC2/CLKOUT pin, I/O function on GP5/OSC1/CLKIN

	psect	config
		org 0x0
		dw 0x31D4


psect bank0,class=BANK0,space=1
psect bank1,class=BANK1,space=1
psect ram,class=RAM,space=1
psect abs1,class=ABS1,space=1
psect common,class=COMMON,space=1
psect sfr0,class=SFR0,space=1
psect sfr1,class=SFR1,space=1


	end	start
