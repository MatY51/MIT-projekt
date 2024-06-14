;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_ClearITPendingBit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_ClearITPendingBit
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
;	../SPLSPL/src/stm8s_uart3_UART3_ClearITPendingBit.c: 58: void UART3_ClearITPendingBit(UART3_IT_TypeDef UART3_IT)
; genLabel
;	-----------------------------------------
;	 function UART3_ClearITPendingBit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART3_ClearITPendingBit:
; genReceive
;	../SPLSPL/src/stm8s_uart3_UART3_ClearITPendingBit.c: 64: if (UART3_IT == UART3_IT_RXNE)
; genCast
; genAssign
; genCmpEQorNE
	cpw	x, #0x0255
	jrne	00124$
	jp	00125$
00124$:
	jp	00105$
00125$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_ClearITPendingBit.c: 66: UART3->SR = (uint8_t)~(UART3_SR_RXNE);
; genPointerSet
	mov	0x5240+0, #0xdf
; genGoto
	jp	00107$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart3_UART3_ClearITPendingBit.c: 69: else if (UART3_IT == UART3_IT_LBDF)
; genCmpEQorNE
	cpw	x, #0x0346
	jrne	00127$
	jp	00128$
00127$:
	jp	00102$
00128$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_ClearITPendingBit.c: 71: UART3->CR4 &= (uint8_t)~(UART3_CR4_LBDF);
; genPointerGet
	ld	a, 0x5247
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5247, a
; genGoto
	jp	00107$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_ClearITPendingBit.c: 76: UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
; genPointerGet
	ld	a, 0x5249
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5249, a
; genLabel
00107$:
;	../SPLSPL/src/stm8s_uart3_UART3_ClearITPendingBit.c: 78: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
