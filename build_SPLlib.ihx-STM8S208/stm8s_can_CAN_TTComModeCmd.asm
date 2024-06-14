;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_TTComModeCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_TTComModeCmd
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
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 36: void CAN_TTComModeCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CAN_TTComModeCmd
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_CAN_TTComModeCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 38: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	xl, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 44: CAN->MCR |= CAN_MCR_TTCM;
; genPointerGet
	ld	a, 0x5420
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 41: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 44: CAN->MCR |= CAN_MCR_TTCM;
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 46: CAN->PSR = CAN_Page_TxMailBox0;
; genPointerSet
	mov	0x5427+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 47: CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
; genPointerGet
	ld	a, 0x5429
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5429, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 48: CAN->PSR = CAN_Page_TxMailBox1;
; genPointerSet
	mov	0x5427+0, #0x01
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 49: CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
; genPointerGet
	ld	a, 0x5429
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5429, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 50: CAN->PSR = CAN_Page_TxMailBox2;
; genPointerSet
	mov	0x5427+0, #0x05
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 51: CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
; genPointerGet
	ld	a, 0x5429
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5429, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 52: CAN->PSR = CAN_Page_RxFifo;
; genPointerSet
	mov	0x5427+0, #0x07
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 53: CAN->Page.RxFIFO.MDLCR |= CAN_MDLCR_TGT;
; genPointerGet
	ld	a, 0x5429
; genOr
	or	a, #0x80
; genPointerSet
	ld	0x5429, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 58: CAN->MCR &= ((uint8_t)~CAN_MCR_TTCM);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5420, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 60: CAN->PSR = CAN_Page_TxMailBox0;
; genPointerSet
	mov	0x5427+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 61: CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
; genPointerGet
	ld	a, 0x5429
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5429, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 62: CAN->PSR = CAN_Page_TxMailBox1;
; genPointerSet
	mov	0x5427+0, #0x01
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 63: CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
; genPointerGet
	ld	a, 0x5429
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5429, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 64: CAN->PSR = CAN_Page_TxMailBox2;
; genPointerSet
	mov	0x5427+0, #0x05
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 65: CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
; genPointerGet
	ld	a, 0x5429
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5429, a
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 66: CAN->PSR = CAN_Page_RxFifo;
; genPointerSet
	mov	0x5427+0, #0x07
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 67: CAN->Page.RxFIFO.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
; genPointerGet
	ld	a, 0x5429
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x5429, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 70: CAN_SelectPage(can_page);
; genSend
	ld	a, xl
; genCall
	addw	sp, #1
	jp	_CAN_SelectPage
; genLabel
00104$:
;	../SPLSPL/src/stm8s_can_CAN_TTComModeCmd.c: 71: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
