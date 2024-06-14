;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_GetMessageTimeStamp
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_GetMessageTimeStamp
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
;	../SPLSPL/src/stm8s_can_CAN_GetMessageTimeStamp.c: 36: uint16_t CAN_GetMessageTimeStamp(void)
; genLabel
;	-----------------------------------------
;	 function CAN_GetMessageTimeStamp
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 6 bytes.
_CAN_GetMessageTimeStamp:
	sub	sp, #6
;	../SPLSPL/src/stm8s_can_CAN_GetMessageTimeStamp.c: 39: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	yl, a
;	../SPLSPL/src/stm8s_can_CAN_GetMessageTimeStamp.c: 42: CAN->PSR = CAN_Page_RxFifo;
; genPointerSet
	mov	0x5427+0, #0x07
;	../SPLSPL/src/stm8s_can_CAN_GetMessageTimeStamp.c: 44: timestamp = CAN->Page.RxFIFO.MTSRL;
; genPointerGet
	ld	a, 0x5436
; genCast
; genAssign
	ld	xl, a
	clr	(0x01, sp)
;	../SPLSPL/src/stm8s_can_CAN_GetMessageTimeStamp.c: 45: timestamp |= (uint16_t)(((uint16_t)CAN->Page.RxFIFO.MTSRH)<<8);
; genPointerGet
	ld	a, 0x5437
; genCast
; genAssign
	clr	(0x03, sp)
; genLeftShiftLiteral
	clr	(0x06, sp)
; genOr
	ld	xh, a
;	../SPLSPL/src/stm8s_can_CAN_GetMessageTimeStamp.c: 48: CAN_SelectPage(can_page);
; genSend
	pushw	x
	ld	a, yl
; genCall
	call	_CAN_SelectPage
	popw	x
;	../SPLSPL/src/stm8s_can_CAN_GetMessageTimeStamp.c: 50: return (uint16_t)(timestamp);
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_GetMessageTimeStamp.c: 51: }
; genEndFunction
	addw	sp, #6
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
