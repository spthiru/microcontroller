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
# 3 "G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
	dw 0x1f7a ;#
	FNCALL	_main,_lcd_command
	FNCALL	_main,_lcd_data
	FNCALL	_lcd_data,_delay
	FNCALL	_lcd_command,_delay
	FNROOT	_main
	global	_PORTD
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
_PORTD	set	8
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_TMR1CS
_TMR1CS	set	129
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TRISD
_TRISD	set	136
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	file	"school_of_linux_print_lcd.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_lcd_command
?_lcd_command:	; 0 bytes @ 0x0
	global	??_lcd_command
??_lcd_command:	; 0 bytes @ 0x0
	global	?_lcd_data
?_lcd_data:	; 0 bytes @ 0x0
	global	??_lcd_data
??_lcd_data:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	??_delay
??_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	lcd_command@data
lcd_command@data:	; 1 bytes @ 0x0
	global	lcd_data@data
lcd_data@data:	; 1 bytes @ 0x0
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      1       1
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_command
;;   _main->_lcd_data
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0      30
;;                        _lcd_command
;;                           _lcd_data
;; ---------------------------------------------------------------------------------
;; (1) _lcd_data                                             1     1      0      15
;;                                              0 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _lcd_command                                          1     1      0      15
;;                                              0 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_command
;;     _delay
;;   _lcd_data
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      1       1       1        7.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_lcd_command
;;		_lcd_data
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l1860:	
;sl_print.c: 12: TRISD=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	13
	
l1862:	
;sl_print.c: 13: TRISC0=0;
	bcf	(1080/8)^080h,(1080)&7
	line	14
	
l1864:	
;sl_print.c: 14: TRISC1=0;
	bcf	(1081/8)^080h,(1081)&7
	line	15
	
l1866:	
;sl_print.c: 15: TRISC2=0;
	bcf	(1082/8)^080h,(1082)&7
	line	16
;sl_print.c: 16: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	18
	
l1868:	
;sl_print.c: 18: lcd_command(0x0f);
	movlw	(0Fh)
	fcall	_lcd_command
	line	19
	
l1870:	
;sl_print.c: 19: lcd_command(0x38);
	movlw	(038h)
	fcall	_lcd_command
	line	20
	
l1872:	
;sl_print.c: 20: lcd_command(0x80);
	movlw	(080h)
	fcall	_lcd_command
	line	21
	
l1874:	
;sl_print.c: 21: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	22
	
l1876:	
;sl_print.c: 22: lcd_data('s');
	movlw	(073h)
	fcall	_lcd_data
	line	23
	
l1878:	
;sl_print.c: 23: lcd_data('c');
	movlw	(063h)
	fcall	_lcd_data
	line	24
	
l1880:	
;sl_print.c: 24: lcd_data('h');
	movlw	(068h)
	fcall	_lcd_data
	line	25
	
l1882:	
;sl_print.c: 25: lcd_data('o');
	movlw	(06Fh)
	fcall	_lcd_data
	line	26
	
l1884:	
;sl_print.c: 26: lcd_data('o');
	movlw	(06Fh)
	fcall	_lcd_data
	line	27
	
l1886:	
;sl_print.c: 27: lcd_data('l');
	movlw	(06Ch)
	fcall	_lcd_data
	line	28
	
l1888:	
;sl_print.c: 28: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	29
	
l1890:	
;sl_print.c: 29: lcd_data('o');
	movlw	(06Fh)
	fcall	_lcd_data
	line	30
	
l1892:	
;sl_print.c: 30: lcd_data('f');
	movlw	(066h)
	fcall	_lcd_data
	line	31
	
l1894:	
;sl_print.c: 31: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	32
	
l1896:	
;sl_print.c: 32: lcd_data('l');
	movlw	(06Ch)
	fcall	_lcd_data
	line	33
	
l1898:	
;sl_print.c: 33: lcd_data('i');
	movlw	(069h)
	fcall	_lcd_data
	line	34
	
l1900:	
;sl_print.c: 34: lcd_data('n');
	movlw	(06Eh)
	fcall	_lcd_data
	line	35
	
l1902:	
;sl_print.c: 35: lcd_data('u');
	movlw	(075h)
	fcall	_lcd_data
	line	36
	
l1904:	
;sl_print.c: 36: lcd_data('x');
	movlw	(078h)
	fcall	_lcd_data
	line	37
	
l1906:	
;sl_print.c: 37: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	38
	
l1908:	
;sl_print.c: 38: lcd_command(0xc0);
	movlw	(0C0h)
	fcall	_lcd_command
	line	39
	
l1910:	
;sl_print.c: 39: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	40
	
l1912:	
;sl_print.c: 40: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	41
	
l1914:	
;sl_print.c: 41: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	42
	
l1916:	
;sl_print.c: 42: lcd_data('D');
	movlw	(044h)
	fcall	_lcd_data
	line	43
	
l1918:	
;sl_print.c: 43: lcd_data('h');
	movlw	(068h)
	fcall	_lcd_data
	line	44
	
l1920:	
;sl_print.c: 44: lcd_data('a');
	movlw	(061h)
	fcall	_lcd_data
	line	45
	
l1922:	
;sl_print.c: 45: lcd_data('r');
	movlw	(072h)
	fcall	_lcd_data
	line	46
	
l1924:	
;sl_print.c: 46: lcd_data('m');
	movlw	(06Dh)
	fcall	_lcd_data
	line	47
	
l1926:	
;sl_print.c: 47: lcd_data('a');
	movlw	(061h)
	fcall	_lcd_data
	line	48
	
l1928:	
;sl_print.c: 48: lcd_data('p');
	movlw	(070h)
	fcall	_lcd_data
	line	49
	
l1930:	
;sl_print.c: 49: lcd_data('u');
	movlw	(075h)
	fcall	_lcd_data
	line	50
	
l1932:	
;sl_print.c: 50: lcd_data('r');
	movlw	(072h)
	fcall	_lcd_data
	line	51
	
l1934:	
;sl_print.c: 51: lcd_data('i');
	movlw	(069h)
	fcall	_lcd_data
	line	52
	
l1936:	
;sl_print.c: 52: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	53
	
l1938:	
;sl_print.c: 53: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	54
	
l1940:	
;sl_print.c: 54: lcd_data(' ');
	movlw	(020h)
	fcall	_lcd_data
	line	55
	
l691:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_data
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _lcd_data *****************
;; Defined at:
;;		line 67 in file "G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
	line	67
	global	__size_of_lcd_data
	__size_of_lcd_data	equ	__end_of_lcd_data-_lcd_data
	
_lcd_data:	
	opt	stack 6
; Regs used in _lcd_data: [wreg+status,2+status,0+pclath+cstack]
;lcd_data@data stored from wreg
	movwf	(lcd_data@data)
	line	68
	
l1852:	
;sl_print.c: 68: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	69
;sl_print.c: 69: RC1 = 0;
	bcf	(57/8),(57)&7
	line	70
;sl_print.c: 70: RC2 = 1;
	bsf	(58/8),(58)&7
	line	71
	
l1854:	
;sl_print.c: 71: PORTD= data;
	movf	(lcd_data@data),w
	movwf	(8)	;volatile
	line	72
	
l1856:	
;sl_print.c: 72: delay();
	fcall	_delay
	line	73
	
l1858:	
;sl_print.c: 73: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	74
	
l697:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_data
	__end_of_lcd_data:
;; =============== function _lcd_data ends ============

	signat	_lcd_data,4216
	global	_lcd_command
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _lcd_command *****************
;; Defined at:
;;		line 57 in file "G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text86
	file	"G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
	line	57
	global	__size_of_lcd_command
	__size_of_lcd_command	equ	__end_of_lcd_command-_lcd_command
	
_lcd_command:	
	opt	stack 6
; Regs used in _lcd_command: [wreg+status,2+status,0+pclath+cstack]
;lcd_command@data stored from wreg
	movwf	(lcd_command@data)
	line	58
	
l1844:	
;sl_print.c: 58: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	59
;sl_print.c: 59: RC1 = 0;
	bcf	(57/8),(57)&7
	line	60
;sl_print.c: 60: RC2 = 1;
	bsf	(58/8),(58)&7
	line	61
	
l1846:	
;sl_print.c: 61: PORTD=data;
	movf	(lcd_command@data),w
	movwf	(8)	;volatile
	line	62
	
l1848:	
;sl_print.c: 62: delay();
	fcall	_delay
	line	63
	
l1850:	
;sl_print.c: 63: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	65
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_command
	__end_of_lcd_command:
;; =============== function _lcd_command ends ============

	signat	_lcd_command,4216
	global	_delay
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _delay *****************
;; Defined at:
;;		line 76 in file "G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_command
;;		_lcd_data
;; This function uses a non-reentrant model
;;
psect	text87
	file	"G:\PIC ass\LCD Display\lcd_sl_print\sl_print.c"
	line	76
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	77
	
l1072:	
;sl_print.c: 77: TMR1CS=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(129/8),(129)&7
	line	78
;sl_print.c: 78: T1CKPS1=1;
	bsf	(133/8),(133)&7
	line	79
;sl_print.c: 79: T1CKPS0=1;
	bsf	(132/8),(132)&7
	line	80
	
l1074:	
;sl_print.c: 80: TMR1H=0x0b;
	movlw	(0Bh)
	movwf	(15)	;volatile
	line	81
;sl_print.c: 81: TMR1L=0xbc;
	movlw	(0BCh)
	movwf	(14)	;volatile
	line	82
	
l1076:	
;sl_print.c: 82: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	83
;sl_print.c: 83: while(!TMR1IF);
	goto	l700
	
l701:	
	
l700:	
	btfss	(96/8),(96)&7
	goto	u11
	goto	u10
u11:
	goto	l700
u10:
	
l702:	
	line	84
;sl_print.c: 84: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	85
;sl_print.c: 85: TMR1ON=0;
	bcf	(128/8),(128)&7
	line	86
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,88
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
