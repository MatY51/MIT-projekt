;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_SendData9
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_SendData9
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
;	../SPLSPL/src/stm8s_uart3_UART3_SendData9.c: 36: void UART3_SendData9(uint16_t Data)
; genLabel
;	-----------------------------------------
;	 function UART3_SendData9
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_UART3_SendData9:
	push	a
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_uart3_UART3_SendData9.c: 39: UART3->CR1 &= ((uint8_t)~UART3_CR1_T8);                  
; genPointerGet
	ld	a, 0x5244
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5244, a
;	../SPLSPL/src/stm8s_uart3_UART3_SendData9.c: 42: UART3->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART3_CR1_T8); 
; genPointerGet
	ld	a, 0x5244
	ld	(0x01, sp), a
; genRightShiftLiteral
	ldw	x, y
	srlw	x
	srlw	x
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, #0x40
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5244, a
;	../SPLSPL/src/stm8s_uart3_UART3_SendData9.c: 45: UART3->DR   = (uint8_t)(Data);                    
; genCast
; genAssign
	ld	a, yl
; genPointerSet
	ld	0x5241, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_uart3_UART3_SendData9.c: 46: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
