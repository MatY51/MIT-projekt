;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _UART3_Init
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
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 43: void UART3_Init(uint32_t BaudRate, UART3_WordLength_TypeDef WordLength, 
; genLabel
;	-----------------------------------------
;	 function UART3_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 16 bytes.
_UART3_Init:
	sub	sp, #16
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 58: UART3->CR1 &= (uint8_t)(~UART3_CR1_M);     
; genPointerGet
	ld	a, 0x5244
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5244, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 60: UART3->CR1 |= (uint8_t)WordLength; 
; genPointerGet
	ld	a, 0x5244
; genOr
	or	a, (0x17, sp)
; genPointerSet
	ld	0x5244, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 63: UART3->CR3 &= (uint8_t)(~UART3_CR3_STOP);  
; genPointerGet
	ld	a, 0x5246
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5246, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 65: UART3->CR3 |= (uint8_t)StopBits;  
; genPointerGet
	ld	a, 0x5246
; genOr
	or	a, (0x18, sp)
; genPointerSet
	ld	0x5246, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 68: UART3->CR1 &= (uint8_t)(~(UART3_CR1_PCEN | UART3_CR1_PS));  
; genPointerGet
	ld	a, 0x5244
; genAnd
	and	a, #0xf9
; genPointerSet
	ld	0x5244, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 70: UART3->CR1 |= (uint8_t)Parity;     
; genPointerGet
	ld	a, 0x5244
; genOr
	or	a, (0x19, sp)
; genPointerSet
	ld	0x5244, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 73: UART3->BRR1 &= (uint8_t)(~UART3_BRR1_DIVM);  
; genPointerGet
; Dummy read
	ld	a, 0x5242
; genPointerSet
	mov	0x5242+0, #0x00
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 75: UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVM);  
; genPointerGet
	ld	a, 0x5243
; genAnd
	and	a, #0x0f
; genPointerSet
	ld	0x5243, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 77: UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVF);  
; genPointerGet
	ld	a, 0x5243
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5243, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 80: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
; genCall
	call	_CLK_GetClockFreq
	ldw	(0x0f, sp), x
; genLeftShift
	ldw	x, (0x13, sp)
	ldw	(0x09, sp), x
	ldw	x, (0x15, sp)
	ld	a, #0x04
00123$:
	sllw	x
	rlc	(0x0a, sp)
	rlc	(0x09, sp)
	dec	a
	jrne	00123$
00124$:
	ldw	(0x0b, sp), x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
; genIPush
	ldw	x, (0x13, sp)
	pushw	x
	pushw	y
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 81: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
; genCall
	call	_CLK_GetClockFreq
; genIPush
	pushw	x
	pushw	y
; genIPush
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
	ldw	(0x0f, sp), x
; genIPush
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
; genIPush
	ldw	x, (0x13, sp)
	pushw	x
	pushw	y
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 84: BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
; genIPush
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
; genIPush
	push	#0x64
	clrw	x
	pushw	x
	push	#0x00
; genCall
	call	__mullong
	addw	sp, #8
	ldw	(0x0b, sp), x
	ldw	(0x09, sp), y
; genMinus
	ldw	x, (0x07, sp)
	subw	x, (0x0b, sp)
	ldw	(0x0f, sp), x
	ld	a, (0x06, sp)
	sbc	a, (0x0a, sp)
	ld	(0x0e, sp), a
	ld	a, (0x05, sp)
	sbc	a, (0x09, sp)
	ld	(0x0d, sp), a
; genLeftShift
	ldw	x, (0x0f, sp)
	ldw	y, (0x0d, sp)
	ld	a, #0x04
00125$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00125$
00126$:
; genIPush
	push	#0x64
	push	#0x00
	push	#0x00
	push	#0x00
; genIPush
	pushw	x
	pushw	y
; genCall
	call	__divulong
	addw	sp, #8
	ld	a, xl
; genCast
; genAssign
; genAnd
	and	a, #0x0f
	ld	(0x10, sp), a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 86: BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
; genCast
; genAssign
	ldw	x, (0x03, sp)
; genRightShiftLiteral
	ld	a, #0x10
	div	x, a
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, #0xf0
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 88: UART3->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
; genOr
	or	a, (0x10, sp)
; genPointerSet
	ld	0x5243, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 90: UART3->BRR1 = (uint8_t)BaudRate_Mantissa;           
; genCast
; genAssign
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x5242, a
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 95: UART3->CR2 |= UART3_CR2_TEN;  
; genPointerGet
	ld	a, 0x5245
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 92: if ((uint8_t)(Mode & UART3_MODE_TX_ENABLE))
; genAnd
	push	a
	ld	a, (0x1b, sp)
	bcp	a, #0x04
	pop	a
	jrne	00127$
	jp	00102$
00127$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 95: UART3->CR2 |= UART3_CR2_TEN;  
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5245, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 100: UART3->CR2 &= (uint8_t)(~UART3_CR2_TEN);  
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5245, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 95: UART3->CR2 |= UART3_CR2_TEN;  
; genPointerGet
	ld	a, 0x5245
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 102: if ((uint8_t)(Mode & UART3_MODE_RX_ENABLE))
; genAnd
	push	a
	ld	a, (0x1b, sp)
	bcp	a, #0x08
	pop	a
	jrne	00128$
	jp	00105$
00128$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 105: UART3->CR2 |= UART3_CR2_REN;  
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5245, a
; genGoto
	jp	00107$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 110: UART3->CR2 &= (uint8_t)(~UART3_CR2_REN);  
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5245, a
; genLabel
00107$:
;	../SPLSPL/src/stm8s_uart3_UART3_Init.c: 112: }
; genEndFunction
	ldw	x, (17, sp)
	addw	sp, #26
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
