;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_awu_AWU_IdleModeEnable
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_IdleModeEnable
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
;	../SPLSPL/src/stm8s_awu_AWU_IdleModeEnable.c: 36: void AWU_IdleModeEnable(void)
; genLabel
;	-----------------------------------------
;	 function AWU_IdleModeEnable
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_AWU_IdleModeEnable:
;	../SPLSPL/src/stm8s_awu_AWU_IdleModeEnable.c: 39: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
; genPointerGet
	ld	a, 0x50f0
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x50f0, a
;	../SPLSPL/src/stm8s_awu_AWU_IdleModeEnable.c: 42: AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
; genPointerSet
	mov	0x50f2+0, #0xf0
; genLabel
00101$:
;	../SPLSPL/src/stm8s_awu_AWU_IdleModeEnable.c: 43: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
