;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_Init
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
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 41: CAN_InitStatus_TypeDef CAN_Init(CAN_MasterCtrl_TypeDef CAN_MasterCtrl,
; genLabel
;	-----------------------------------------
;	 function CAN_Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_CAN_Init:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 50: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	yl, a
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 62: CAN->MCR = CAN_MCR_INRQ;
; genPointerSet
	mov	0x5420+0, #0x01
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 64: while (((uint8_t)(CAN->MSR & CAN_MSR_INAK) != 0x01) && ((uint16_t)timeout != 0))
; genAssign
	clrw	x
	decw	x
; genLabel
00102$:
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x01
; genCmpEQorNE
	dec	a
	jrne	00176$
	jp	00104$
00176$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00178$
	jp	00104$
00178$:
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 66: timeout--;
; genMinus
	decw	x
; genGoto
	jp	00102$
; genLabel
00104$:
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 70: if ((CAN->MSR & CAN_MSR_INAK) != CAN_MSR_INAK)
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x01
; genCmpEQorNE
	dec	a
	jrne	00180$
	jp	00113$
00180$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 73: InitStatus =  CAN_InitStatus_Failed;
; genAssign
	clr	a
; genGoto
	jp	00114$
; genLabel
00113$:
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 80: CAN->MCR |= (uint8_t)CAN_MasterCtrl;
; genPointerGet
	ld	a, 0x5420
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 83: CAN->DGR |= (uint8_t)CAN_Mode ;
; genPointerGet
	ld	a, 0x5426
; genOr
	or	a, (0x04, sp)
; genPointerSet
	ld	0x5426, a
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 84: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 85: CAN->Page.Config.BTR1 = (uint8_t)((uint8_t)(CAN_Prescaler - (uint8_t)1) | CAN_SynJumpWidth);
; genMinus
	ld	a, (0x08, sp)
	dec	a
; genOr
	or	a, (0x05, sp)
; genPointerSet
	ld	0x542c, a
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 86: CAN->Page.Config.BTR2 = (uint8_t)(CAN_BitSeg1 | (uint8_t)CAN_BitSeg2);
; genOr
	ld	a, (0x06, sp)
	or	a, (0x07, sp)
; genPointerSet
	ld	0x542d, a
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 89: CAN->MCR &= (uint8_t)(~CAN_MCR_INRQ);
; genPointerGet
	ld	a, 0x5420
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 92: while ((((uint8_t)(CAN->MSR & CAN_MSR_INAK) == 0x01))&&(timeout != 0))
; genAssign
	clrw	x
	decw	x
; genLabel
00106$:
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x01
; genCmpEQorNE
	dec	a
	jrne	00183$
	jp	00184$
00183$:
	jp	00108$
00184$:
; skipping generated iCode
; genIfx
	tnzw	x
	jrne	00185$
	jp	00108$
00185$:
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 94: timeout--;
; genMinus
	decw	x
; genGoto
	jp	00106$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 97: if ((CAN->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
; genPointerGet
	ld	a, 0x5421
; genAnd
	and	a, #0x01
; genCmpEQorNE
	dec	a
	jrne	00187$
	jp	00188$
00187$:
	jp	00110$
00188$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 99: InitStatus = CAN_InitStatus_Failed;
; genAssign
	clr	a
; genGoto
	jp	00114$
; genLabel
00110$:
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 103: InitStatus = CAN_InitStatus_Success;
; genAssign
	ld	a, #0x01
; genLabel
00114$:
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 107: CAN_SelectPage(can_page);
; genSend
	push	a
	ld	a, yl
; genCall
	call	_CAN_SelectPage
	pop	a
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 110: return (CAN_InitStatus_TypeDef)InitStatus;
; genReturn
; genLabel
00115$:
;	../SPLSPL/src/stm8s_can_CAN_Init.c: 111: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #8
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
