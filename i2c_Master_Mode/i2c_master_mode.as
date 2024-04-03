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
# 3 "G:\example\i2c_Master_Mode\i2c_master.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "G:\example\i2c_Master_Mode\i2c_master.c"
	dw 0x1f7a ;#
	FNCALL	_main,_gpio_config
	FNCALL	_main,_i2c_init
	FNCALL	_main,_i2c_start
	FNCALL	_main,_i2c_stop
	FNCALL	_i2c_start,_i2c_wait
	FNROOT	_main
	global	_SSPBUF
psect	text102,local,class=CODE,delta=2
global __ptext102
__ptext102:
_SSPBUF	set	19
	global	_SSPEN
_SSPEN	set	165
	global	_SSPM0
_SSPM0	set	160
	global	_SSPM1
_SSPM1	set	161
	global	_SSPM2
_SSPM2	set	162
	global	_SSPM3
_SSPM3	set	163
	global	_SSPADD
_SSPADD	set	147
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_PEN
_PEN	set	1162
	global	_SEN
_SEN	set	1160
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	file	"i2c_master_mode.as"
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
	global	?_i2c_wait
?_i2c_wait:	; 0 bytes @ 0x0
	global	??_i2c_wait
??_i2c_wait:	; 0 bytes @ 0x0
	global	?_i2c_init
?_i2c_init:	; 0 bytes @ 0x0
	global	??_i2c_init
??_i2c_init:	; 0 bytes @ 0x0
	global	?_gpio_config
?_gpio_config:	; 0 bytes @ 0x0
	global	??_gpio_config
??_gpio_config:	; 0 bytes @ 0x0
	global	?_i2c_start
?_i2c_start:	; 0 bytes @ 0x0
	global	??_i2c_start
??_i2c_start:	; 0 bytes @ 0x0
	global	?_i2c_stop
?_i2c_stop:	; 0 bytes @ 0x0
	global	??_i2c_stop
??_i2c_stop:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 7     7      0       0
;;                                              0 COMMON     3     3      0
;;                        _gpio_config
;;                           _i2c_init
;;                          _i2c_start
;;                           _i2c_stop
;; ---------------------------------------------------------------------------------
;; (1) _i2c_start                                            0     0      0       0
;;                           _i2c_wait
;; ---------------------------------------------------------------------------------
;; (1) _i2c_stop                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _gpio_config                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _i2c_init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _i2c_wait                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _gpio_config
;;   _i2c_init
;;   _i2c_start
;;     _i2c_wait
;;   _i2c_stop
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
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
;;		line 42 in file "G:\example\i2c_Master_Mode\i2c_master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  val2            2    0        short 
;;  val1            2    0        short 
;; Return value:  Size  Location     Type
;;                  2  704[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_gpio_config
;;		_i2c_init
;;		_i2c_start
;;		_i2c_stop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\example\i2c_Master_Mode\i2c_master.c"
	line	42
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	43
	
l1861:	
;i2c_master.c: 43: gpio_config();
	fcall	_gpio_config
	line	44
	
l1863:	
;i2c_master.c: 44: i2c_init();
	fcall	_i2c_init
	goto	l1865
	line	46
;i2c_master.c: 45: short int val1,val2;
;i2c_master.c: 46: while(1)
	
l705:	
	line	48
	
l1865:	
;i2c_master.c: 47: {
;i2c_master.c: 48: i2c_start();
	fcall	_i2c_start
	line	49
;i2c_master.c: 49: i2c_stop();
	fcall	_i2c_stop
	line	50
	
l1867:	
;i2c_master.c: 50: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2167:
	decfsz	((??_main+0)+0),f
	goto	u2167
	decfsz	((??_main+0)+0+1),f
	goto	u2167
	decfsz	((??_main+0)+0+2),f
	goto	u2167
opt asmopt_on

	goto	l1865
	line	51
	
l706:	
	line	46
	goto	l1865
	
l707:	
	line	52
	
l708:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_i2c_start
psect	text103,local,class=CODE,delta=2
global __ptext103
__ptext103:

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 29 in file "G:\example\i2c_Master_Mode\i2c_master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_i2c_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text103
	file	"G:\example\i2c_Master_Mode\i2c_master.c"
	line	29
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 6
; Regs used in _i2c_start: [wreg+status,2+status,0+pclath+cstack]
	line	31
	
l1855:	
;i2c_master.c: 31: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	32
	
l1857:	
;i2c_master.c: 32: i2c_wait();
	fcall	_i2c_wait
	line	34
	
l1859:	
;i2c_master.c: 34: SSPBUF = 0x42;
	movlw	(042h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	35
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,88
	global	_i2c_stop
psect	text104,local,class=CODE,delta=2
global __ptext104
__ptext104:

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 37 in file "G:\example\i2c_Master_Mode\i2c_master.c"
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
psect	text104
	file	"G:\example\i2c_Master_Mode\i2c_master.c"
	line	37
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
	opt	stack 7
; Regs used in _i2c_stop: []
	line	39
	
l1087:	
;i2c_master.c: 39: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	40
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
;; =============== function _i2c_stop ends ============

	signat	_i2c_stop,88
	global	_gpio_config
psect	text105,local,class=CODE,delta=2
global __ptext105
__ptext105:

;; *************** function _gpio_config *****************
;; Defined at:
;;		line 23 in file "G:\example\i2c_Master_Mode\i2c_master.c"
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
psect	text105
	file	"G:\example\i2c_Master_Mode\i2c_master.c"
	line	23
	global	__size_of_gpio_config
	__size_of_gpio_config	equ	__end_of_gpio_config-_gpio_config
	
_gpio_config:	
	opt	stack 7
; Regs used in _gpio_config: []
	line	25
	
l1085:	
;i2c_master.c: 25: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7
	line	26
;i2c_master.c: 26: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7
	line	27
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_gpio_config
	__end_of_gpio_config:
;; =============== function _gpio_config ends ============

	signat	_gpio_config,88
	global	_i2c_init
psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:

;; *************** function _i2c_init *****************
;; Defined at:
;;		line 11 in file "G:\example\i2c_Master_Mode\i2c_master.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text106
	file	"G:\example\i2c_Master_Mode\i2c_master.c"
	line	11
	global	__size_of_i2c_init
	__size_of_i2c_init	equ	__end_of_i2c_init-_i2c_init
	
_i2c_init:	
	opt	stack 7
; Regs used in _i2c_init: [wreg]
	line	13
	
l1081:	
;i2c_master.c: 13: SSPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(165/8),(165)&7
	line	15
;i2c_master.c: 15: SSPM0 = 0;
	bcf	(160/8),(160)&7
	line	16
;i2c_master.c: 16: SSPM1 = 0;
	bcf	(161/8),(161)&7
	line	17
;i2c_master.c: 17: SSPM2 = 0;
	bcf	(162/8),(162)&7
	line	18
;i2c_master.c: 18: SSPM3 = 1;
	bsf	(163/8),(163)&7
	line	20
	
l1083:	
;i2c_master.c: 20: SSPADD = 0X3F;
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(147)^080h	;volatile
	line	21
	
l693:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_init
	__end_of_i2c_init:
;; =============== function _i2c_init ends ============

	signat	_i2c_init,88
	global	_i2c_wait
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

;; *************** function _i2c_wait *****************
;; Defined at:
;;		line 6 in file "G:\example\i2c_Master_Mode\i2c_master.c"
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
;;		_i2c_start
;; This function uses a non-reentrant model
;;
psect	text107
	file	"G:\example\i2c_Master_Mode\i2c_master.c"
	line	6
	global	__size_of_i2c_wait
	__size_of_i2c_wait	equ	__end_of_i2c_wait-_i2c_wait
	
_i2c_wait:	
	opt	stack 6
; Regs used in _i2c_wait: []
	line	8
	
l1077:	
;i2c_master.c: 8: while(SSPSTAT & 0x04 || SSPSTAT & 0x01);
	goto	l687
	
l688:	
	
l687:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(148)^080h,(2)&7
	goto	u11
	goto	u10
u11:
	goto	l687
u10:
	
l1079:	
	btfsc	(148)^080h,(0)&7
	goto	u21
	goto	u20
u21:
	goto	l687
u20:
	goto	l690
	
l689:	
	line	9
	
l690:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_wait
	__end_of_i2c_wait:
;; =============== function _i2c_wait ends ============

	signat	_i2c_wait,88
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
