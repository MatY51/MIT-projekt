;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_awu_AWU_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_GetFlagStatus
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
;	../SPLSPL/src/stm8s_awu_AWU_GetFlagStatus.c: 37: FlagStatus AWU_GetFlagStatus(void)
; genLabel
;	-----------------------------------------
;	 function AWU_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_AWU_GetFlagStatus:
;	../SPLSPL/src/stm8s_awu_AWU_GetFlagStatus.c: 39: return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
; genPointerGet
	ld	a, 0x50f0
; genAnd
	and	a, #0x20
; genNot
	sub	a, #0x01
	clr	a
	rlc	a
; genNot
	xor	a, #0x01
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_awu_AWU_GetFlagStatus.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
