;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_ITConfig
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
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 37: void CAN_ITConfig(CAN_IT_TypeDef CAN_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function CAN_ITConfig
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 5 bytes.
_CAN_ITConfig:
	sub	sp, #5
; genReceive
	ldw	(0x04, sp), x
; genReceive
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 40: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	yl, a
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 47: tmperrorinterrupt = (uint8_t)(((uint16_t)CAN_IT) >>7);
; genCast
; genAssign
	ldw	x, (0x04, sp)
; genRightShiftLiteral
	ld	a, #0x80
	div	x, a
; genCast
; genAssign
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 48: tmperrorinterrupt = (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0xF0) | 
; genAnd
	ld	a, xl
	and	a, #0xf0
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 49: (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0x0F) >>1));
; genAnd
	ld	a, xl
	and	a, #0x0f
; genRightShiftLiteral
	srl	a
; genOr
	or	a, (0x02, sp)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 51: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 55: CAN->IER |= (uint8_t)(CAN_IT);
; genPointerGet
	ld	a, 0x5425
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 52: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 55: CAN->IER |= (uint8_t)(CAN_IT);
; genCast
; genAssign
	ld	a, (0x05, sp)
; genOr
	or	a, (0x02, sp)
; genPointerSet
	ld	0x5425, a
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 56: CAN->Page.Config.EIER |= (uint8_t)(tmperrorinterrupt);
; genPointerGet
	ld	a, 0x5429
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5429, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 61: CAN->IER &= (uint8_t)~(uint8_t)((uint16_t)CAN_IT);
; genCast
; genAssign
	ld	a, (0x05, sp)
; genCpl
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5425, a
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 62: CAN->Page.Config.EIER &= (uint8_t)~(tmperrorinterrupt);
; genPointerGet
	ld	a, 0x5429
	ld	(0x02, sp), a
; genCpl
	ld	a, (0x01, sp)
	cpl	a
; genAnd
	and	a, (0x02, sp)
; genPointerSet
	ld	0x5429, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 65: CAN_SelectPage(can_page);
; genSend
	ld	a, yl
; genCall
	addw	sp, #5
	jp	_CAN_SelectPage
; genLabel
00104$:
;	../SPLSPL/src/stm8s_can_CAN_ITConfig.c: 66: }
; genEndFunction
	addw	sp, #5
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
