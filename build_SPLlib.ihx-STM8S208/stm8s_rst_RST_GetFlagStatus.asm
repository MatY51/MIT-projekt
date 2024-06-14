;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_rst_RST_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RST_GetFlagStatus
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
;	../SPLSPL/src/stm8s_rst_RST_GetFlagStatus.c: 37: FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
; genLabel
;	-----------------------------------------
;	 function RST_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_RST_GetFlagStatus:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_rst_RST_GetFlagStatus.c: 43: return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
; genPointerGet
	ld	a, 0x50b3
; genAnd
	and	a, (0x01, sp)
; genNot
	sub	a, #0x01
	clr	a
	rlc	a
; genNot
	xor	a, #0x01
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_rst_RST_GetFlagStatus.c: 44: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
