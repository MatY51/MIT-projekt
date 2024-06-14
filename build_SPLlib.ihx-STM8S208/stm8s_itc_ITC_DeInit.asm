;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_itc_ITC_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_DeInit
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 36: void ITC_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function ITC_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_DeInit:
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 38: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f70+0, #0xff
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 39: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f71+0, #0xff
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 40: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f72+0, #0xff
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 41: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f73+0, #0xff
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 42: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f74+0, #0xff
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 43: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f75+0, #0xff
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 44: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f76+0, #0xff
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 45: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
; genPointerSet
	mov	0x7f77+0, #0xff
; genLabel
00101$:
;	../SPLSPL/src/stm8s_itc_ITC_DeInit.c: 46: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
