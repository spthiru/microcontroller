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
# 2 "G:\PIC ass\7SEGMENT\7segWitharr\stop.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "G:\PIC ass\7SEGMENT\7segWitharr\stop.c"
	dw 0x1f7a ;#
	FNROOT	_main
	global	main@F1084
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"G:\PIC ass\7SEGMENT\7segWitharr\stop.c"
	line	9

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
	global	_RC0
_RC0	set	56
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TRISC0
_TRISC0	set	1080
	file	"stopled.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"G:\PIC ass\7SEGMENT\7segWitharr\stop.c"
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
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     26      46
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
;; (0) _main                                                30    30      0     319
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     26    26      0
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
;;DATA                 0      0      32      12        0.0%
;;ABS                  0      0      32       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     1A      2E       5       57.5%
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
;;		line 5 in file "G:\PIC ass\7SEGMENT\7segWitharr\stop.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               2   20[BANK0 ] int 
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
;;      Locals:         0      26       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      26       0       0       0
;;Total ram usage:       30 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\PIC ass\7SEGMENT\7segWitharr\stop.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	6
	
l1907:	
;stop.c: 6: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	7
;stop.c: 7: TRISD=0;
	clrf	(136)^080h	;volatile
	line	8
	
l1909:	
;stop.c: 8: TRISC0=1;
	bsf	(1080/8)^080h,(1080)&7
	line	9
	
l1911:	
;stop.c: 9: int arr[10]={0xc0,0xf9,0xa4,0xb0,0x99,0x92,0x82,0xf8,0x80,0x90};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1084)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2230:
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
	goto	u2230
	goto	l1913
	line	10
;stop.c: 10: while(1)
	
l689:	
	line	12
	
l1913:	
;stop.c: 11: {
;stop.c: 12: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	13
	
l1915:	
;stop.c: 13: RD1=1;
	bsf	(65/8),(65)&7
	line	14
	
l1917:	
;stop.c: 14: for(int i=0;i<10;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1919:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(0Ah)
	subwf	(main@i),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l1923
u2240:
	goto	l1913
	
l1921:	
	goto	l1913
	line	15
	
l690:	
	line	16
	
l1923:	
;stop.c: 15: {
;stop.c: 16: for(int j=0;j<10;j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	clrf	(main@j+1)
	
l1925:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(0Ah)
	subwf	(main@j),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1929
u2250:
	goto	l1971
	
l1927:	
	goto	l1971
	line	17
	
l692:	
	line	18
	
l1929:	
;stop.c: 17: {
;stop.c: 18: for(int k=0;k<50;k++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@k)
	clrf	(main@k+1)
	
l1931:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(032h)
	subwf	(main@k),w
u2265:

	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l694
u2260:
	goto	l1967
	
l1933:	
	goto	l1967
	line	19
	
l694:	
	line	20
;stop.c: 19: {
;stop.c: 20: if(RC0==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l696
u2270:
	line	22
;stop.c: 21: {
;stop.c: 22: while(1)
	
l697:	
	line	24
;stop.c: 23: {
;stop.c: 24: RD0=1;
	bsf	(64/8),(64)&7
	line	25
	
l1935:	
;stop.c: 25: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	nop2
opt asmopt_on

	line	26
	
l1937:	
;stop.c: 26: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	27
	
l1939:	
;stop.c: 27: PORTB=arr[i];
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	29
	
l1941:	
;stop.c: 29: RD1=1;
	bsf	(65/8),(65)&7
	line	30
	
l1943:	
;stop.c: 30: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	nop2
opt asmopt_on

	line	31
	
l1945:	
;stop.c: 31: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	32
;stop.c: 32: PORTB=arr[j];
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	33
	
l1947:	
;stop.c: 33: if(RC0==1)
	btfss	(56/8),(56)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l697
u2280:
	goto	l1963
	line	35
	
l1949:	
;stop.c: 34: {
;stop.c: 35: break;
	goto	l1963
	line	36
	
l698:	
	goto	l697
	line	37
	
l700:	
	line	22
	goto	l697
	
l699:	
	line	38
;stop.c: 36: }
;stop.c: 37: }
;stop.c: 38: }
	goto	l1963
	line	39
	
l696:	
	line	40
;stop.c: 39: else{
;stop.c: 40: RD0=1;
	bsf	(64/8),(64)&7
	line	41
	
l1951:	
;stop.c: 41: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	nop2
opt asmopt_on

	line	42
	
l1953:	
;stop.c: 42: RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7
	line	43
	
l1955:	
;stop.c: 43: PORTB=arr[i];
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	45
	
l1957:	
;stop.c: 45: RD1=1;
	bsf	(65/8),(65)&7
	line	46
	
l1959:	
;stop.c: 46: _delay((unsigned long)((3)*(20000000/4000.0)));
	opt asmopt_off
movlw	20
movwf	((??_main+0)+0+1),f
	movlw	121
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
	nop2
opt asmopt_on

	line	47
	
l1961:	
;stop.c: 47: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	48
;stop.c: 48: PORTB=arr[j];
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	goto	l1963
	line	49
	
l701:	
	line	18
	
l1963:	
	movlw	low(01h)
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	
l1965:	
	movf	(main@k+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(032h)
	subwf	(main@k),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l694
u2290:
	goto	l1967
	
l695:	
	line	16
	
l1967:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l1969:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(0Ah)
	subwf	(main@j),w
u2305:

	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l1929
u2300:
	goto	l1971
	
l693:	
	line	14
	
l1971:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1973:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(0Ah)
	subwf	(main@i),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l1923
u2310:
	goto	l1913
	
l691:	
	goto	l1913
	line	54
	
l702:	
	line	10
	goto	l1913
	
l703:	
	line	55
	
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
