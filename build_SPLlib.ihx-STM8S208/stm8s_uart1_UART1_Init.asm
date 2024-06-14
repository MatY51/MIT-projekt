;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CLK_GetClockFreq
	.globl _UART1_Init
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
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 48: void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
; genLabel
;	-----------------------------------------
;	 function UART1_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 17 bytes.
_UART1_Init:
	sub	sp, #17
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 63: UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5234, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 66: UART1->CR1 |= (uint8_t)WordLength;
; genPointerGet
	ld	a, 0x5234
; genOr
	or	a, (0x18, sp)
; genPointerSet
	ld	0x5234, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 69: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
; genPointerGet
	ld	a, 0x5236
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x5236, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 71: UART1->CR3 |= (uint8_t)StopBits;  
; genPointerGet
	ld	a, 0x5236
; genOr
	or	a, (0x19, sp)
; genPointerSet
	ld	0x5236, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 74: UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, #0xf9
; genPointerSet
	ld	0x5234, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 76: UART1->CR1 |= (uint8_t)Parity;  
; genPointerGet
	ld	a, 0x5234
; genOr
	or	a, (0x1a, sp)
; genPointerSet
	ld	0x5234, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 79: UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
; genPointerGet
; Dummy read
	ld	a, 0x5232
; genPointerSet
	mov	0x5232+0, #0x00
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 81: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
; genPointerGet
	ld	a, 0x5233
; genAnd
	and	a, #0x0f
; genPointerSet
	ld	0x5233, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 83: UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
; genPointerGet
	ld	a, 0x5233
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5233, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 86: BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
; genCall
	call	_CLK_GetClockFreq
	ldw	(0x10, sp), x
; genLeftShift
	ldw	x, (0x14, sp)
	ldw	(0x0a, sp), x
	ldw	x, (0x16, sp)
	ld	a, #0x04
00133$:
	sllw	x
	rlc	(0x0b, sp)
	rlc	(0x0a, sp)
	dec	a
	jrne	00133$
00134$:
	ldw	(0x0c, sp), x
; genIPush
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
; genIPush
	ldw	x, (0x14, sp)
	pushw	x
	pushw	y
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 87: BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
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
	ldw	(0x10, sp), x
; genIPush
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
; genIPush
	ldw	x, (0x14, sp)
	pushw	x
	pushw	y
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 89: UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
; genCall
	call	__divulong
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
; genPointerGet
	ld	a, 0x5233
	ld	(0x09, sp), a
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
	ldw	(0x0c, sp), x
	ldw	(0x0a, sp), y
; genMinus
	ldw	x, (0x07, sp)
	subw	x, (0x0c, sp)
	ldw	(0x10, sp), x
	ld	a, (0x06, sp)
	sbc	a, (0x0b, sp)
	ld	(0x0f, sp), a
	ld	a, (0x05, sp)
	sbc	a, (0x0a, sp)
	ld	(0x0e, sp), a
; genLeftShift
	ldw	x, (0x10, sp)
	ldw	y, (0x0e, sp)
	ld	a, #0x04
00135$:
	sllw	x
	rlcw	y
	dec	a
	jrne	00135$
00136$:
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
; genOr
	or	a, (0x09, sp)
; genPointerSet
	ld	0x5233, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 91: UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
; genPointerGet
	ld	a, 0x5233
	ld	(0x11, sp), a
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
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	0x5233, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 93: UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
; genPointerGet
	ld	a, 0x5232
	ld	(0x11, sp), a
; genCast
; genAssign
	ld	a, (0x04, sp)
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	0x5232, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 96: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
; genPointerGet
	ld	a, 0x5235
; genAnd
	and	a, #0xf3
; genPointerSet
	ld	0x5235, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 98: UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
; genPointerGet
	ld	a, 0x5236
; genAnd
	and	a, #0xf8
; genPointerSet
	ld	0x5236, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 100: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
; genPointerGet
	ld	a, 0x5236
	ld	(0x11, sp), a
; genAnd
	ld	a, (0x1b, sp)
	and	a, #0x07
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	0x5236, a
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 96: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
; genPointerGet
	ld	a, 0x5235
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 103: if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
; genAnd
	push	a
	ld	a, (0x1d, sp)
	bcp	a, #0x04
	pop	a
	jrne	00137$
	jp	00102$
00137$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 106: UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
; genOr
	or	a, #0x08
; genPointerSet
	ld	0x5235, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 111: UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5235, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 96: UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
; genPointerGet
	ld	a, 0x5235
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 113: if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
; genAnd
	push	a
	ld	a, (0x1d, sp)
	bcp	a, #0x08
	pop	a
	jrne	00138$
	jp	00105$
00138$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 116: UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x5235, a
; genGoto
	jp	00106$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 121: UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x5235, a
; genLabel
00106$:
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 69: UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
; genPointerGet
	ld	a, 0x5236
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 125: if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
; genAnd
	tnz	(0x1b, sp)
	jrmi	00139$
	jp	00108$
00139$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 128: UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x5236, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 132: UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
; genAnd
	push	a
	ld	a, (0x1c, sp)
	and	a, #0x08
	ld	(0x12, sp), a
	pop	a
; genOr
	or	a, (0x11, sp)
; genPointerSet
	ld	0x5236, a
; genLabel
00110$:
;	../SPLSPL/src/stm8s_uart1_UART1_Init.c: 134: }
; genEndFunction
	ldw	x, (18, sp)
	addw	sp, #28
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
