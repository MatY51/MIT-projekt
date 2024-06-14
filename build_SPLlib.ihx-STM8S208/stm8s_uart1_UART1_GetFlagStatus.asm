;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_GetFlagStatus
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
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 37: FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
; genLabel
;	-----------------------------------------
;	 function UART1_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_UART1_GetFlagStatus:
	sub	sp, #3
; genReceive
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 46: if (UART1_FLAG == UART1_FLAG_LBDF)
; genCast
; genAssign
	ldw	(0x01, sp), x
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 48: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
; genCast
; genAssign
	exg	a, xl
	ld	(0x03, sp), a
	exg	a, xl
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 46: if (UART1_FLAG == UART1_FLAG_LBDF)
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0210
	jrne	00154$
	jp	00155$
00154$:
	jp	00114$
00155$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 48: if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00156$
	jp	00102$
00156$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 51: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00115$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 56: status = RESET;
; genAssign
	clr	a
; genGoto
	jp	00115$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 59: else if (UART1_FLAG == UART1_FLAG_SBK)
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0101
	jrne	00158$
	jp	00159$
00158$:
	jp	00111$
00159$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 61: if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5235
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00160$
	jp	00105$
00160$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 64: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00115$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 69: status = RESET;
; genAssign
	clr	a
; genGoto
	jp	00115$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 74: if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5230
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00161$
	jp	00108$
00161$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 77: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00115$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 82: status = RESET;
; genAssign
	clr	a
; genLabel
00115$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 86: return status;
; genReturn
; genLabel
00116$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetFlagStatus.c: 87: }
; genEndFunction
	addw	sp, #3
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
