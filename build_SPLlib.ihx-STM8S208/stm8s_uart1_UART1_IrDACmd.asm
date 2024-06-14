;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_IrDACmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_IrDACmd
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
;	../SPLSPL/src/stm8s_uart1_UART1_IrDACmd.c: 37: void UART1_IrDACmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_IrDACmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART1_IrDACmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart1_UART1_IrDACmd.c: 45: UART1->CR5 |= UART1_CR5_IREN;
; genPointerGet
	ld	a, 0x5238
;	../SPLSPL/src/stm8s_uart1_UART1_IrDACmd.c: 42: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_uart1_UART1_IrDACmd.c: 45: UART1->CR5 |= UART1_CR5_IREN;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5238, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_IrDACmd.c: 50: UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5238, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_uart1_UART1_IrDACmd.c: 52: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
