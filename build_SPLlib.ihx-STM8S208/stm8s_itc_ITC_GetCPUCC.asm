;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_itc_ITC_GetCPUCC
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ITC_GetCPUCC
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
;	../SPLSPL/src/stm8s_itc_ITC_GetCPUCC.c: 36: uint8_t ITC_GetCPUCC(void)
; genLabel
;	-----------------------------------------
;	 function ITC_GetCPUCC
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ITC_GetCPUCC:
;	../SPLSPL/src/stm8s_itc_ITC_GetCPUCC.c: 45: __asm__("push cc");
;	genInline
	push	cc
;	../SPLSPL/src/stm8s_itc_ITC_GetCPUCC.c: 46: __asm__("pop a");
;	genInline
	pop	a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_itc_ITC_GetCPUCC.c: 51: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
