;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_ClearITPendingBit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_ClearITPendingBit
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
;	../SPLSPL/src/stm8s_uart1_UART1_ClearITPendingBit.c: 56: void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
; genLabel
;	-----------------------------------------
;	 function UART1_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART1_ClearITPendingBit:
; genReceive
;	../SPLSPL/src/stm8s_uart1_UART1_ClearITPendingBit.c: 61: if (UART1_IT == UART1_IT_RXNE)
; genCast
; genAssign
; genCmpEQorNE
	cpw	x, #0x0255
	jrne	00114$
	jp	00115$
00114$:
	jp	00102$
00115$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart1_UART1_ClearITPendingBit.c: 63: UART1->SR = (uint8_t)~(UART1_SR_RXNE);
; genPointerSet
	mov	0x5230+0, #0xdf
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_ClearITPendingBit.c: 68: UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5237, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_uart1_UART1_ClearITPendingBit.c: 70: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
