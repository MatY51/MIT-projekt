;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_GetFlagStatus
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
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 36: FlagStatus CAN_GetFlagStatus(CAN_FLAG_TypeDef CAN_Flag)
; genLabel
;	-----------------------------------------
;	 function CAN_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_CAN_GetFlagStatus:
	sub	sp, #5
; genReceive
	ldw	(0x04, sp), x
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 49: if ((CAN->RFR & (uint16_t)CAN_Flag )!= RESET)
; genCast
; genAssign
	ldw	y, (0x04, sp)
	ldw	(0x01, sp), y
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 44: if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
; genAnd
	ld	a, (0x04, sp)
	bcp	a, #0x07
	jrne	00173$
	jp	00120$
00173$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 46: if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
; genAnd
	ld	a, (0x05, sp)
	and	a, #0x0b
	ld	xl, a
	ld	a, (0x04, sp)
	and	a, #0x02
	ld	xh, a
; genIfx
	tnzw	x
	jrne	00174$
	jp	00114$
00174$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 49: if ((CAN->RFR & (uint16_t)CAN_Flag )!= RESET)
; genPointerGet
	ld	a, 0x5424
; genCast
; genAssign
	clrw	x
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	clr	a
	and	a, (0x01, sp)
	ld	xh, a
; genIfx
	tnzw	x
	jrne	00175$
	jp	00102$
00175$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 52: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00121$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 57: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00121$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 61: else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
; genAnd
	ld	a, (0x05, sp)
	and	a, #0x03
	ld	xl, a
	ld	a, (0x04, sp)
	and	a, #0x04
	ld	xh, a
; genIfx
	tnzw	x
	jrne	00176$
	jp	00111$
00176$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 64: if ((CAN->TSR & (uint16_t)CAN_Flag )!= RESET)
; genPointerGet
	ld	a, 0x5422
; genCast
; genAssign
	clrw	x
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	clr	a
	and	a, (0x01, sp)
	ld	xh, a
; genIfx
	tnzw	x
	jrne	00177$
	jp	00105$
00177$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 67: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00121$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 72: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00121$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 78: if ((CAN->MSR & (uint16_t)CAN_Flag )!= RESET)
; genPointerGet
	ld	a, 0x5421
; genCast
; genAssign
	clrw	x
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
	clr	a
	and	a, (0x01, sp)
	ld	xh, a
; genIfx
	tnzw	x
	jrne	00178$
	jp	00108$
00178$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 81: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00121$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 86: bitstatus = RESET;
; genAssign
	clr	a
; genGoto
	jp	00121$
; genLabel
00120$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 93: can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 95: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 96: if ((CAN->Page.Config.ESR & (uint16_t)CAN_Flag) != RESET)
; genPointerGet
	ld	a, 0x5428
; genCast
; genAssign
	clrw	x
; genAnd
	and	a, (0x02, sp)
	ld	xh, a
	clr	a
	and	a, (0x01, sp)
	ld	xl, a
; genIfx
	tnzw	x
	jrne	00179$
	jp	00117$
00179$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 99: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00118$
; genLabel
00117$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 104: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00118$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 107: CAN_SelectPage(can_page);
; genSend
	push	a
	ld	a, (0x04, sp)
; genCall
	call	_CAN_SelectPage
	pop	a
; genLabel
00121$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 112: return  (FlagStatus)bitstatus;
; genReturn
; genLabel
00122$:
;	../SPLSPL/src/stm8s_can_CAN_GetFlagStatus.c: 113: }
; genEndFunction
	addw	sp, #5
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
