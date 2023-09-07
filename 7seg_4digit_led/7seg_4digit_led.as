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
# 2 "G:\PIC ass\7segment_stop_watch\7seg_4digit_led\7seg_4digit_led.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "G:\PIC ass\7segment_stop_watch\7seg_4digit_led\7seg_4digit_led.c"
	dw 0x1f7a ;#
	FNROOT	_main
	global	main@F1084
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"G:\PIC ass\7segment_stop_watch\7seg_4digit_led\7seg_4digit_led.c"
	line	9

;initializer for main@F1084
	retlw	03Fh
	retlw	0

	retlw	06h
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	04Fh
	retlw	0

	retlw	066h
	retlw	0

	retlw	06Dh
	retlw	0

	retlw	07Dh
	retlw	0

	retlw	07h
	retlw	0

	retlw	07Fh
	retlw	0

	retlw	06Fh
	retlw	0

	global	_PORTB
_PORTB	set	6
	global	_RC0
_RC0	set	56
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TRISC0
_TRISC0	set	1080
	file	"7seg_4digit_led.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"G:\PIC ass\7segment_stop_watch\7seg_4digit_led\7seg_4digit_led.c"
main@F1084:
       ds      20

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
	movlw low(__pdataBANK0+20)
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
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@arr
main@arr:	; 20 bytes @ 0x0
	ds	20
	global	main@m
main@m:	; 2 bytes @ 0x14
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x16
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x18
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x1A
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x1C
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     30      50
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                34    34      0     591
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     30    30      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;DATA                 0      0      36      12        0.0%
;;ABS                  0      0      36       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     1E      32       5       62.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 5 in file "G:\PIC ass\7segment_stop_watch\7seg_4digit_led\7seg_4digit_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               2   20[BANK0 ] int 
;;  l               2   28[BANK0 ] int 
;;  k               2   26[BANK0 ] int 
;;  j               2   24[BANK0 ] int 
;;  i               2   22[BANK0 ] int 
;;  arr            20    0[BANK0 ] int [10]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      30       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      30       0       0       0
;;Total ram usage:       34 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\PIC ass\7segment_stop_watch\7seg_4digit_led\7seg_4digit_led.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	6
	
l2027:	
;7seg_4digit_led.c: 6: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	7
;7seg_4digit_led.c: 7: TRISD=0;
	clrf	(136)^080h	;volatile
	line	8
	
l2029:	
;7seg_4digit_led.c: 8: TRISC0=0;
	bcf	(1080/8)^080h,(1080)&7
	line	9
	
l2031:	
;7seg_4digit_led.c: 9: int arr[10]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1084)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2270:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2270
	goto	l2033
	line	10
;7seg_4digit_led.c: 10: while(1)
	
l689:	
	line	12
	
l2033:	
;7seg_4digit_led.c: 11: {
;7seg_4digit_led.c: 12: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	13
	
l2035:	
;7seg_4digit_led.c: 13: RD1=1;
	bsf	(65/8),(65)&7
	line	14
	
l2037:	
;7seg_4digit_led.c: 14: RD2=1;
	bsf	(66/8),(66)&7
	line	15
	
l2039:	
;7seg_4digit_led.c: 15: RD3=1;
	bsf	(67/8),(67)&7
	line	16
	
l2041:	
;7seg_4digit_led.c: 16: for(int i=0;i<6;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2043:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(06h)
	subwf	(main@i),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l2047
u2280:
	goto	l2033
	
l2045:	
	goto	l2033
	line	17
	
l690:	
	line	18
	
l2047:	
;7seg_4digit_led.c: 17: {
;7seg_4digit_led.c: 18: for(int j=0;j<10;j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	clrf	(main@j+1)
	
l2049:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(0Ah)
	subwf	(main@j),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2053
u2290:
	goto	l2207
	
l2051:	
	goto	l2207
	line	19
	
l692:	
	line	20
	
l2053:	
;7seg_4digit_led.c: 19: {
;7seg_4digit_led.c: 20: for(int k=0;k<6;k++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@k)
	clrf	(main@k+1)
	
l2055:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(06h)
	subwf	(main@k),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l2059
u2300:
	goto	l2203
	
l2057:	
	goto	l2203
	line	21
	
l694:	
	line	22
	
l2059:	
;7seg_4digit_led.c: 21: {
;7seg_4digit_led.c: 22: for(int l=0;l<10;l++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@l)
	clrf	(main@l+1)
	
l2061:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(0Ah)
	subwf	(main@l),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2065
u2310:
	goto	l2199
	
l2063:	
	goto	l2199
	line	23
	
l696:	
	line	24
	
l2065:	
;7seg_4digit_led.c: 23: {
;7seg_4digit_led.c: 24: for(int m=0;m<150;m++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@m)
	clrf	(main@m+1)
	
l2067:	
	movf	(main@m+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(096h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2325
	movlw	low(096h)
	subwf	(main@m),w
u2325:

	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l698
u2320:
	goto	l2195
	
l2069:	
	goto	l2195
	line	25
	
l698:	
	line	26
;7seg_4digit_led.c: 25: {
;7seg_4digit_led.c: 26: if(RC0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l700
u2330:
	line	28
;7seg_4digit_led.c: 27: {
;7seg_4digit_led.c: 28: while(1)
	
l701:	
	line	30
;7seg_4digit_led.c: 29: {
;7seg_4digit_led.c: 30: RD0=1;
	bsf	(64/8),(64)&7
	line	31
	
l2071:	
;7seg_4digit_led.c: 31: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2407:
	decfsz	((??_main+0)+0),f
	goto	u2407
	decfsz	((??_main+0)+0+1),f
	goto	u2407
	nop2
opt asmopt_on

	line	32
	
l2073:	
;7seg_4digit_led.c: 32: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	33
	
l2075:	
;7seg_4digit_led.c: 33: RD2=0;
	bcf	(66/8),(66)&7
	line	34
	
l2077:	
;7seg_4digit_led.c: 34: RD3=0;
	bcf	(67/8),(67)&7
	line	35
	
l2079:	
;7seg_4digit_led.c: 35: PORTB=arr[i];
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	36
	
l2081:	
;7seg_4digit_led.c: 36: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2417:
	decfsz	((??_main+0)+0),f
	goto	u2417
	decfsz	((??_main+0)+0+1),f
	goto	u2417
	nop2
opt asmopt_on

	line	37
	
l2083:	
;7seg_4digit_led.c: 37: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	39
	
l2085:	
;7seg_4digit_led.c: 39: RD1=1;
	bsf	(65/8),(65)&7
	line	40
	
l2087:	
;7seg_4digit_led.c: 40: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2427:
	decfsz	((??_main+0)+0),f
	goto	u2427
	decfsz	((??_main+0)+0+1),f
	goto	u2427
	nop2
opt asmopt_on

	line	41
	
l2089:	
;7seg_4digit_led.c: 41: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	42
	
l2091:	
;7seg_4digit_led.c: 42: RD2=0;
	bcf	(66/8),(66)&7
	line	43
	
l2093:	
;7seg_4digit_led.c: 43: RD3=0;
	bcf	(67/8),(67)&7
	line	44
	
l2095:	
;7seg_4digit_led.c: 44: PORTB=arr[j];
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	45
	
l2097:	
;7seg_4digit_led.c: 45: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2437:
	decfsz	((??_main+0)+0),f
	goto	u2437
	decfsz	((??_main+0)+0+1),f
	goto	u2437
	nop2
opt asmopt_on

	line	46
;7seg_4digit_led.c: 46: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	48
	
l2099:	
;7seg_4digit_led.c: 48: RD2=1;
	bsf	(66/8),(66)&7
	line	49
	
l2101:	
;7seg_4digit_led.c: 49: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2447:
	decfsz	((??_main+0)+0),f
	goto	u2447
	decfsz	((??_main+0)+0+1),f
	goto	u2447
	nop2
opt asmopt_on

	line	50
	
l2103:	
;7seg_4digit_led.c: 50: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	51
	
l2105:	
;7seg_4digit_led.c: 51: RD1=0;
	bcf	(65/8),(65)&7
	line	52
	
l2107:	
;7seg_4digit_led.c: 52: RD3=0;
	bcf	(67/8),(67)&7
	line	53
	
l2109:	
;7seg_4digit_led.c: 53: PORTB=arr[k];
	movf	(main@k),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	54
	
l2111:	
;7seg_4digit_led.c: 54: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2457:
	decfsz	((??_main+0)+0),f
	goto	u2457
	decfsz	((??_main+0)+0+1),f
	goto	u2457
	nop2
opt asmopt_on

	line	55
	
l2113:	
;7seg_4digit_led.c: 55: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	57
	
l2115:	
;7seg_4digit_led.c: 57: RD3=1;
	bsf	(67/8),(67)&7
	line	58
	
l2117:	
;7seg_4digit_led.c: 58: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2467:
	decfsz	((??_main+0)+0),f
	goto	u2467
	decfsz	((??_main+0)+0+1),f
	goto	u2467
	nop2
opt asmopt_on

	line	59
	
l2119:	
;7seg_4digit_led.c: 59: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	60
	
l2121:	
;7seg_4digit_led.c: 60: RD2=0;
	bcf	(66/8),(66)&7
	line	61
	
l2123:	
;7seg_4digit_led.c: 61: RD1=0;
	bcf	(65/8),(65)&7
	line	62
	
l2125:	
;7seg_4digit_led.c: 62: PORTB=arr[l];
	movf	(main@l),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	63
;7seg_4digit_led.c: 63: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2477:
	decfsz	((??_main+0)+0),f
	goto	u2477
	decfsz	((??_main+0)+0+1),f
	goto	u2477
	nop2
opt asmopt_on

	line	64
	
l2127:	
;7seg_4digit_led.c: 64: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	65
	
l2129:	
;7seg_4digit_led.c: 65: if(RC0==0)
	btfsc	(56/8),(56)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l701
u2340:
	goto	l2191
	line	67
	
l2131:	
;7seg_4digit_led.c: 66: {
;7seg_4digit_led.c: 67: break;
	goto	l2191
	line	68
	
l702:	
	goto	l701
	line	69
	
l704:	
	line	28
	goto	l701
	
l703:	
	line	70
;7seg_4digit_led.c: 68: }
;7seg_4digit_led.c: 69: }
;7seg_4digit_led.c: 70: }
	goto	l2191
	line	71
	
l700:	
	line	73
;7seg_4digit_led.c: 71: else
;7seg_4digit_led.c: 72: {
;7seg_4digit_led.c: 73: RD0=1;
	bsf	(64/8),(64)&7
	line	74
	
l2133:	
;7seg_4digit_led.c: 74: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2487:
	decfsz	((??_main+0)+0),f
	goto	u2487
	decfsz	((??_main+0)+0+1),f
	goto	u2487
opt asmopt_on

	line	75
	
l2135:	
;7seg_4digit_led.c: 75: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	76
	
l2137:	
;7seg_4digit_led.c: 76: RD2=0;
	bcf	(66/8),(66)&7
	line	77
	
l2139:	
;7seg_4digit_led.c: 77: RD3=0;
	bcf	(67/8),(67)&7
	line	78
	
l2141:	
;7seg_4digit_led.c: 78: PORTB=arr[i];
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	79
	
l2143:	
;7seg_4digit_led.c: 79: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2497:
	decfsz	((??_main+0)+0),f
	goto	u2497
	decfsz	((??_main+0)+0+1),f
	goto	u2497
opt asmopt_on

	line	80
	
l2145:	
;7seg_4digit_led.c: 80: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	82
	
l2147:	
;7seg_4digit_led.c: 82: RD1=1;
	bsf	(65/8),(65)&7
	line	83
	
l2149:	
;7seg_4digit_led.c: 83: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2507:
	decfsz	((??_main+0)+0),f
	goto	u2507
	decfsz	((??_main+0)+0+1),f
	goto	u2507
opt asmopt_on

	line	84
	
l2151:	
;7seg_4digit_led.c: 84: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	85
	
l2153:	
;7seg_4digit_led.c: 85: RD2=0;
	bcf	(66/8),(66)&7
	line	86
	
l2155:	
;7seg_4digit_led.c: 86: RD3=0;
	bcf	(67/8),(67)&7
	line	87
	
l2157:	
;7seg_4digit_led.c: 87: PORTB=arr[j];
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	88
	
l2159:	
;7seg_4digit_led.c: 88: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2517:
	decfsz	((??_main+0)+0),f
	goto	u2517
	decfsz	((??_main+0)+0+1),f
	goto	u2517
opt asmopt_on

	line	89
;7seg_4digit_led.c: 89: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	91
	
l2161:	
;7seg_4digit_led.c: 91: RD2=1;
	bsf	(66/8),(66)&7
	line	92
	
l2163:	
;7seg_4digit_led.c: 92: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2527:
	decfsz	((??_main+0)+0),f
	goto	u2527
	decfsz	((??_main+0)+0+1),f
	goto	u2527
opt asmopt_on

	line	93
	
l2165:	
;7seg_4digit_led.c: 93: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	94
	
l2167:	
;7seg_4digit_led.c: 94: RD0=0;
	bcf	(64/8),(64)&7
	line	95
	
l2169:	
;7seg_4digit_led.c: 95: RD3=0;
	bcf	(67/8),(67)&7
	line	96
	
l2171:	
;7seg_4digit_led.c: 96: PORTB=arr[k];
	movf	(main@k),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	97
	
l2173:	
;7seg_4digit_led.c: 97: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2537:
	decfsz	((??_main+0)+0),f
	goto	u2537
	decfsz	((??_main+0)+0+1),f
	goto	u2537
opt asmopt_on

	line	98
	
l2175:	
;7seg_4digit_led.c: 98: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	100
	
l2177:	
;7seg_4digit_led.c: 100: RD3=1;
	bsf	(67/8),(67)&7
	line	101
	
l2179:	
;7seg_4digit_led.c: 101: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2547:
	decfsz	((??_main+0)+0),f
	goto	u2547
	decfsz	((??_main+0)+0+1),f
	goto	u2547
opt asmopt_on

	line	102
	
l2181:	
;7seg_4digit_led.c: 102: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	103
	
l2183:	
;7seg_4digit_led.c: 103: RD2=0;
	bcf	(66/8),(66)&7
	line	104
	
l2185:	
;7seg_4digit_led.c: 104: RD0=0;
	bcf	(64/8),(64)&7
	line	105
	
l2187:	
;7seg_4digit_led.c: 105: PORTB=arr[l];
	movf	(main@l),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	106
;7seg_4digit_led.c: 106: _delay((unsigned long)((1)*(20000000/4000.0)));
	opt asmopt_off
movlw	7
movwf	((??_main+0)+0+1),f
	movlw	125
movwf	((??_main+0)+0),f
u2557:
	decfsz	((??_main+0)+0),f
	goto	u2557
	decfsz	((??_main+0)+0+1),f
	goto	u2557
opt asmopt_on

	line	107
	
l2189:	
;7seg_4digit_led.c: 107: PORTB=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l2191
	line	108
	
l705:	
	line	24
	
l2191:	
	movlw	low(01h)
	addwf	(main@m),f
	skipnc
	incf	(main@m+1),f
	movlw	high(01h)
	addwf	(main@m+1),f
	
l2193:	
	movf	(main@m+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(096h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(096h)
	subwf	(main@m),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l698
u2350:
	goto	l2195
	
l699:	
	line	22
	
l2195:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(01h)
	addwf	(main@l+1),f
	
l2197:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(0Ah)
	subwf	(main@l),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2065
u2360:
	goto	l2199
	
l697:	
	line	20
	
l2199:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	
l2201:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(06h)
	subwf	(main@k),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2059
u2370:
	goto	l2203
	
l695:	
	line	18
	
l2203:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l2205:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(0Ah)
	subwf	(main@j),w
u2385:

	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2053
u2380:
	goto	l2207
	
l693:	
	line	16
	
l2207:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2209:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(06h)
	subwf	(main@i),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2047
u2390:
	goto	l2033
	
l691:	
	goto	l2033
	line	114
	
l706:	
	line	10
	goto	l2033
	
l707:	
	line	115
	
l708:	
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
