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
# 2 "G:\PIC ass\New folder\8x8matrix_led\8x8.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "G:\PIC ass\New folder\8x8matrix_led\8x8.c"
	dw 0x1f7a ;#
	FNROOT	_main
	global	_PORTC
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"8x8matrix.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2
	ds	2
	global	main@i_1233
main@i_1233:	; 2 bytes @ 0x4
	ds	2
	global	main@i_1234
main@i_1234:	; 2 bytes @ 0x6
	ds	2
	global	main@i_1235
main@i_1235:	; 2 bytes @ 0x8
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                10    10      0     120
;;                                              0 COMMON    10    10      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 5 in file "G:\PIC ass\New folder\8x8matrix_led\8x8.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[COMMON] int 
;;  i               2    6[COMMON] int 
;;  i               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         8       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\PIC ass\New folder\8x8matrix_led\8x8.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+btemp+1]
	line	6
	
l1833:	
;8x8.c: 6: TRISD=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	7
;8x8.c: 7: TRISC=0;
	clrf	(135)^080h	;volatile
	line	8
;8x8.c: 8: while(1)
	
l687:	
	line	36
;8x8.c: 9: {
;8x8.c: 36: for(int i=0;i<500;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1835:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2145
	movlw	low(01F4h)
	subwf	(main@i),w
u2145:

	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l1839
u2140:
	goto	l1843
	
l1837:	
	goto	l1843
	line	37
	
l688:	
	line	38
	
l1839:	
;8x8.c: 37: {
;8x8.c: 38: PORTD=0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
;8x8.c: 39: PORTC=0x03C;
	movlw	(03Ch)
	movwf	(7)	;volatile
	line	40
;8x8.c: 40: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2227:
	decfsz	((??_main+0)+0),f
	goto	u2227
	decfsz	((??_main+0)+0+1),f
	goto	u2227
opt asmopt_on

	line	43
;8x8.c: 43: PORTD=0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	44
;8x8.c: 44: PORTC=0x04;
	movlw	(04h)
	movwf	(7)	;volatile
	line	45
;8x8.c: 45: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2237:
	decfsz	((??_main+0)+0),f
	goto	u2237
	decfsz	((??_main+0)+0+1),f
	goto	u2237
opt asmopt_on

	line	48
;8x8.c: 48: PORTD=0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	49
;8x8.c: 49: PORTC=0x3C;
	movlw	(03Ch)
	movwf	(7)	;volatile
	line	50
;8x8.c: 50: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2247:
	decfsz	((??_main+0)+0),f
	goto	u2247
	decfsz	((??_main+0)+0+1),f
	goto	u2247
opt asmopt_on

	line	53
;8x8.c: 53: PORTD=0x10;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	54
;8x8.c: 54: PORTC=0x20;
	movlw	(020h)
	movwf	(7)	;volatile
	line	55
;8x8.c: 55: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2257:
	decfsz	((??_main+0)+0),f
	goto	u2257
	decfsz	((??_main+0)+0+1),f
	goto	u2257
opt asmopt_on

	line	58
;8x8.c: 58: PORTD=0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	59
;8x8.c: 59: PORTC=0x3C;
	movlw	(03Ch)
	movwf	(7)	;volatile
	line	60
;8x8.c: 60: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2267:
	decfsz	((??_main+0)+0),f
	goto	u2267
	decfsz	((??_main+0)+0+1),f
	goto	u2267
opt asmopt_on

	line	36
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1841:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2155
	movlw	low(01F4h)
	subwf	(main@i),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l1839
u2150:
	goto	l1843
	
l689:	
	line	63
	
l1843:	
;8x8.c: 62: }
;8x8.c: 63: for(int i=0;i<1000;i++)
	clrf	(main@i_1233)
	clrf	(main@i_1233+1)
	
l1845:	
	movf	(main@i_1233+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(03E8h)
	subwf	(main@i_1233),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l1849
u2160:
	goto	l1853
	
l1847:	
	goto	l1853
	line	64
	
l690:	
	line	65
	
l1849:	
;8x8.c: 64: {
;8x8.c: 65: PORTD=0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	66
;8x8.c: 66: PORTC=0x1c;
	movlw	(01Ch)
	movwf	(7)	;volatile
	line	67
;8x8.c: 67: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2277:
	decfsz	((??_main+0)+0),f
	goto	u2277
	decfsz	((??_main+0)+0+1),f
	goto	u2277
opt asmopt_on

	line	69
;8x8.c: 69: PORTD=0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	70
;8x8.c: 70: PORTC=0x24;
	movlw	(024h)
	movwf	(7)	;volatile
	line	71
;8x8.c: 71: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
opt asmopt_on

	line	73
;8x8.c: 73: PORTD=0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	74
;8x8.c: 74: PORTC=0x24;
	movlw	(024h)
	movwf	(7)	;volatile
	line	75
;8x8.c: 75: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2297:
	decfsz	((??_main+0)+0),f
	goto	u2297
	decfsz	((??_main+0)+0+1),f
	goto	u2297
opt asmopt_on

	line	77
;8x8.c: 77: PORTD=0x10;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	78
;8x8.c: 78: PORTC=0x1c;
	movlw	(01Ch)
	movwf	(7)	;volatile
	line	79
;8x8.c: 79: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2307:
	decfsz	((??_main+0)+0),f
	goto	u2307
	decfsz	((??_main+0)+0+1),f
	goto	u2307
opt asmopt_on

	line	81
;8x8.c: 81: PORTD=0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	82
;8x8.c: 82: PORTC=0x04;
	movlw	(04h)
	movwf	(7)	;volatile
	line	83
;8x8.c: 83: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2317:
	decfsz	((??_main+0)+0),f
	goto	u2317
	decfsz	((??_main+0)+0+1),f
	goto	u2317
opt asmopt_on

	line	63
	movlw	low(01h)
	addwf	(main@i_1233),f
	skipnc
	incf	(main@i_1233+1),f
	movlw	high(01h)
	addwf	(main@i_1233+1),f
	
l1851:	
	movf	(main@i_1233+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(03E8h)
	subwf	(main@i_1233),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l1849
u2170:
	goto	l1853
	
l691:	
	line	86
	
l1853:	
;8x8.c: 85: }
;8x8.c: 86: for(int i=0;i<500;i++)
	clrf	(main@i_1234)
	clrf	(main@i_1234+1)
	
l1855:	
	movf	(main@i_1234+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(01F4h)
	subwf	(main@i_1234),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l1859
u2180:
	goto	l1863
	
l1857:	
	goto	l1863
	line	87
	
l692:	
	line	88
	
l1859:	
;8x8.c: 87: {
;8x8.c: 88: PORTD=0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	89
;8x8.c: 89: PORTC=0x3e;
	movlw	(03Eh)
	movwf	(7)	;volatile
	line	90
;8x8.c: 90: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
opt asmopt_on

	line	92
;8x8.c: 92: PORTD=0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	93
;8x8.c: 93: PORTC=0x08;
	movlw	(08h)
	movwf	(7)	;volatile
	line	94
;8x8.c: 94: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
opt asmopt_on

	line	96
;8x8.c: 96: PORTD=0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	97
;8x8.c: 97: PORTC=0x08;
	movlw	(08h)
	movwf	(7)	;volatile
	line	98
;8x8.c: 98: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
opt asmopt_on

	line	100
;8x8.c: 100: PORTD=0x10;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	101
;8x8.c: 101: PORTC=0x08;
	movlw	(08h)
	movwf	(7)	;volatile
	line	102
;8x8.c: 102: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
opt asmopt_on

	line	104
;8x8.c: 104: PORTD=0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	105
;8x8.c: 105: PORTC=0x08;
	movlw	(08h)
	movwf	(7)	;volatile
	line	106
;8x8.c: 106: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2367:
	decfsz	((??_main+0)+0),f
	goto	u2367
	decfsz	((??_main+0)+0+1),f
	goto	u2367
opt asmopt_on

	line	86
	movlw	low(01h)
	addwf	(main@i_1234),f
	skipnc
	incf	(main@i_1234+1),f
	movlw	high(01h)
	addwf	(main@i_1234+1),f
	
l1861:	
	movf	(main@i_1234+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2195
	movlw	low(01F4h)
	subwf	(main@i_1234),w
u2195:

	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l1859
u2190:
	goto	l1863
	
l693:	
	line	109
	
l1863:	
;8x8.c: 108: }
;8x8.c: 109: for(int i=0;i<500;i++)
	clrf	(main@i_1235)
	clrf	(main@i_1235+1)
	
l1865:	
	movf	(main@i_1235+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(01F4h)
	subwf	(main@i_1235),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l1869
u2200:
	goto	l687
	
l1867:	
	goto	l687
	line	110
	
l694:	
	line	111
	
l1869:	
;8x8.c: 110: {
;8x8.c: 111: PORTD=0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	112
	
l1871:	
;8x8.c: 112: PORTC=0x00;
	clrf	(7)	;volatile
	line	113
	
l1873:	
;8x8.c: 113: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2377:
	decfsz	((??_main+0)+0),f
	goto	u2377
	decfsz	((??_main+0)+0+1),f
	goto	u2377
opt asmopt_on

	line	115
	
l1875:	
;8x8.c: 115: PORTD=0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	116
	
l1877:	
;8x8.c: 116: PORTC=0x24;
	movlw	(024h)
	movwf	(7)	;volatile
	line	117
	
l1879:	
;8x8.c: 117: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2387:
	decfsz	((??_main+0)+0),f
	goto	u2387
	decfsz	((??_main+0)+0+1),f
	goto	u2387
opt asmopt_on

	line	119
	
l1881:	
;8x8.c: 119: PORTD=0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	120
	
l1883:	
;8x8.c: 120: PORTC=0x24;
	movlw	(024h)
	movwf	(7)	;volatile
	line	121
	
l1885:	
;8x8.c: 121: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2397:
	decfsz	((??_main+0)+0),f
	goto	u2397
	decfsz	((??_main+0)+0+1),f
	goto	u2397
opt asmopt_on

	line	123
	
l1887:	
;8x8.c: 123: PORTD=0x10;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	124
	
l1889:	
;8x8.c: 124: PORTC=0x3c;
	movlw	(03Ch)
	movwf	(7)	;volatile
	line	125
	
l1891:	
;8x8.c: 125: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2407:
	decfsz	((??_main+0)+0),f
	goto	u2407
	decfsz	((??_main+0)+0+1),f
	goto	u2407
opt asmopt_on

	line	127
	
l1893:	
;8x8.c: 127: PORTD=0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	128
	
l1895:	
;8x8.c: 128: PORTC=0x24;
	movlw	(024h)
	movwf	(7)	;volatile
	line	129
	
l1897:	
;8x8.c: 129: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2417:
	decfsz	((??_main+0)+0),f
	goto	u2417
	decfsz	((??_main+0)+0+1),f
	goto	u2417
opt asmopt_on

	line	131
	
l1899:	
;8x8.c: 131: PORTD=0x40;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	132
	
l1901:	
;8x8.c: 132: PORTC=0x24;
	movlw	(024h)
	movwf	(7)	;volatile
	line	133
	
l1903:	
;8x8.c: 133: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2427:
	decfsz	((??_main+0)+0),f
	goto	u2427
	decfsz	((??_main+0)+0+1),f
	goto	u2427
opt asmopt_on

	line	109
	
l1905:	
	movlw	low(01h)
	addwf	(main@i_1235),f
	skipnc
	incf	(main@i_1235+1),f
	movlw	high(01h)
	addwf	(main@i_1235+1),f
	
l1907:	
	movf	(main@i_1235+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(01F4h)
	subwf	(main@i_1235),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l1869
u2210:
	goto	l687
	
l695:	
	goto	l687
	line	135
	
l696:	
	line	8
	goto	l687
	
l697:	
	line	136
	
l698:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
