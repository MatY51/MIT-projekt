;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_TransmitStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_TransmitStatus
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
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 36: CAN_TxStatus_TypeDef CAN_TransmitStatus(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
; genLabel
;	-----------------------------------------
;	 function CAN_TransmitStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_CAN_TransmitStatus:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 40: uint8_t tmpstate=0;
; genAssign
	clrw	x
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 45: switch (CAN_TransmitMailbox)
; genCmpEQorNE
	cp	a, #0x00
	jrne	00171$
	jp	00101$
00171$:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x01
	jrne	00174$
	jp	00102$
00174$:
; skipping generated iCode
; genCmpEQorNE
	cp	a, #0x05
	jrne	00177$
	jp	00103$
00177$:
; skipping generated iCode
; genGoto
	jp	00105$
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 47: case (CAN_TransmitMailBox_0): tmpstate = (uint8_t)((CAN->TSR & (uint8_t)(CAN_TSR_RQCP0|CAN_TSR_TXOK0)));
; genLabel
00101$:
; genPointerGet
	ld	a, 0x5422
; genAnd
	and	a, #0x11
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 48: tmpstate |= (uint8_t)((CAN->TPR & CAN_TPR_TME0));
; genPointerGet
	ld	a, 0x5423
; genAnd
	and	a, #0x04
; genOr
	or	a, (0x01, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 49: break;
; genGoto
	jp	00105$
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 50: case (CAN_TransmitMailBox_1): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP1|CAN_TSR_TXOK1))>>1);
; genLabel
00102$:
; genPointerGet
	ld	a, 0x5422
; genAnd
	and	a, #0x22
; genRightShiftLiteral
	srl	a
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 51: tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME1) >> 1);
; genPointerGet
	ld	a, 0x5423
; genAnd
	and	a, #0x08
; genRightShiftLiteral
	srl	a
; genOr
	or	a, (0x01, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 52: break;
; genGoto
	jp	00105$
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 53: case (CAN_TransmitMailBox_2): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP2|CAN_TSR_TXOK2))>>2);
; genLabel
00103$:
; genPointerGet
	ld	a, 0x5422
; genAnd
	and	a, #0x44
; genRightShiftLiteral
	srl	a
	srl	a
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 54: tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME2) >> 2);
; genPointerGet
	ld	a, 0x5423
; genAnd
	and	a, #0x10
; genRightShiftLiteral
	srl	a
	srl	a
; genOr
	or	a, (0x01, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 59: }
; genLabel
00105$:
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 61: switch (tmpstate)
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x00
	jrne	00180$
	jp	00106$
00180$:
; skipping generated iCode
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x04
	jrne	00183$
	jp	00109$
00183$:
; skipping generated iCode
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x05
	jrne	00186$
	jp	00107$
00186$:
; skipping generated iCode
; genCmpEQorNE
	ld	a, xl
	cp	a, #0x15
	jrne	00189$
	jp	00108$
00189$:
; skipping generated iCode
; genGoto
	jp	00110$
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 64: case (0x00): tstate = CAN_TxStatus_Pending;
; genLabel
00106$:
; genAssign
	ld	a, #0xf2
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 65: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 67: case (0x05): tstate = CAN_TxStatus_Failed;
; genLabel
00107$:
; genAssign
	ld	a, #0xf0
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 68: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 70: case (0x15): tstate = CAN_TxStatus_Ok;
; genLabel
00108$:
; genAssign
	ld	a, #0xf1
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 71: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 73: case (0x04): tstate = CAN_TxStatus_MailBoxEmpty;
; genLabel
00109$:
; genAssign
	ld	a, #0xf5
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 74: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 75: default:
; genLabel
00110$:
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 76: tstate = CAN_TxStatus_Failed;
; genAssign
	ld	a, #0xf0
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 78: }
; genLabel
00111$:
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 80: return (CAN_TxStatus_TypeDef)tstate;
; genReturn
; genLabel
00112$:
;	../SPLSPL/src/stm8s_can_CAN_TransmitStatus.c: 81: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
