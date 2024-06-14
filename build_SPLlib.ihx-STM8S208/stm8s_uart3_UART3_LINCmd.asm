;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_LINCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_LINCmd
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
;	../SPLSPL/src/stm8s_uart3_UART3_LINCmd.c: 37: void UART3_LINCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART3_LINCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART3_LINCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart3_UART3_LINCmd.c: 45: UART3->CR3 |= UART3_CR3_LINEN;
; genPointerGet
	ld	a, 0x5246
;	../SPLSPL/src/stm8s_uart3_UART3_LINCmd.c: 42: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINCmd.c: 45: UART3->CR3 |= UART3_CR3_LINEN;
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5246, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINCmd.c: 50: UART3->CR3 &= ((uint8_t)~UART3_CR3_LINEN);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5246, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_uart3_UART3_LINCmd.c: 52: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
