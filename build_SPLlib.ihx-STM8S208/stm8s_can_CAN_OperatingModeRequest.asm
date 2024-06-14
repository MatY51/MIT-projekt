;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_OperatingModeRequest
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_OperatingModeRequest
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
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 41: CAN_ModeStatus_TypeDef CAN_OperatingModeRequest(CAN_OperatingMode_TypeDef CAN_OperatingMode)
; genLabel
;	-----------------------------------------
;	 function CAN_OperatingModeRequest
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_CAN_OperatingModeRequest:
; genReceive
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 48: if (CAN_OperatingMode == CAN_OperatingMode_Initialization)
; genIfx
	tnz	a
	jreq	00241$
	jp	00129$
00241$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 51: CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_SLEEP)) | CAN_MCR_INRQ);
; genPointerGet
	ld	a, 0x5420
; genAnd
	and	a, #0xfd
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 54: while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK) && (timeout != 0))
; genAssign
	clrw	x
	decw	x
; genLabel
00102$:
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x03
; genCmpEQorNE
	dec	a
	jrne	00243$
	jp	00104$
00243$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00245$
	jp	00104$
00245$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 56: timeout--;
; genMinus
	decw	x
; genGoto
	jp	00102$
; genLabel
00104$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 58: if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK)
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x03
; genCmpEQorNE
	dec	a
	jrne	00247$
	jp	00106$
00247$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 60: modestatus = CAN_ModeStatus_Failed;
; genAssign
	clr	a
; genGoto
	jp	00130$
; genLabel
00106$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 64: modestatus = CAN_ModeStatus_Success;  
; genAssign
	ld	a, #0x01
; genGoto
	jp	00130$
; genLabel
00129$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 68: else  if (CAN_OperatingMode == CAN_OperatingMode_Normal)
; genCmpEQorNE
	cp	a, #0x01
	jrne	00250$
	jp	00251$
00250$:
	jp	00126$
00251$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 71: CAN->MCR &= (uint8_t)(~(CAN_MCR_SLEEP|CAN_MCR_INRQ));
; genPointerGet
	ld	a, 0x5420
; genAnd
	and	a, #0xfc
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 74: while (((CAN->MSR & CAN_MODE_MASK) != 0) && (timeout!=0))
; genAssign
	clrw	x
	decw	x
; genLabel
00109$:
; genPointerGet
	ld	a, 0x5421
; genAnd
	bcp	a, #0x03
	jrne	00252$
	jp	00111$
00252$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00253$
	jp	00111$
00253$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 76: timeout--;
; genMinus
	decw	x
; genGoto
	jp	00109$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 78: if ((CAN->MSR & CAN_MODE_MASK) != 0)
; genPointerGet
	ld	a, 0x5421
; genAnd
	bcp	a, #0x03
	jrne	00254$
	jp	00113$
00254$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 80: modestatus = CAN_ModeStatus_Failed;
; genAssign
	clr	a
; genGoto
	jp	00130$
; genLabel
00113$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 84: modestatus = CAN_ModeStatus_Success;  
; genAssign
	ld	a, #0x01
; genGoto
	jp	00130$
; genLabel
00126$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 87: else  if (CAN_OperatingMode == CAN_OperatingMode_Sleep)
; genCmpEQorNE
	cp	a, #0x02
	jrne	00256$
	jp	00257$
00256$:
	jp	00123$
00257$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 90: CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
; genPointerGet
	ld	a, 0x5420
; genAnd
	and	a, #0xfe
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 93: while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK) && (timeout!=0))
; genAssign
	clrw	x
	decw	x
; genLabel
00116$:
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x03
; genCmpEQorNE
	cp	a, #0x02
	jrne	00259$
	jp	00118$
00259$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00261$
	jp	00118$
00261$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 95: timeout--;
; genMinus
	decw	x
; genGoto
	jp	00116$
; genLabel
00118$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 97: if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK)
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x03
; genCmpEQorNE
	cp	a, #0x02
	jrne	00263$
	jp	00120$
00263$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 99: modestatus = CAN_ModeStatus_Failed;  
; genAssign
	clr	a
; genGoto
	jp	00130$
; genLabel
00120$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 103: modestatus = CAN_ModeStatus_Success;  
; genAssign
	ld	a, #0x01
; genGoto
	jp	00130$
; genLabel
00123$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 108: modestatus = CAN_ModeStatus_Failed;
; genAssign
	clr	a
; genLabel
00130$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 110: return (CAN_ModeStatus_TypeDef)(modestatus);
; genCast
	neg	a
	clr	a
	rlc	a
; genReturn
; genLabel
00131$:
;	../SPLSPL/src/stm8s_can_CAN_OperatingModeRequest.c: 111: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
