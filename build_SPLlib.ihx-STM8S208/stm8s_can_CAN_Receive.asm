;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_Receive
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_FIFORelease
	.globl _CAN_Receive
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
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 40: void CAN_Receive(void)
; genLabel
;	-----------------------------------------
;	 function CAN_Receive
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
_CAN_Receive:
	sub	sp, #20
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 42: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	xl, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 46: CAN->PSR = CAN_Page_RxFifo;
; genPointerSet
	mov	0x5427+0, #0x07
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 49: _IDE = (uint8_t)(CAN->Page.RxFIFO.MIDR1 & CAN_Id_Extended);
; genPointerGet
	ld	a, 0x542a
; genAnd
	and	a, #0x40
	ld	__IDE+0, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 50: if (_IDE != CAN_Id_Standard)
; genIfx
	tnz	__IDE+0
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 52: temp1 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR3) << 8);
; genPointerGet
	ld	a, 0x542c
; genCast
; genAssign
	clrw	y
	clr	(0x11, sp)
; genLeftShiftLiteral
	ld	(0x03, sp), a
	ldw	(0x01, sp), y
	clr	(0x04, sp)
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 53: temp2 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR2) << 16);  
; genPointerGet
	ld	a, 0x542b
; genCast
; genAssign
	clr	(0x13, sp)
	clrw	y
; genLeftShiftLiteral
	ld	(0x06, sp), a
	clr	(0x05, sp)
	clr	(0x08, sp)
	clr	(0x07, sp)
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 54: temp3 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 24);
; genPointerGet
	ld	a, 0x542a
; genCast
; genAssign
	clr	(0x13, sp)
	clrw	y
; genAnd
	and	a, #0x1f
	ld	xh, a
	clr	a
	clrw	y
; genLeftShiftLiteral
	clr	(0x0c, sp)
	clr	(0x0b, sp)
	clr	(0x0a, sp)
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 56: _Id = (uint32_t)CAN_EXTID_SIZE & ((CAN->Page.RxFIFO.MIDR4) | temp1 | temp2 | temp3 );
; genPointerGet
	ld	a, 0x542d
; genCast
; genAssign
	clrw	y
	ldw	(0x0d, sp), y
; genOr
	ld	yl, a
	clr	(0x11, sp)
	clr	(0x12, sp)
	ld	a, (0x03, sp)
; genOr
	ld	yh, a
	clr	(0x0d, sp)
	ld	a, (0x06, sp)
; genOr
; genAnd
	push	a
	ld	a, xh
	and	a, #0x1f
	ld	xh, a
	pop	a
; genAssign
	ldw	__Id+2, y
	ld	__Id+1, a
	ld	a, xh
	ld	__Id+0, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 60: temp1 = (uint16_t)((uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 6));
; genPointerGet
	ld	a, 0x542a
; genCast
; genAssign
; genAnd
	and	a, #0x1f
; genCast
; genAssign
	clrw	y
	ld	yl, a
; genLeftShiftLiteral
	sllw	y
	sllw	y
	sllw	y
	sllw	y
	sllw	y
	sllw	y
; genCast
; genAssign
	ldw	(0x0b, sp), y
	clr	(0x0a, sp)
	clr	a
	ld	xh, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 61: temp2 = (uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR2 >> 2)&0x3F);
; genPointerGet
	ld	a, 0x542b
; genCast
; genAssign
	clrw	y
	ld	yl, a
; genRightShiftLiteral
	srlw	y
	srlw	y
; genCast
; genAssign
	ld	a, yl
; genAnd
	and	a, #0x3f
; genCast
; genAssign
	clrw	y
	ldw	(0x0d, sp), y
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 63: _Id = (uint16_t)CAN_STDID_SIZE & (temp1 | temp2 );
; genOr
	or	a, (0x0c, sp)
	ld	yl, a
	clr	(0x12, sp)
	ld	a, (0x0b, sp)
; genAnd
	and	a, #0x07
	ld	yh, a
	clr	a
	clr	(0x0d, sp)
; genAssign
	ldw	__Id+2, y
	clr	__Id+1
	clr	__Id+0
; genLabel
00103$:
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 66: _RTR = (uint8_t)((uint8_t)0x20 & CAN->Page.RxFIFO.MIDR1);
; genPointerGet
	ld	a, 0x542a
; genAnd
	and	a, #0x20
	ld	__RTR+0, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 69: _DLC = (uint8_t)(CAN->Page.RxFIFO.MDLCR & (uint8_t)0x0F);
; genPointerGet
	ld	a, 0x5429
; genAnd
	and	a, #0x0f
	ld	__DLC+0, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 72: _FMI = CAN->Page.RxFIFO.MFMI;
; genPointerGet
	mov	__FMI+0, 0x5428
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 75: _Data[0] = CAN->Page.RxFIFO.MDAR1;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, 0x542e
; genPointerSet
	ld	__Data+0, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 76: _Data[1] = CAN->Page.RxFIFO.MDAR2;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, 0x542f
; genPointerSet
	ld	__Data+1, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 77: _Data[2] = CAN->Page.RxFIFO.MDAR3;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, 0x5430
; genPointerSet
	ld	__Data+2, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 78: _Data[3] = CAN->Page.RxFIFO.MDAR4;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, 0x5431
; genPointerSet
	ld	__Data+3, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 79: _Data[4] = CAN->Page.RxFIFO.MDAR5;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, 0x5432
; genPointerSet
	ld	__Data+4, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 80: _Data[5] = CAN->Page.RxFIFO.MDAR6;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, 0x5433
; genPointerSet
	ld	__Data+5, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 81: _Data[6] = CAN->Page.RxFIFO.MDAR7;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, 0x5434
; genPointerSet
	ld	__Data+6, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 82: _Data[7] = CAN->Page.RxFIFO.MDAR8;
; skipping iCode since result will be rematerialized
; genPointerGet
	ld	a, 0x5435
; genPointerSet
	ld	__Data+7, a
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 85: CAN_FIFORelease();
; genCall
	pushw	x
	call	_CAN_FIFORelease
	addw	sp, #1
	exg	a, xl
	pop	a
	exg	a, xl
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 87: CAN_SelectPage(can_page);
; genSend
	ld	a, xl
; genCall
	addw	sp, #20
	jp	_CAN_SelectPage
; genLabel
00104$:
;	../SPLSPL/src/stm8s_can_CAN_Receive.c: 88: }
; genEndFunction
	addw	sp, #20
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
