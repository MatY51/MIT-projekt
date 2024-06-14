;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_ClearFlag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_ClearFlag
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
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 43: void CAN_ClearFlag(CAN_FLAG_TypeDef CAN_Flag)
; genLabel
;	-----------------------------------------
;	 function CAN_ClearFlag
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_CAN_ClearFlag:
	pushw	x
; genReceive
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 48: if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
; genAnd
	ld	a, xh
	bcp	a, #0x07
	jrne	00133$
	jp	00108$
00133$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 53: CAN->RFR = (uint8_t)(CAN_Flag);
; genCast
; genAssign
	ld	a, xl
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 50: if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
; genAnd
	push	a
	ld	a, xl
	and	a, #0x0b
	ld	(0x03, sp), a
	ld	a, xh
	and	a, #0x02
	ld	(0x02, sp), a
	pop	a
; genIfx
	ldw	y, (0x01, sp)
	jrne	00134$
	jp	00105$
00134$:
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 53: CAN->RFR = (uint8_t)(CAN_Flag);
; genPointerSet
	ld	0x5424, a
; genGoto
	jp	00110$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 55: else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
; genAnd
	push	a
	ld	a, xl
	and	a, #0x03
	ld	xl, a
	ld	a, xh
	and	a, #0x04
	ld	xh, a
	pop	a
; genIfx
	tnzw	x
	jrne	00135$
	jp	00102$
00135$:
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 58: CAN->TSR = (uint8_t)(CAN_Flag);
; genPointerSet
	ld	0x5422, a
; genGoto
	jp	00110$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 63: CAN->MSR = (uint8_t)(CAN_Flag);
; genPointerSet
	ld	0x5421, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 69: can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 72: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 73: CAN->Page.Config.ESR = (uint8_t)RESET;
; genPointerSet
	mov	0x5428+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 76: CAN_SelectPage(can_page);
; genSend
; genCall
	popw	x
	jp	_CAN_SelectPage
; genLabel
00110$:
;	../SPLSPL/src/stm8s_can_CAN_ClearFlag.c: 78: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
