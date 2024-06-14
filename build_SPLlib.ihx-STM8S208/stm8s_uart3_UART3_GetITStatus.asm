;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_GetITStatus
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
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 44: ITStatus UART3_GetITStatus(UART3_IT_TypeDef UART3_IT)
; genLabel
;	-----------------------------------------
;	 function UART3_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_UART3_GetITStatus:
	sub	sp, #4
; genReceive
	exgw	x, y
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 56: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
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
	jreq	00206$
00205$:
	sll	(0x01, sp)
	dec	a
	jrne	00205$
00206$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 58: itmask1 = (uint8_t)((uint8_t)UART3_IT >> (uint8_t)4);
; genRightShiftLiteral
	ld	a, xl
	swap	a
	and	a, #0x0f
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 60: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00208$
00207$:
	sll	(0x02, sp)
	dec	a
	jrne	00207$
00208$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 63: if (UART3_IT == UART3_IT_PE)
; genCast
; genAssign
	ldw	(0x03, sp), y
; genCmpEQorNE
	ldw	x, (0x03, sp)
	cpw	x, #0x0100
	jrne	00210$
	jp	00211$
00210$:
	jp	00124$
00211$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 66: enablestatus = (uint8_t)((uint8_t)UART3->CR1 & itmask2);
; genPointerGet
	ld	a, 0x5244
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 69: if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5240
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00212$
	jp	00102$
00212$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00213$
	jp	00102$
00213$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 72: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00125$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 77: pendingbitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00125$
; genLabel
00124$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 80: else if (UART3_IT == UART3_IT_LBDF)
; genCmpEQorNE
	ldw	x, (0x03, sp)
	cpw	x, #0x0346
	jrne	00215$
	jp	00216$
00215$:
	jp	00121$
00216$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 83: enablestatus = (uint8_t)((uint8_t)UART3->CR4 & itmask2);
; genPointerGet
	ld	a, 0x5247
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 85: if (((UART3->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5247
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00217$
	jp	00106$
00217$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00218$
	jp	00106$
00218$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 88: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00125$
; genLabel
00106$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 93: pendingbitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00125$
; genLabel
00121$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 96: else if (UART3_IT == UART3_IT_LHDF)
; genCmpEQorNE
	ldw	x, (0x03, sp)
	cpw	x, #0x0412
	jrne	00220$
	jp	00221$
00220$:
	jp	00118$
00221$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 99: enablestatus = (uint8_t)((uint8_t)UART3->CR6 & itmask2);
; genPointerGet
	ld	a, 0x5249
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 101: if (((UART3->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5249
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00222$
	jp	00110$
00222$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00223$
	jp	00110$
00223$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 104: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00125$
; genLabel
00110$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 109: pendingbitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00125$
; genLabel
00118$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 115: enablestatus = (uint8_t)((uint8_t)UART3->CR2 & itmask2);
; genPointerGet
	ld	a, 0x5245
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 117: if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
; genPointerGet
	ld	a, 0x5240
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00224$
	jp	00114$
00224$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00225$
	jp	00114$
00225$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 120: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00125$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 125: pendingbitstatus = RESET;
; genAssign
	clr	a
; genLabel
00125$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 129: return  pendingbitstatus;
; genReturn
; genLabel
00126$:
;	../SPLSPL/src/stm8s_uart3_UART3_GetITStatus.c: 130: }
; genEndFunction
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
