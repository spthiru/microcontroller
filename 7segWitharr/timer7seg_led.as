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
# 2 "G:\PIC ass\7SEGMENT\7segWitharr\tmrWith7seg.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "G:\PIC ass\7SEGMENT\7segWitharr\tmrWith7seg.c"
	dw 0x1f7a ;#
	FNROOT	_main
	global	main@F1084
	global	main@F1086
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"G:\PIC ass\7SEGMENT\7segWitharr\tmrWith7seg.c"
	line	8

;initializer for main@F1084
	retlw	0C0h
	retlw	0

	retlw	0F9h
	retlw	0

	retlw	0A4h
	retlw	0

	retlw	0B0h
	retlw	0

	retlw	099h
	retlw	0

	retlw	092h
	retlw	0

	retlw	082h
	retlw	0

	retlw	0F8h
	retlw	0

	retlw	080h
	retlw	0

	retlw	090h
	retlw	0

psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	9

;initializer for main@F1086
	retlw	040h
	retlw	0

	retlw	079h
	retlw	0

	retlw	024h
	retlw	0

	retlw	030h
	retlw	0

	retlw	019h
	retlw	0

	retlw	012h
	retlw	0

	retlw	02h
	retlw	0

	retlw	078h
	retlw	0

	retlw	0
	retlw	0

	retlw	010h
	retlw	0

	global	_PORTB
_PORTB	set	6
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
	file	"timer7seg_led.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"G:\PIC ass\7SEGMENT\7segWitharr\tmrWith7seg.c"
	line	8
main@F1084:
       ds      20

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"G:\PIC ass\7SEGMENT\7segWitharr\tmrWith7seg.c"
	line	9
main@F1086:
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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+20)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
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
	global	main@arr1
main@arr1:	; 20 bytes @ 0x0
	ds	20
	global	main@arr
main@arr:	; 20 bytes @ 0x14
	ds	20
	global	main@m
main@m:	; 2 bytes @ 0x28
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2A
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x2C
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x2E
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x30
	ds	2
;;Data sizes: Strings 0, constant 0, data 40, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     50      70
;; BANK1           80      0      20
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
;; (0) _main                                                54    54      0     412
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     50    50      0
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
;;BANK1               50      0      14       7       25.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      5E      12        0.0%
;;ABS                  0      0      5E       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     32      46       5       87.5%
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
;;		line 5 in file "G:\PIC ass\7SEGMENT\7segWitharr\tmrWith7seg.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               2   40[BANK0 ] int 
;;  l               2   48[BANK0 ] int 
;;  k               2   46[BANK0 ] int 
;;  j               2   44[BANK0 ] int 
;;  i               2   42[BANK0 ] int 
;;  arr            20   20[BANK0 ] int [10]
;;  arr1           20    0[BANK0 ] int [10]
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
;;      Locals:         0      50       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      50       0       0       0
;;Total ram usage:       54 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\PIC ass\7SEGMENT\7segWitharr\tmrWith7seg.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	6
	
l1943:	
;tmrWith7seg.c: 6: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	7
;tmrWith7seg.c: 7: TRISD=0;
	clrf	(136)^080h	;volatile
	line	8
	
l1945:	
;tmrWith7seg.c: 8: int arr[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1084)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2260:
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
	goto	u2260
	line	9
	
l1947:	
;tmrWith7seg.c: 9: int arr1[10]={0x40,0x79,0x24,0x30,0x19,0x12,0x02,0x78,0x00,0x10};
	movlw	(main@arr1)&0ffh
	movwf	fsr0
	movlw	low(main@F1086)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2270:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
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
	goto	l1949
	line	10
;tmrWith7seg.c: 10: while(1)
	
l691:	
	line	12
	
l1949:	
;tmrWith7seg.c: 11: {
;tmrWith7seg.c: 12: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	13
	
l1951:	
;tmrWith7seg.c: 13: RD1=1;
	bsf	(65/8),(65)&7
	line	14
	
l1953:	
;tmrWith7seg.c: 14: RD2=1;
	bsf	(66/8),(66)&7
	line	15
	
l1955:	
;tmrWith7seg.c: 15: RD3=1;
	bsf	(67/8),(67)&7
	line	16
;tmrWith7seg.c: 16: for(int i=0;i<6;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1957:	
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
	goto	l1961
u2280:
	goto	l1949
	
l1959:	
	goto	l1949
	line	17
	
l692:	
	line	18
	
l1961:	
;tmrWith7seg.c: 17: {
;tmrWith7seg.c: 18: for(int j=0;j<10;j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	clrf	(main@j+1)
	
l1963:	
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
	goto	l1967
u2290:
	goto	l2043
	
l1965:	
	goto	l2043
	line	19
	
l694:	
	line	20
	
l1967:	
;tmrWith7seg.c: 19: {
;tmrWith7seg.c: 20: for(int k=0;k<6;k++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@k)
	clrf	(main@k+1)
	
l1969:	
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
	goto	l1973
u2300:
	goto	l2039
	
l1971:	
	goto	l2039
	line	21
	
l696:	
	line	22
	
l1973:	
;tmrWith7seg.c: 21: {
;tmrWith7seg.c: 22: for(int l=0;l<10;l++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@l)
	clrf	(main@l+1)
	
l1975:	
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
	goto	l1979
u2310:
	goto	l2035
	
l1977:	
	goto	l2035
	line	23
	
l698:	
	line	24
	
l1979:	
;tmrWith7seg.c: 23: {
;tmrWith7seg.c: 24: for(int m=0;m<40;m++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@m)
	clrf	(main@m+1)
	
l1981:	
	movf	(main@m+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(028h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2325
	movlw	low(028h)
	subwf	(main@m),w
u2325:

	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l700
u2320:
	goto	l2031
	
l1983:	
	goto	l2031
	line	25
	
l700:	
	line	26
;tmrWith7seg.c: 25: {
;tmrWith7seg.c: 26: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	27
	
l1985:	
;tmrWith7seg.c: 27: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u2387:
	decfsz	((??_main+0)+0),f
	goto	u2387
	decfsz	((??_main+0)+0+1),f
	goto	u2387
	clrwdt
opt asmopt_on

	line	28
	
l1987:	
;tmrWith7seg.c: 28: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	29
	
l1989:	
;tmrWith7seg.c: 29: RD2=0;
	bcf	(66/8),(66)&7
	line	30
	
l1991:	
;tmrWith7seg.c: 30: RD3=0;
	bcf	(67/8),(67)&7
	line	31
	
l1993:	
;tmrWith7seg.c: 31: PORTB=arr[i];
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	33
	
l1995:	
;tmrWith7seg.c: 33: RD1=1;
	bsf	(65/8),(65)&7
	line	34
	
l1997:	
;tmrWith7seg.c: 34: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u2397:
	decfsz	((??_main+0)+0),f
	goto	u2397
	decfsz	((??_main+0)+0+1),f
	goto	u2397
	clrwdt
opt asmopt_on

	line	35
	
l1999:	
;tmrWith7seg.c: 35: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	36
	
l2001:	
;tmrWith7seg.c: 36: RD2=0;
	bcf	(66/8),(66)&7
	line	37
	
l2003:	
;tmrWith7seg.c: 37: RD3=0;
	bcf	(67/8),(67)&7
	line	38
;tmrWith7seg.c: 38: PORTB=arr1[j];
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	40
	
l2005:	
;tmrWith7seg.c: 40: RD2=1;
	bsf	(66/8),(66)&7
	line	41
	
l2007:	
;tmrWith7seg.c: 41: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u2407:
	decfsz	((??_main+0)+0),f
	goto	u2407
	decfsz	((??_main+0)+0+1),f
	goto	u2407
	clrwdt
opt asmopt_on

	line	42
	
l2009:	
;tmrWith7seg.c: 42: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	43
	
l2011:	
;tmrWith7seg.c: 43: RD0=0;
	bcf	(64/8),(64)&7
	line	44
	
l2013:	
;tmrWith7seg.c: 44: RD3=0;
	bcf	(67/8),(67)&7
	line	45
	
l2015:	
;tmrWith7seg.c: 45: PORTB=arr[k];
	movf	(main@k),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	47
	
l2017:	
;tmrWith7seg.c: 47: RD3=1;
	bsf	(67/8),(67)&7
	line	48
;tmrWith7seg.c: 48: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u2417:
	decfsz	((??_main+0)+0),f
	goto	u2417
	decfsz	((??_main+0)+0+1),f
	goto	u2417
	clrwdt
opt asmopt_on

	line	49
	
l2019:	
;tmrWith7seg.c: 49: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	50
	
l2021:	
;tmrWith7seg.c: 50: RD2=0;
	bcf	(66/8),(66)&7
	line	51
	
l2023:	
;tmrWith7seg.c: 51: RD0=0;
	bcf	(64/8),(64)&7
	line	52
	
l2025:	
;tmrWith7seg.c: 52: PORTB=arr[l];
	movf	(main@l),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	24
	
l2027:	
	movlw	low(01h)
	addwf	(main@m),f
	skipnc
	incf	(main@m+1),f
	movlw	high(01h)
	addwf	(main@m+1),f
	
l2029:	
	movf	(main@m+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(028h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(028h)
	subwf	(main@m),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l700
u2330:
	goto	l2031
	
l701:	
	line	22
	
l2031:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(01h)
	addwf	(main@l+1),f
	
l2033:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2345
	movlw	low(0Ah)
	subwf	(main@l),w
u2345:

	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l1979
u2340:
	goto	l2035
	
l699:	
	line	20
	
l2035:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	
l2037:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(06h)
	subwf	(main@k),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l1973
u2350:
	goto	l2039
	
l697:	
	line	18
	
l2039:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l2041:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(0Ah)
	subwf	(main@j),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l1967
u2360:
	goto	l2043
	
l695:	
	line	16
	
l2043:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2045:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(06h)
	subwf	(main@i),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l1961
u2370:
	goto	l1949
	
l693:	
	goto	l1949
	line	59
	
l702:	
	line	10
	goto	l1949
	
l703:	
	line	60
	
l704:	
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
