;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_ST7CompatibilityCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_ST7CompatibilityCmd
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
;	../SPLSPL/src/stm8s_can_CAN_ST7CompatibilityCmd.c: 38: void CAN_ST7CompatibilityCmd(CAN_ST7Compatibility_TypeDef CAN_ST7Compatibility)
; genLabel
;	-----------------------------------------
;	 function CAN_ST7CompatibilityCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_CAN_ST7CompatibilityCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_ST7CompatibilityCmd.c: 43: CAN->DGR &= (uint8_t)(~CAN_DGR_TXM2E);
; genPointerGet
	ld	a, 0x5426
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5426, a
;	../SPLSPL/src/stm8s_can_CAN_ST7CompatibilityCmd.c: 46: CAN->DGR |= (uint8_t)CAN_ST7Compatibility;
; genPointerGet
	ld	a, 0x5426
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5426, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_ST7CompatibilityCmd.c: 47: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
