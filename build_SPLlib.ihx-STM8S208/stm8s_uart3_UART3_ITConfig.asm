;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_ITConfig
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
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 46: void UART3_ITConfig(UART3_IT_TypeDef UART3_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function UART3_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_UART3_ITConfig:
	sub	sp, #5
; genReceive
	exgw	x, y
; genReceive
	ld	(0x05, sp), a
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 55: uartreg = (uint8_t)((uint16_t)UART3_IT >> 0x08);
; genCast
; genAssign
	ldw	x, y
; genGetByte
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 58: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
; genCast
; genAssign
	ld	a, yl
; genAnd
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x05, sp), a
	pop	a
	tnz	a
	jreq	00174$
00173$:
	sll	(0x04, sp)
	dec	a
	jrne	00173$
00174$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 63: if (uartreg == 0x01)
; genCmpEQorNE
	ld	a, xh
	dec	a
	jrne	00176$
	ld	a, #0x01
	ld	(0x01, sp), a
	jp	00177$
00176$:
	clr	(0x01, sp)
00177$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 67: else if (uartreg == 0x02)
; genCmpEQorNE
	ld	a, xh
	cp	a, #0x02
	jrne	00179$
	ld	a, #0x01
	ld	(0x02, sp), a
	jp	00180$
00179$:
	clr	(0x02, sp)
00180$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 71: else if (uartreg == 0x03)
; genCmpEQorNE
	ld	a, xh
	cp	a, #0x03
	jrne	00182$
	ld	a, #0x01
	ld	(0x03, sp), a
	jp	00183$
00182$:
	clr	(0x03, sp)
00183$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 60: if (NewState != DISABLE)
; genIfx
	tnz	(0x05, sp)
	jrne	00184$
	jp	00120$
00184$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 63: if (uartreg == 0x01)
; genIfx
	tnz	(0x01, sp)
	jrne	00185$
	jp	00108$
00185$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 65: UART3->CR1 |= itpos;
; genPointerGet
	ld	a, 0x5244
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5244, a
; genGoto
	jp	00122$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 67: else if (uartreg == 0x02)
; genIfx
	tnz	(0x02, sp)
	jrne	00186$
	jp	00105$
00186$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 69: UART3->CR2 |= itpos;
; genPointerGet
	ld	a, 0x5245
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5245, a
; genGoto
	jp	00122$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 71: else if (uartreg == 0x03)
; genIfx
	tnz	(0x03, sp)
	jrne	00187$
	jp	00102$
00187$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 73: UART3->CR4 |= itpos;
; genPointerGet
	ld	a, 0x5247
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5247, a
; genGoto
	jp	00122$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 77: UART3->CR6 |= itpos;
; genPointerGet
	ld	a, 0x5249
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5249, a
; genGoto
	jp	00122$
; genLabel
00120$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 85: UART3->CR1 &= (uint8_t)(~itpos);
; genCpl
	cpl	(0x04, sp)
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 83: if (uartreg == 0x01)
; genIfx
	tnz	(0x01, sp)
	jrne	00188$
	jp	00117$
00188$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 85: UART3->CR1 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5244
	ld	(0x03, sp), a
; genAnd
	ld	a, (0x03, sp)
	and	a, (0x04, sp)
; genPointerSet
	ld	0x5244, a
; genGoto
	jp	00122$
; genLabel
00117$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 87: else if (uartreg == 0x02)
; genIfx
	tnz	(0x02, sp)
	jrne	00189$
	jp	00114$
00189$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 89: UART3->CR2 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5245
; genAnd
	and	a, (0x04, sp)
; genPointerSet
	ld	0x5245, a
; genGoto
	jp	00122$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 91: else if (uartreg == 0x03)
; genIfx
	tnz	(0x03, sp)
	jrne	00190$
	jp	00111$
00190$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 93: UART3->CR4 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5247
; genAnd
	and	a, (0x04, sp)
; genPointerSet
	ld	0x5247, a
; genGoto
	jp	00122$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 97: UART3->CR6 &= (uint8_t)(~itpos);
; genPointerGet
	ld	a, 0x5249
; genAnd
	and	a, (0x04, sp)
; genPointerSet
	ld	0x5249, a
; genLabel
00122$:
;	../SPLSPL/src/stm8s_uart3_UART3_ITConfig.c: 100: }
; genEndFunction
	addw	sp, #5
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
