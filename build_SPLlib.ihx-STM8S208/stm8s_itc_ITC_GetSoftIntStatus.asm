;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_itc_ITC_GetSoftIntStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetCPUCC
	.globl _ITC_GetSoftIntStatus
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
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftIntStatus.c: 36: uint8_t ITC_GetSoftIntStatus(void)
; genLabel
;	-----------------------------------------
;	 function ITC_GetSoftIntStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_GetSoftIntStatus:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftIntStatus.c: 38: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
; genCall
	call	_ITC_GetCPUCC
; genAnd
	and	a, #0x28
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_itc_ITC_GetSoftIntStatus.c: 39: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
