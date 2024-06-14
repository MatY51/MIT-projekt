;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_ReceiveData9
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_ReceiveData9
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
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiveData9.c: 36: uint16_t UART1_ReceiveData9(void)
; genLabel
;	-----------------------------------------
;	 function UART1_ReceiveData9
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_UART1_ReceiveData9:
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiveData9.c: 40: temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
; genPointerGet
	ld	a, 0x5234
; genCast
; genAssign
	clrw	x
; genAnd
	and	a, #0x80
	ld	xl, a
	clr	a
	ld	xh, a
; genLeftShiftLiteral
	sllw	x
	exgw	x, y
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiveData9.c: 41: return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
; genPointerGet
	ld	a, 0x5231
; genCast
; genAssign
	clrw	x
	ld	xl, a
; genOr
; genAnd
	ld	a, yh
	and	a, #0x01
; genReturn
	ld	xh, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_uart1_UART1_ReceiveData9.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
