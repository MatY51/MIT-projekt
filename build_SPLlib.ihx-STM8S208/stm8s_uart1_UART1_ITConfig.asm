;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_ITConfig
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
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 44: void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART1_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_UART1_ITConfig:
	sub	sp, #3
; genReceive
	exgw	x, y
; genReceive
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 53: uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
; genCast
; genAssign
	ldw	x, y
; genGetByte
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 55: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
; genCast
; genAssign
	ld	a, yl
; genAnd
	and	a, #0x0f
; genLeftShift
	exg	a, xl
	ld	a, #0x01
	exg	a, xl
	tnz	a
	jreq	00154$
00153$:
	exg	a, xl
	sll	a
	exg	a, xl
	dec	a
	jrne	00153$
00154$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 60: if (uartreg == 0x01)
; genCmpEQorNE
	ld	a, xh
	dec	a
	jrne	00156$
	ld	a, #0x01
	ld	(0x01, sp), a
	jp	00157$
00156$:
	clr	(0x01, sp)
00157$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 64: else if (uartreg == 0x02)
; genCmpEQorNE
	ld	a, xh
	cp	a, #0x02
	jrne	00159$
	ld	a, #0x01
	ld	xh, a
	jp	00160$
00159$:
	clr	a
	ld	xh, a
00160$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 57: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00161$
	jp	00114$
00161$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 60: if (uartreg == 0x01)
; genIfx
	tnz	(0x01, sp)
	jrne	00162$
	jp	00105$
00162$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 62: UART1->CR1 |= itpos;
; genPointerGet
	ld	a, 0x5234
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x5234, a
; genGoto
	jp	00116$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 64: else if (uartreg == 0x02)
; genIfx
	ld	a, xh
	tnz	a
	jrne	00163$
	jp	00102$
00163$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 66: UART1->CR2 |= itpos;
; genPointerGet
	ld	a, 0x5235
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x5235, a
; genGoto
	jp	00116$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 70: UART1->CR4 |= itpos;
; genPointerGet
	ld	a, 0x5237
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x5237, a
; genGoto
	jp	00116$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 78: UART1->CR1 &= (uint8_t)(~itpos);
; genCpl
	ld	a, xl
	cpl	a
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 76: if (uartreg == 0x01)
; genIfx
	tnz	(0x01, sp)
	jrne	00164$
	jp	00111$
00164$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 78: UART1->CR1 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5234, a
; genGoto
	jp	00116$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 80: else if (uartreg == 0x02)
; genIfx
	ld	a, xh
	tnz	a
	jrne	00165$
	jp	00108$
00165$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 82: UART1->CR2 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5235
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5235, a
; genGoto
	jp	00116$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 86: UART1->CR4 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5237, a
; genLabel
00116$:
;	../SPLSPL/src/stm8s_uart1_UART1_ITConfig.c: 90: }
; genEndFunction
	addw	sp, #3
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
