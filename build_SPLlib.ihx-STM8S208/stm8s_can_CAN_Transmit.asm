;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_Transmit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_Transmit
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
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 41: CAN_TxStatus_TypeDef CAN_Transmit(uint32_t CAN_Id,
; genLabel
;	-----------------------------------------
;	 function CAN_Transmit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 4 bytes.
_CAN_Transmit:
	sub	sp, #4
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 48: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 62: if ((CAN->TPR & CAN_TPR_TME0) == CAN_TPR_TME0)
; genPointerGet
	ld	a, 0x5423
; genAnd
	and	a, #0x04
; genCmpEQorNE
	cp	a, #0x04
	jrne	00156$
	jp	00157$
00156$:
	jp	00111$
00157$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 64: CAN_TxStatus = CAN_TxStatus_MailBox0Ok;
; genAssign
	clr	(0x02, sp)
; genGoto
	jp	00112$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 66: else if ((CAN->TPR & CAN_TPR_TME1) == CAN_TPR_TME1)
; genPointerGet
	ld	a, 0x5423
; genAnd
	and	a, #0x08
; genCmpEQorNE
	cp	a, #0x08
	jrne	00159$
	jp	00160$
00159$:
	jp	00108$
00160$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 68: CAN_TxStatus = CAN_TxStatus_MailBox1Ok;
; genAssign
	ld	a, #0x01
	ld	(0x02, sp), a
; genGoto
	jp	00112$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 70: else if ((CAN->TPR & CAN_TPR_TME2) == CAN_TPR_TME2)
; genPointerGet
	ld	a, 0x5423
; genAnd
	and	a, #0x10
; genCmpEQorNE
	cp	a, #0x10
	jrne	00162$
	jp	00163$
00162$:
	jp	00105$
00163$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 72: CAN_TxStatus = CAN_TxStatus_MailBox2Ok;
; genAssign
	ld	a, #0x05
	ld	(0x02, sp), a
; genGoto
	jp	00112$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 76: CAN_TxStatus = CAN_TxStatus_NoMailBox;
; genAssign
	ld	a, #0xf4
	ld	(0x02, sp), a
; genLabel
00112$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 78: if (CAN_TxStatus != CAN_TxStatus_NoMailBox)
; genCmpEQorNE
	ld	a, (0x02, sp)
	cp	a, #0xf4
	jrne	00165$
	jp	00117$
00165$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 80: CAN->PSR = (uint8_t)CAN_TxStatus;
; genPointerSet
	ldw	x, #0x5427
	ld	a, (0x02, sp)
	ld	(x), a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 91: CAN->Page.TxMailbox.MIDR1 = (uint8_t)(CAN_Id |CAN_IDE | CAN_RTR);
; genAssign
	ld	a, (0x0c, sp)
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 82: if (CAN_IDE != CAN_Id_Standard)
; genIfx
	tnz	(0x0b, sp)
	jrne	00167$
	jp	00114$
00167$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 84: CAN_Id &= (uint32_t)CAN_EXTID_SIZE;
; genAnd
	ldw	y, (0x09, sp)
	ld	a, (0x08, sp)
	ld	xl, a
	ld	a, (0x07, sp)
	and	a, #0x1f
	ld	xh, a
; genAssign
	ldw	(0x09, sp), y
	ldw	(0x07, sp), x
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 85: CAN->Page.TxMailbox.MIDR4 = (uint8_t)(CAN_Id);
; genCast
; genAssign
	ld	a, (0x0a, sp)
; genPointerSet
	ld	0x542d, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 86: CAN_Id = CAN_Id>>8;
; genRightShiftLiteral
	ldw	y, (0x08, sp)
	ld	a, (0x07, sp)
	ld	xl, a
	clr	a
	ld	xh, a
; genAssign
	ldw	(0x09, sp), y
	ldw	(0x07, sp), x
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 87: CAN->Page.TxMailbox.MIDR3 = (uint8_t)(CAN_Id);
; genCast
; genAssign
	ld	a, (0x0a, sp)
; genPointerSet
	ld	0x542c, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 88: CAN_Id = CAN_Id>>8;
; genRightShiftLiteral
	ldw	y, (0x08, sp)
	ld	a, (0x07, sp)
	ld	xl, a
	clr	a
	ld	xh, a
; genAssign
	ldw	(0x09, sp), y
	ldw	(0x07, sp), x
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 89: CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id);
; genCast
; genAssign
	ld	a, (0x0a, sp)
; genPointerSet
	ld	0x542b, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 90: CAN_Id = CAN_Id>>8;
; genRightShiftLiteral
	ldw	y, (0x08, sp)
	ld	a, (0x07, sp)
	ld	xl, a
	clr	a
	ld	xh, a
; genAssign
	ldw	(0x09, sp), y
	ldw	(0x07, sp), x
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 91: CAN->Page.TxMailbox.MIDR1 = (uint8_t)(CAN_Id |CAN_IDE | CAN_RTR);
; genAssign
	ld	a, (0x0b, sp)
	ld	(0x04, sp), a
; genCast
; genAssign
	ld	a, (0x0a, sp)
; genOr
	or	a, (0x04, sp)
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x542a, a
; genGoto
	jp	00115$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 95: CAN_Id &= (uint16_t)CAN_STDID_SIZE;
; genAnd
	ld	a, (0x0a, sp)
	ld	xl, a
	ld	a, (0x09, sp)
	and	a, #0x07
	ld	xh, a
	clrw	y
; genAssign
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 96: CAN->Page.TxMailbox.MIDR1 = (uint8_t)((CAN_Id>>6) | (CAN_RTR)) ;
; genCast
; genAssign
	ldw	x, (0x09, sp)
; genRightShiftLiteral
	ld	a, #0x40
	div	x, a
; genCast
; genAssign
	ld	a, xl
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x542a, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 97: CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id<<2);
; genCast
; genAssign
	ld	a, (0x0a, sp)
; genCast
; genAssign
; genLeftShiftLiteral
	sll	a
	sll	a
; genPointerSet
	ld	0x542b, a
; genLabel
00115$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 101: CAN->Page.TxMailbox.MDLCR &= (uint8_t)0xF0;
; genPointerGet
	ld	a, 0x5429
; genAnd
	and	a, #0xf0
; genPointerSet
	ld	0x5429, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 103: CAN->Page.TxMailbox.MDLCR |= CAN_DLC;
; genPointerGet
	ld	a, 0x5429
; genOr
	or	a, (0x0d, sp)
; genPointerSet
	ld	0x5429, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 105: CAN->Page.TxMailbox.MDAR1 = CAN_Data[0];
; genAssign
	ldw	y, (0x0e, sp)
; genPointerGet
	ld	a, (y)
; genPointerSet
	ld	0x542e, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 106: CAN->Page.TxMailbox.MDAR2 = CAN_Data[1];
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x1, x)
; genPointerSet
	ld	0x542f, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 107: CAN->Page.TxMailbox.MDAR3 = CAN_Data[2];
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x2, x)
; genPointerSet
	ld	0x5430, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 108: CAN->Page.TxMailbox.MDAR4 = CAN_Data[3];
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x3, x)
; genPointerSet
	ld	0x5431, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 109: CAN->Page.TxMailbox.MDAR5 = CAN_Data[4];
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x4, x)
; genPointerSet
	ld	0x5432, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 110: CAN->Page.TxMailbox.MDAR6 = CAN_Data[5];
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x5, x)
; genPointerSet
	ld	0x5433, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 111: CAN->Page.TxMailbox.MDAR7 = CAN_Data[6];
; genAssign
	ldw	x, y
; genPointerGet
	ld	a, (0x6, x)
; genPointerSet
	ld	0x5434, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 112: CAN->Page.TxMailbox.MDAR8 = CAN_Data[7];
; genAssign
; genPointerGet
	ld	a, (0x7, y)
; genPointerSet
	ld	0x5435, a
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 114: CAN->Page.TxMailbox.MCSR |= CAN_MCSR_TXRQ;
; genPointerGet
	ld	a, 0x5428
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5428, a
; genLabel
00117$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 117: CAN_SelectPage(can_page);
; genSend
	ld	a, (0x01, sp)
; genCall
	call	_CAN_SelectPage
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 118: return (CAN_TxStatus_TypeDef)CAN_TxStatus;
; genReturn
	ld	a, (0x02, sp)
; genLabel
00118$:
;	../SPLSPL/src/stm8s_can_CAN_Transmit.c: 119: }
; genEndFunction
	ldw	x, (5, sp)
	addw	sp, #15
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
