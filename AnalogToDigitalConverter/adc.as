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
# 3 "G:\PIC ass\AnalogToDigitalConverter\adc.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "G:\PIC ass\AnalogToDigitalConverter\adc.c"
	dw 0x1f7a ;#
	FNCALL	_main,_gpio_config
	FNCALL	_main,_adc_config
	FNCALL	_main,_uart_init
	FNCALL	_main,___lwdiv
	FNCALL	_main,___lwmod
	FNCALL	_main,_uart_tx
	FNROOT	_main
	global	_ADRESH
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:
_ADRESH	set	30
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADIF
_ADIF	set	102
	global	_ADON
_ADON	set	248
	global	_CHS0
_CHS0	set	251
	global	_CHS1
_CHS1	set	252
	global	_CHS2
_CHS2	set	253
	global	_GO_DONE
_GO_DONE	set	250
	global	_RCIF
_RCIF	set	101
	global	_SPEN
_SPEN	set	199
	global	_TXIF
_TXIF	set	100
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_ADCS2
_ADCS2	set	1278
	global	_ADFM
_ADFM	set	1279
	global	_PCFG0
_PCFG0	set	1272
	global	_PCFG1
_PCFG1	set	1273
	global	_PCFG2
_PCFG2	set	1274
	global	_PCFG3
_PCFG3	set	1275
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
	global	_TXEN
_TXEN	set	1221
	file	"adc.as"
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
	global	?_gpio_config
?_gpio_config:	; 0 bytes @ 0x0
	global	??_gpio_config
??_gpio_config:	; 0 bytes @ 0x0
	global	?_uart_init
?_uart_init:	; 0 bytes @ 0x0
	global	??_uart_init
??_uart_init:	; 0 bytes @ 0x0
	global	?_adc_config
?_adc_config:	; 0 bytes @ 0x0
	global	??_adc_config
??_adc_config:	; 0 bytes @ 0x0
	global	?_uart_tx
?_uart_tx:	; 0 bytes @ 0x0
	global	??_uart_tx
??_uart_tx:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	uart_tx@data
uart_tx@data:	; 1 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x8
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x8
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0xA
	ds	2
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xC
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
	global	main@i
main@i:	; 2 bytes @ 0x4
	ds	2
	global	main@mod
main@mod:	; 2 bytes @ 0x6
	ds	2
	global	main@m
main@m:	; 2 bytes @ 0x8
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0xA
	ds	2
	global	main@val
main@val:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     14      14
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwmod
;;   ___lwmod->___lwdiv
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
;; (0) _main                                                16    16      0     414
;;                                              0 BANK0     14    14      0
;;                        _gpio_config
;;                         _adc_config
;;                          _uart_init
;;                            ___lwdiv
;;                            ___lwmod
;;                            _uart_tx
;; ---------------------------------------------------------------------------------
;; (1) ___lwmod                                              6     2      4     159
;;                                              8 COMMON     6     2      4
;;                            ___lwdiv (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _uart_tx                                              1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _adc_config                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _uart_init                                            0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _gpio_config                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _gpio_config
;;   _adc_config
;;   _uart_init
;;   ___lwdiv
;;   ___lwmod
;;     ___lwdiv (ARG)
;;   _uart_tx
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      E       E       5       17.5%
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
;;		line 62 in file "G:\PIC ass\AnalogToDigitalConverter\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  val             2   12[BANK0 ] unsigned int 
;;  k               2   10[BANK0 ] int 
;;  m               2    8[BANK0 ] int 
;;  mod             2    6[BANK0 ] int 
;;  i               2    4[BANK0 ] int 
;;  div             2    0        int 
;;  ans             0    0        int [0]
;; Return value:  Size  Location     Type
;;                  2  701[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_gpio_config
;;		_adc_config
;;		_uart_init
;;		___lwdiv
;;		___lwmod
;;		_uart_tx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\PIC ass\AnalogToDigitalConverter\adc.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
l2057:	
;adc.c: 63: unsigned int val;
;adc.c: 64: int i = 0, mod = 0, div, m = 100,k = 2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	clrf	(main@mod)
	clrf	(main@mod+1)
	
l2059:	
	movlw	low(064h)
	movwf	(main@m)
	movlw	high(064h)
	movwf	((main@m))+1
	
l2061:	
	movlw	low(02h)
	movwf	(main@k)
	movlw	high(02h)
	movwf	((main@k))+1
	line	66
	
l2063:	
;adc.c: 65: int ans[];
;adc.c: 66: gpio_config();
	fcall	_gpio_config
	line	67
	
l2065:	
;adc.c: 67: adc_config();
	fcall	_adc_config
	goto	l2067
	line	68
;adc.c: 68: while(1)
	
l702:	
	line	71
	
l2067:	
;adc.c: 69: {
;adc.c: 71: _delay((unsigned long)((20)*(20000000/4000000.0)));
	opt asmopt_off
movlw	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	(??_main+0)+0,f
u2317:
decfsz	(??_main+0)+0,f
	goto	u2317
opt asmopt_on

	line	74
	
l2069:	
;adc.c: 74: GO_DONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	77
;adc.c: 77: while(GO_DONE == 0);
	goto	l703
	
l704:	
	
l703:	
	btfss	(250/8),(250)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l703
u2300:
	goto	l2071
	
l705:	
	line	81
	
l2071:	
;adc.c: 81: val=((ADRESH<<8)|(ADRESL));
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	(30),w	;volatile
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	movf	(??_main+2)+0,w
	movwf	(??_main+2)+1
	clrf	(??_main+2)+0
	movf	0+(??_main+0)+0,w
	iorwf	0+(??_main+2)+0,w
	movwf	(main@val)
	movf	1+(??_main+0)+0,w
	iorwf	1+(??_main+2)+0,w
	movwf	1+(main@val)
	line	83
	
l2073:	
;adc.c: 83: uart_init();
	fcall	_uart_init
	line	85
	
l2075:	
;adc.c: 85: uart_tx(((val/100)%10)+48);
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_uart_tx
	line	86
	
l2077:	
;adc.c: 86: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	decfsz	((??_main+0)+0+2),f
	goto	u2327
opt asmopt_on

	line	88
	
l2079:	
;adc.c: 88: uart_tx(((val/10)%10)+48);
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(main@val),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?___lwdiv)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_uart_tx
	line	89
	
l2081:	
;adc.c: 89: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2337:
	decfsz	((??_main+0)+0),f
	goto	u2337
	decfsz	((??_main+0)+0+1),f
	goto	u2337
	decfsz	((??_main+0)+0+2),f
	goto	u2337
opt asmopt_on

	line	91
	
l2083:	
;adc.c: 91: uart_tx((val%10)+48);
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(main@val),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_uart_tx
	line	92
	
l2085:	
;adc.c: 92: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2347:
	decfsz	((??_main+0)+0),f
	goto	u2347
	decfsz	((??_main+0)+0+1),f
	goto	u2347
	decfsz	((??_main+0)+0+2),f
	goto	u2347
opt asmopt_on

	line	95
	
l2087:	
;adc.c: 95: ADIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(102/8),(102)&7
	line	97
	
l2089:	
;adc.c: 97: uart_tx('\n');
	movlw	(0Ah)
	fcall	_uart_tx
	line	98
	
l2091:	
;adc.c: 98: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2357:
	decfsz	((??_main+0)+0),f
	goto	u2357
	decfsz	((??_main+0)+0+1),f
	goto	u2357
	decfsz	((??_main+0)+0+2),f
	goto	u2357
opt asmopt_on

	line	100
	
l2093:	
;adc.c: 100: uart_tx('\r');
	movlw	(0Dh)
	fcall	_uart_tx
	line	101
	
l2095:	
;adc.c: 101: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2367:
	decfsz	((??_main+0)+0),f
	goto	u2367
	decfsz	((??_main+0)+0+1),f
	goto	u2367
	decfsz	((??_main+0)+0+2),f
	goto	u2367
opt asmopt_on

	goto	l2067
	line	102
	
l706:	
	line	68
	goto	l2067
	
l707:	
	line	103
	
l708:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	___lwmod
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    8[COMMON] unsigned int 
;;  dividend        2   10[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    8[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text179
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 7
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2035:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l2053
u2240:
	line	9
	
l2037:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l2043
	
l735:	
	line	11
	
l2039:	
	movlw	01h
	
u2255:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2255
	line	12
	
l2041:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2043
	line	13
	
l734:	
	line	10
	
l2043:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l2039
u2260:
	goto	l2045
	
l736:	
	goto	l2045
	line	14
	
l737:	
	line	15
	
l2045:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2275
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2049
u2270:
	line	16
	
l2047:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2049
	
l738:	
	line	17
	
l2049:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	18
	
l2051:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l2045
u2290:
	goto	l2053
	
l739:	
	goto	l2053
	line	19
	
l733:	
	line	20
	
l2053:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l740
	
l2055:	
	line	21
	
l740:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text180
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 7
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2009:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	10
	
l2011:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2171
	goto	u2170
u2171:
	goto	l2031
u2170:
	line	11
	
l2013:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2019
	
l725:	
	line	13
	
l2015:	
	movlw	01h
	
u2185:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2185
	line	14
	
l2017:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2019
	line	15
	
l724:	
	line	12
	
l2019:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l2015
u2190:
	goto	l2021
	
l726:	
	goto	l2021
	line	16
	
l727:	
	line	17
	
l2021:	
	movlw	01h
	
u2205:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2205
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2215
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2215:
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l2027
u2210:
	line	19
	
l2023:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2025:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2027
	line	21
	
l728:	
	line	22
	
l2027:	
	movlw	01h
	
u2225:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2225
	line	23
	
l2029:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l2021
u2230:
	goto	l2031
	
l729:	
	goto	l2031
	line	24
	
l723:	
	line	25
	
l2031:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l730
	
l2033:	
	line	26
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_uart_tx
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:

;; *************** function _uart_tx *****************
;; Defined at:
;;		line 55 in file "G:\PIC ass\AnalogToDigitalConverter\adc.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text181
	file	"G:\PIC ass\AnalogToDigitalConverter\adc.c"
	line	55
	global	__size_of_uart_tx
	__size_of_uart_tx	equ	__end_of_uart_tx-_uart_tx
	
_uart_tx:	
	opt	stack 7
; Regs used in _uart_tx: [wreg]
;uart_tx@data stored from wreg
	line	57
	movwf	(uart_tx@data)
	
l2007:	
;adc.c: 57: TXREG = data;
	movf	(uart_tx@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	58
;adc.c: 58: while(TXIF == 0);
	goto	l696
	
l697:	
	
l696:	
	btfss	(100/8),(100)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l696
u2160:
	
l698:	
	line	59
;adc.c: 59: TXIF = 0;
	bcf	(100/8),(100)&7
	line	60
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_uart_tx
	__end_of_uart_tx:
;; =============== function _uart_tx ends ============

	signat	_uart_tx,4216
	global	_adc_config
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:

;; *************** function _adc_config *****************
;; Defined at:
;;		line 26 in file "G:\PIC ass\AnalogToDigitalConverter\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text182
	file	"G:\PIC ass\AnalogToDigitalConverter\adc.c"
	line	26
	global	__size_of_adc_config
	__size_of_adc_config	equ	__end_of_adc_config-_adc_config
	
_adc_config:	
	opt	stack 7
; Regs used in _adc_config: []
	line	28
	
l2005:	
;adc.c: 28: PCFG0 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1272/8)^080h,(1272)&7
	line	29
;adc.c: 29: PCFG1 = 0;
	bcf	(1273/8)^080h,(1273)&7
	line	30
;adc.c: 30: PCFG2 = 0;
	bcf	(1274/8)^080h,(1274)&7
	line	31
;adc.c: 31: PCFG3 = 0;
	bcf	(1275/8)^080h,(1275)&7
	line	34
;adc.c: 34: ADFM = 1;
	bsf	(1279/8)^080h,(1279)&7
	line	38
;adc.c: 38: CHS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(251/8),(251)&7
	line	39
;adc.c: 39: CHS1 = 0;
	bcf	(252/8),(252)&7
	line	40
;adc.c: 40: CHS2 = 0;
	bcf	(253/8),(253)&7
	line	43
;adc.c: 43: ADCS0 = 0;
	bcf	(254/8),(254)&7
	line	44
;adc.c: 44: ADCS1 = 1;
	bsf	(255/8),(255)&7
	line	47
;adc.c: 47: ADCS2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1278/8)^080h,(1278)&7
	line	51
;adc.c: 51: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	52
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_adc_config
	__end_of_adc_config:
;; =============== function _adc_config ends ============

	signat	_adc_config,88
	global	_uart_init
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:

;; *************** function _uart_init *****************
;; Defined at:
;;		line 14 in file "G:\PIC ass\AnalogToDigitalConverter\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text183
	file	"G:\PIC ass\AnalogToDigitalConverter\adc.c"
	line	14
	global	__size_of_uart_init
	__size_of_uart_init	equ	__end_of_uart_init-_uart_init
	
_uart_init:	
	opt	stack 7
; Regs used in _uart_init: [wreg+status,2]
	line	15
	
l1991:	
;adc.c: 15: TRISC6 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1086/8)^080h,(1086)&7
	line	16
;adc.c: 16: TRISC7 = 0;
	bcf	(1087/8)^080h,(1087)&7
	line	17
	
l1993:	
;adc.c: 17: TXSTA = 0x00;
	clrf	(152)^080h	;volatile
	line	18
;adc.c: 18: RCSTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(24)	;volatile
	line	19
	
l1995:	
;adc.c: 19: SPBRG = 31;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	20
	
l1997:	
;adc.c: 20: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7
	line	21
	
l1999:	
;adc.c: 21: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	line	22
	
l2001:	
;adc.c: 22: TXIF = 0;
	bcf	(100/8),(100)&7
	line	23
	
l2003:	
;adc.c: 23: RCIF = 0;
	bcf	(101/8),(101)&7
	line	24
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_uart_init
	__end_of_uart_init:
;; =============== function _uart_init ends ============

	signat	_uart_init,88
	global	_gpio_config
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

;; *************** function _gpio_config *****************
;; Defined at:
;;		line 6 in file "G:\PIC ass\AnalogToDigitalConverter\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text184
	file	"G:\PIC ass\AnalogToDigitalConverter\adc.c"
	line	6
	global	__size_of_gpio_config
	__size_of_gpio_config	equ	__end_of_gpio_config-_gpio_config
	
_gpio_config:	
	opt	stack 7
; Regs used in _gpio_config: [wreg+status,2]
	line	8
	
l1985:	
;adc.c: 8: TRISA = 0xff;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	9
	
l1987:	
;adc.c: 9: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	10
	
l1989:	
;adc.c: 10: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	12
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_gpio_config
	__end_of_gpio_config:
;; =============== function _gpio_config ends ============

	signat	_gpio_config,88
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
