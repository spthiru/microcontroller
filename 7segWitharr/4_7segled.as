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
# 2 "G:\PIC ass\7SEGMENT\7segWitharr\3.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "G:\PIC ass\7SEGMENT\7segWitharr\3.c"
	dw 0x1f7a ;#
	FNROOT	_main
	global	main@F1084
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"G:\PIC ass\7SEGMENT\7segWitharr\3.c"
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
	file	"4_7segled.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"G:\PIC ass\7SEGMENT\7segWitharr\3.c"
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
	global	main@k
main@k:	; 2 bytes @ 0x14
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x16
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x18
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x1A
	ds	2
	global	main@m
main@m:	; 2 bytes @ 0x1C
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
;; (0) _main                                                34    34      0     411
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
;;		line 5 in file "G:\PIC ass\7SEGMENT\7segWitharr\3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2   20[BANK0 ] int 
;;  m               2   28[BANK0 ] int 
;;  l               2   26[BANK0 ] int 
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
	file	"G:\PIC ass\7SEGMENT\7segWitharr\3.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	6
	
l1941:	
;3.c: 6: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	7
;3.c: 7: TRISD=0;
	clrf	(136)^080h	;volatile
	line	8
	
l1943:	
;3.c: 8: int arr[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1084)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2250:
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
	goto	u2250
	goto	l1945
	line	9
;3.c: 9: while(1)
	
l689:	
	line	11
	
l1945:	
;3.c: 10: {
;3.c: 11: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	12
	
l1947:	
;3.c: 12: RD1=1;
	bsf	(65/8),(65)&7
	line	13
	
l1949:	
;3.c: 13: RD2=1;
	bsf	(66/8),(66)&7
	line	14
	
l1951:	
;3.c: 14: RD3=1;
	bsf	(67/8),(67)&7
	line	15
	
l1953:	
;3.c: 15: for(int i=0;i<10;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1955:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(0Ah)
	subwf	(main@i),w
u2265:

	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l1959
u2260:
	goto	l1945
	
l1957:	
	goto	l1945
	line	16
	
l690:	
	line	17
	
l1959:	
;3.c: 16: {
;3.c: 17: for(int j=0;j<10;j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	clrf	(main@j+1)
	
l1961:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(0Ah)
	subwf	(main@j),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l1965
u2270:
	goto	l2041
	
l1963:	
	goto	l2041
	line	18
	
l692:	
	line	19
	
l1965:	
;3.c: 18: {
;3.c: 19: for(int l=0;l<10;l++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@l)
	clrf	(main@l+1)
	
l1967:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(0Ah)
	subwf	(main@l),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l1971
u2280:
	goto	l2037
	
l1969:	
	goto	l2037
	line	20
	
l694:	
	line	21
	
l1971:	
;3.c: 20: {
;3.c: 21: for(int m=0;m<10;m++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@m)
	clrf	(main@m+1)
	
l1973:	
	movf	(main@m+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(0Ah)
	subwf	(main@m),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l1977
u2290:
	goto	l2033
	
l1975:	
	goto	l2033
	line	22
	
l696:	
	line	24
	
l1977:	
;3.c: 22: {
;3.c: 24: for(int k=0; k<50; k++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@k)
	clrf	(main@k+1)
	
l1979:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(032h)
	subwf	(main@k),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l698
u2300:
	goto	l2029
	
l1981:	
	goto	l2029
	line	25
	
l698:	
	line	26
;3.c: 25: {
;3.c: 26: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	27
	
l1983:	
;3.c: 27: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2367:
	decfsz	((??_main+0)+0),f
	goto	u2367
	decfsz	((??_main+0)+0+1),f
	goto	u2367
	nop2
opt asmopt_on

	line	28
	
l1985:	
;3.c: 28: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	29
	
l1987:	
;3.c: 29: RD2=0;
	bcf	(66/8),(66)&7
	line	30
	
l1989:	
;3.c: 30: RD3=0;
	bcf	(67/8),(67)&7
	line	31
	
l1991:	
;3.c: 31: PORTB=arr[i];
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	33
	
l1993:	
;3.c: 33: RD1=1;
	bsf	(65/8),(65)&7
	line	34
	
l1995:	
;3.c: 34: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2377:
	decfsz	((??_main+0)+0),f
	goto	u2377
	decfsz	((??_main+0)+0+1),f
	goto	u2377
	nop2
opt asmopt_on

	line	35
	
l1997:	
;3.c: 35: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	36
	
l1999:	
;3.c: 36: RD2=0;
	bcf	(66/8),(66)&7
	line	37
	
l2001:	
;3.c: 37: RD3=0;
	bcf	(67/8),(67)&7
	line	38
;3.c: 38: PORTB=arr[j];
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	40
	
l2003:	
;3.c: 40: RD2=1;
	bsf	(66/8),(66)&7
	line	41
	
l2005:	
;3.c: 41: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2387:
	decfsz	((??_main+0)+0),f
	goto	u2387
	decfsz	((??_main+0)+0+1),f
	goto	u2387
	nop2
opt asmopt_on

	line	42
	
l2007:	
;3.c: 42: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	43
	
l2009:	
;3.c: 43: RD0=0;
	bcf	(64/8),(64)&7
	line	44
	
l2011:	
;3.c: 44: RD3=0;
	bcf	(67/8),(67)&7
	line	45
	
l2013:	
;3.c: 45: PORTB=arr[l];
	movf	(main@l),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	47
	
l2015:	
;3.c: 47: RD3=1;
	bsf	(67/8),(67)&7
	line	48
;3.c: 48: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2397:
	decfsz	((??_main+0)+0),f
	goto	u2397
	decfsz	((??_main+0)+0+1),f
	goto	u2397
	nop2
opt asmopt_on

	line	49
	
l2017:	
;3.c: 49: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	50
	
l2019:	
;3.c: 50: RD1=0;
	bcf	(65/8),(65)&7
	line	51
	
l2021:	
;3.c: 51: RD2=0;
	bcf	(66/8),(66)&7
	line	52
	
l2023:	
;3.c: 52: PORTB=arr[m];
	movf	(main@m),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	24
	
l2025:	
	movlw	low(01h)
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	
l2027:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(032h)
	subwf	(main@k),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l698
u2310:
	goto	l2029
	
l699:	
	line	21
	
l2029:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@m),f
	skipnc
	incf	(main@m+1),f
	movlw	high(01h)
	addwf	(main@m+1),f
	
l2031:	
	movf	(main@m+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2325
	movlw	low(0Ah)
	subwf	(main@m),w
u2325:

	skipc
	goto	u2321
	goto	u2320
u2321:
	goto	l1977
u2320:
	goto	l2033
	
l697:	
	line	19
	
l2033:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(01h)
	addwf	(main@l+1),f
	
l2035:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(0Ah)
	subwf	(main@l),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l1971
u2330:
	goto	l2037
	
l695:	
	line	17
	
l2037:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l2039:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2345
	movlw	low(0Ah)
	subwf	(main@j),w
u2345:

	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l1965
u2340:
	goto	l2041
	
l693:	
	line	15
	
l2041:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2043:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(0Ah)
	subwf	(main@i),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l1959
u2350:
	goto	l1945
	
l691:	
	goto	l1945
	line	59
	
l700:	
	line	9
	goto	l1945
	
l701:	
	line	60
	
l702:	
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
