;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_SetAddress
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_SetAddress
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
;	../SPLSPL/src/stm8s_uart1_UART1_SetAddress.c: 36: void UART1_SetAddress(uint8_t UART1_Address)
; genLabel
;	-----------------------------------------
;	 function UART1_SetAddress
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_UART1_SetAddress:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_uart1_UART1_SetAddress.c: 42: UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5237, a
;	../SPLSPL/src/stm8s_uart1_UART1_SetAddress.c: 44: UART1->CR4 |= UART1_Address;
; genPointerGet
	ld	a, 0x5237
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5237, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_uart1_UART1_SetAddress.c: 45: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
