;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart1_UART1_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART1_GetITStatus
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
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 44: ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
; genLabel
;	-----------------------------------------
;	 function UART1_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_UART1_GetITStatus:
	sub	sp, #4
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 56: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
; genCast
; genAssign
	ldw	x, y
; genAnd
	ld	a, xl
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00178$
00177$:
	sll	(0x01, sp)
	dec	a
	jrne	00177$
00178$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 58: itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
; genRightShiftLiteral
	ld	a, xl
	swap	a
	and	a, #0x0f
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 60: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00180$
00179$:
	sll	(0x02, sp)
	dec	a
	jrne	00179$
00180$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 64: if (UART1_IT == UART1_IT_PE)
; genCast
; genAssign
	ldw	(0x03, sp), y
; genCmpEQorNE
	ldw	x, (0x03, sp)
	cpw	x, #0x0100
	jrne	00182$
	jp	00183$
00182$:
	jp	00117$
00183$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 67: enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
; genPointerGet
	ld	a, 0x5234
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 70: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5230
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00184$
	jp	00102$
00184$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00185$
	jp	00102$
00185$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 73: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00118$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 78: pendingbitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00118$
; genLabel
00117$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 82: else if (UART1_IT == UART1_IT_LBDF)
; genCmpEQorNE
	ldw	x, (0x03, sp)
	cpw	x, #0x0346
	jrne	00187$
	jp	00188$
00187$:
	jp	00114$
00188$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 85: enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 87: if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5237
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00189$
	jp	00106$
00189$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00190$
	jp	00106$
00190$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 90: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00118$
; genLabel
00106$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 95: pendingbitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00118$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 101: enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
; genPointerGet
	ld	a, 0x5235
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 103: if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5230
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00191$
	jp	00110$
00191$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00192$
	jp	00110$
00192$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 106: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00118$
; genLabel
00110$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 111: pendingbitstatus = RESET;
; genAssign
	clr	a
; genLabel
00118$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 116: return  pendingbitstatus;
; genReturn
; genLabel
00119$:
;	../SPLSPL/src/stm8s_uart1_UART1_GetITStatus.c: 117: }
; genEndFunction
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
