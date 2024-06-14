;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_iwdg_IWDG_Enable
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _IWDG_Enable
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
;	../SPLSPL/src/stm8s_iwdg_IWDG_Enable.c: 36: void IWDG_Enable(void)
; genLabel
;	-----------------------------------------
;	 function IWDG_Enable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_IWDG_Enable:
;	../SPLSPL/src/stm8s_iwdg_IWDG_Enable.c: 38: IWDG->KR = IWDG_KEY_ENABLE;
; genPointerSet
	mov	0x50e0+0, #0xcc
; genLabel
00101$:
;	../SPLSPL/src/stm8s_iwdg_IWDG_Enable.c: 39: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
