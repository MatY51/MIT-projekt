;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_GetFlagStatus
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
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 37: FlagStatus UART3_GetFlagStatus(UART3_Flag_TypeDef UART3_FLAG)
; genLabel
;	-----------------------------------------
;	 function UART3_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_UART3_GetFlagStatus:
	sub	sp, #3
; genReceive
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 45: if (UART3_FLAG == UART3_FLAG_LBDF)
; genCast
; genAssign
	ldw	(0x01, sp), x
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 47: if ((UART3->CR4 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
; genCast
; genAssign
	exg	a, xl
	ld	(0x03, sp), a
	exg	a, xl
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 45: if (UART3_FLAG == UART3_FLAG_LBDF)
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0210
	jrne	00175$
	jp	00176$
00175$:
	jp	00121$
00176$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 47: if ((UART3->CR4 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5247
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00177$
	jp	00102$
00177$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 50: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00122$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 55: status = RESET;
; genAssign
	clr	a
; genGoto
	jp	00122$
; genLabel
00121$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 58: else if (UART3_FLAG == UART3_FLAG_SBK)
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0101
	jrne	00179$
	jp	00180$
00179$:
	jp	00118$
00180$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 60: if ((UART3->CR2 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5245
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00181$
	jp	00105$
00181$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 63: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00122$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 68: status = RESET;
; genAssign
	clr	a
; genGoto
	jp	00122$
; genLabel
00118$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 71: else if ((UART3_FLAG == UART3_FLAG_LHDF) || (UART3_FLAG == UART3_FLAG_LSF))
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0302
	jrne	00183$
	jp	00113$
00183$:
; skipping generated iCode
; genCmpEQorNE
	ldw	x, (0x01, sp)
	cpw	x, #0x0301
	jrne	00186$
	jp	00187$
00186$:
	jp	00114$
00187$:
; skipping generated iCode
; genLabel
00113$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 73: if ((UART3->CR6 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5249
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00188$
	jp	00108$
00188$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 76: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00122$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 81: status = RESET;
; genAssign
	clr	a
; genGoto
	jp	00122$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 86: if ((UART3->SR & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
; genPointerGet
	ld	a, 0x5240
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00189$
	jp	00111$
00189$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 89: status = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00122$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 94: status = RESET;
; genAssign
	clr	a
; genLabel
00122$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 99: return  status;
; genReturn
; genLabel
00123$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetFlagStatus.c: 100: }
; genEndFunction
	addw	sp, #3
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
