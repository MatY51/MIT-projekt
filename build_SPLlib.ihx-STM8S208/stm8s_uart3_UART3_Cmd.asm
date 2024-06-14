;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_Cmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_Cmd
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
;	../SPLSPL/src/stm8s_uart3_UART3_Cmd.c: 37: void UART3_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART3_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART3_Cmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart3_UART3_Cmd.c: 42: UART3->CR1 &= (uint8_t)(~UART3_CR1_UARTD); 
; genPointerGet
	ld	a, 0x5244
;	../SPLSPL/src/stm8s_uart3_UART3_Cmd.c: 39: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_uart3_UART3_Cmd.c: 42: UART3->CR1 &= (uint8_t)(~UART3_CR1_UARTD); 
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5244, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_Cmd.c: 47: UART3->CR1 |= UART3_CR1_UARTD;  
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5244, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_uart3_UART3_Cmd.c: 49: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
