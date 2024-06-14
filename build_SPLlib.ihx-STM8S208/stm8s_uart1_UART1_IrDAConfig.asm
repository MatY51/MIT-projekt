;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_IrDAConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_IrDAConfig
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
;	../SPLSPL/src/stm8s_uart1_UART1_IrDAConfig.c: 37: void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
; genLabel
;	-----------------------------------------
;	 function UART1_IrDAConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART1_IrDAConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart1_UART1_IrDAConfig.c: 43: UART1->CR5 |= UART1_CR5_IRLP;
; genPointerGet
	ld	a, 0x5238
;	../SPLSPL/src/stm8s_uart1_UART1_IrDAConfig.c: 41: if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_uart1_UART1_IrDAConfig.c: 43: UART1->CR5 |= UART1_CR5_IRLP;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5238, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_IrDAConfig.c: 47: UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5238, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_uart1_UART1_IrDAConfig.c: 49: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
