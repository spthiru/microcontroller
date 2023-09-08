opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877A
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
# 2 "G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	dw 0x1f7a ;#
	FNCALL	_main,_print_name
	FNCALL	_print_name,___wmul
	FNROOT	_main
	global	_digit0
	global	_digit1
	global	_digit2
	global	_digit3
	global	_digit4
	global	_digit5
	global	_digit6
	global	_digit7
	global	_digit8
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	6

;initializer for _digit0
	retlw	0
	retlw	066h
	retlw	0FFh
	retlw	0FFh
	retlw	07Fh
	retlw	03Eh
	retlw	01Ch
	retlw	08h
	line	7

;initializer for _digit1
	retlw	0
	retlw	018h
	retlw	024h
	retlw	08h
	retlw	010h
	retlw	024h
	retlw	018h
	retlw	0
	line	8

;initializer for _digit2
	retlw	0
	retlw	01Ch
	retlw	024h
	retlw	024h
	retlw	01Ch
	retlw	04h
	retlw	04h
	retlw	0
	line	9

;initializer for _digit3
	retlw	0
	retlw	0FEh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0
	line	10

;initializer for _digit4
	retlw	0
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	07Ch
	retlw	044h
	retlw	044h
	retlw	0
	line	11

;initializer for _digit5
	retlw	0
	retlw	07Ch
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	07Ch
	retlw	0
	line	12

;initializer for _digit6
	retlw	0
	retlw	01Ch
	retlw	024h
	retlw	024h
	retlw	01Ch
	retlw	0Ch
	retlw	014h
	retlw	024h
	line	13

;initializer for _digit7
	retlw	0
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	018h
	retlw	0
	line	14

;initializer for _digit8
	retlw	0
	retlw	066h
	retlw	0FFh
	retlw	0FFh
	retlw	07Fh
	retlw	03Eh
	retlw	01Ch
	retlw	08h
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"name_8x8_matrix.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	6
_digit0:
       ds      8

psect	dataBANK0
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	7
_digit1:
       ds      8

psect	dataBANK0
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	8
_digit2:
       ds      8

psect	dataBANK0
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	9
_digit3:
       ds      8

psect	dataBANK0
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	10
_digit4:
       ds      8

psect	dataBANK0
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	11
_digit5:
       ds      8

psect	dataBANK0
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	12
_digit6:
       ds      8

psect	dataBANK0
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	13
_digit7:
       ds      8

psect	dataBANK0
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	14
_digit8:
       ds      8

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+72)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?_print_name
?_print_name:	; 0 bytes @ 0x6
	global	print_name@sec
print_name@sec:	; 2 bytes @ 0x6
	ds	2
	global	??_print_name
??_print_name:	; 0 bytes @ 0x8
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	print_name@digit
print_name@digit:	; 1 bytes @ 0x0
	ds	1
	global	print_name@i
print_name@i:	; 2 bytes @ 0x1
	ds	2
	global	print_name@j
print_name@j:	; 2 bytes @ 0x3
	ds	2
;;Data sizes: Strings 0, constant 0, data 72, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80      5      77
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; print_name@digit	PTR unsigned char  size(1) Largest target is 8
;;		 -> digit8(BANK0[8]), digit7(BANK0[8]), digit6(BANK0[8]), digit5(BANK0[8]), 
;;		 -> digit4(BANK0[8]), digit3(BANK0[8]), digit2(BANK0[8]), digit1(BANK0[8]), 
;;		 -> digit0(BANK0[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_print_name
;;   _print_name->___wmul
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_print_name
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     250
;;                         _print_name
;; ---------------------------------------------------------------------------------
;; (1) _print_name                                           9     7      2     250
;;                                              6 COMMON     4     2      2
;;                                              0 BANK0      5     5      0
;;                             ___wmul
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _print_name
;;     ___wmul
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      59      12        0.0%
;;ABS                  0      0      57       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      5      4D       5       96.3%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 68 in file "G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  706[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_print_name
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	68
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	69
	
l1957:	
;name_8x8_matrix.c: 69: TRISC=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	70
;name_8x8_matrix.c: 70: TRISD=0;
	clrf	(136)^080h	;volatile
	goto	l1959
	line	71
;name_8x8_matrix.c: 71: while(1)
	
l707:	
	line	73
	
l1959:	
;name_8x8_matrix.c: 72: {
;name_8x8_matrix.c: 73: print_name(digit0,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit0)&0ffh
	fcall	_print_name
	line	74
	
l1961:	
;name_8x8_matrix.c: 74: print_name(digit1,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit1)&0ffh
	fcall	_print_name
	line	75
	
l1963:	
;name_8x8_matrix.c: 75: print_name(digit2,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit2)&0ffh
	fcall	_print_name
	line	76
	
l1965:	
;name_8x8_matrix.c: 76: print_name(digit3,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit3)&0ffh
	fcall	_print_name
	line	77
	
l1967:	
;name_8x8_matrix.c: 77: print_name(digit4,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit4)&0ffh
	fcall	_print_name
	line	78
	
l1969:	
;name_8x8_matrix.c: 78: print_name(digit5,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit5)&0ffh
	fcall	_print_name
	line	79
	
l1971:	
;name_8x8_matrix.c: 79: print_name(digit6,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit6)&0ffh
	fcall	_print_name
	line	80
	
l1973:	
;name_8x8_matrix.c: 80: print_name(digit7,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit7)&0ffh
	fcall	_print_name
	line	81
	
l1975:	
;name_8x8_matrix.c: 81: print_name(digit8,1);
	movlw	low(01h)
	movwf	(?_print_name)
	movlw	high(01h)
	movwf	((?_print_name))+1
	movlw	(_digit8)&0ffh
	fcall	_print_name
	goto	l1959
	line	84
	
l708:	
	line	71
	goto	l1959
	
l709:	
	line	85
	
l710:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_print_name
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:

;; *************** function _print_name *****************
;; Defined at:
;;		line 87 in file "G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
;; Parameters:    Size  Location     Type
;;  digit           1    wreg     PTR unsigned char 
;;		 -> digit8(8), digit7(8), digit6(8), digit5(8), 
;;		 -> digit4(8), digit3(8), digit2(8), digit1(8), 
;;		 -> digit0(8), 
;;  sec             2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  digit           1    0[BANK0 ] PTR unsigned char 
;;		 -> digit8(8), digit7(8), digit6(8), digit5(8), 
;;		 -> digit4(8), digit3(8), digit2(8), digit1(8), 
;;		 -> digit0(8), 
;;  j               2    3[BANK0 ] int 
;;  i               2    1[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       5       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text96
	file	"G:\PIC ass\New folder\8x8matrix_led\name_8x8_matrix.c"
	line	87
	global	__size_of_print_name
	__size_of_print_name	equ	__end_of_print_name-_print_name
	
_print_name:	
	opt	stack 6
; Regs used in _print_name: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;print_name@digit stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(print_name@digit)
	line	88
	
l1933:	
;name_8x8_matrix.c: 88: for(int i=0;i<120*sec;i++)
	clrf	(print_name@i)
	clrf	(print_name@i+1)
	goto	l1955
	line	89
	
l714:	
	line	90
	
l1935:	
;name_8x8_matrix.c: 89: {
;name_8x8_matrix.c: 90: for(int j=0;j<8;j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(print_name@j)
	clrf	(print_name@j+1)
	
l1937:	
	movf	(print_name@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(08h)
	subwf	(print_name@j),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l1941
u2220:
	goto	l1953
	
l1939:	
	goto	l1953
	line	91
	
l715:	
	line	92
	
l1941:	
;name_8x8_matrix.c: 91: {
;name_8x8_matrix.c: 92: PORTD=0x01<<j;
	movlw	(01h)
	movwf	(??_print_name+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(print_name@j),w
	goto	u2234
u2235:
	clrc
	rlf	(??_print_name+0)+0,f
u2234:
	addlw	-1
	skipz
	goto	u2235
	movf	0+(??_print_name+0)+0,w
	movwf	(8)	;volatile
	line	93
	
l1943:	
;name_8x8_matrix.c: 93: PORTC=digit[j];
	movf	(print_name@j),w
	addwf	(print_name@digit),w
	movwf	(??_print_name+0)+0
	movf	0+(??_print_name+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	94
	
l1945:	
;name_8x8_matrix.c: 94: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_print_name+0)+0+1),f
	movlw	125
movwf	((??_print_name+0)+0),f
u2267:
	decfsz	((??_print_name+0)+0),f
	goto	u2267
	decfsz	((??_print_name+0)+0+1),f
	goto	u2267
opt asmopt_on

	line	95
	
l1947:	
;name_8x8_matrix.c: 95: PORTC=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	90
	
l1949:	
	movlw	low(01h)
	addwf	(print_name@j),f
	skipnc
	incf	(print_name@j+1),f
	movlw	high(01h)
	addwf	(print_name@j+1),f
	
l1951:	
	movf	(print_name@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(08h)
	subwf	(print_name@j),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l1941
u2240:
	goto	l1953
	
l716:	
	line	88
	
l1953:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(print_name@i),f
	skipnc
	incf	(print_name@i+1),f
	movlw	high(01h)
	addwf	(print_name@i+1),f
	goto	l1955
	
l713:	
	
l1955:	
	movf	(print_name@sec+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(print_name@sec),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(078h)
	movwf	0+(?___wmul)+02h
	movlw	high(078h)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(print_name@i+1),w
	xorlw	80h
	movwf	(??_print_name+0)+0
	movf	(1+(?___wmul)),w
	xorlw	80h
	subwf	(??_print_name+0)+0,w
	skipz
	goto	u2255
	movf	(0+(?___wmul)),w
	subwf	(print_name@i),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1935
u2250:
	goto	l718
	
l717:	
	line	98
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_print_name
	__end_of_print_name:
;; =============== function _print_name ends ============

	signat	_print_name,8312
	global	___wmul
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_print_name
;; This function uses a non-reentrant model
;;
psect	text97
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l1921:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1923
	line	6
	
l727:	
	line	7
	
l1923:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l728
u2180:
	line	8
	
l1925:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l728:	
	line	9
	movlw	01h
	
u2195:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2195
	line	10
	
l1927:	
	movlw	01h
	
u2205:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2205
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l1923
u2210:
	goto	l1929
	
l729:	
	line	12
	
l1929:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l730
	
l1931:	
	line	13
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
