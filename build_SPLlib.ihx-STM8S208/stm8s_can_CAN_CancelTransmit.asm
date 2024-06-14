;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_CancelTransmit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_CancelTransmit
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
;	../SPLSPL/src/stm8s_can_CAN_CancelTransmit.c: 36: void CAN_CancelTransmit(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
; genLabel
;	-----------------------------------------
;	 function CAN_CancelTransmit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_CancelTransmit:
; genReceive
;	../SPLSPL/src/stm8s_can_CAN_CancelTransmit.c: 38: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	push	a
	call	_CAN_GetSelectedPage
	ld	xl, a
	pop	a
;	../SPLSPL/src/stm8s_can_CAN_CancelTransmit.c: 42: CAN->PSR = (uint8_t)CAN_TransmitMailbox;
; genPointerSet
	ld	0x5427, a
;	../SPLSPL/src/stm8s_can_CAN_CancelTransmit.c: 44: CAN->Page.TxMailbox.MCSR |= CAN_MCSR_ABRQ;
; genPointerGet
	ld	a, 0x5428
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x5428, a
;	../SPLSPL/src/stm8s_can_CAN_CancelTransmit.c: 46: CAN_SelectPage(can_page);
; genSend
	ld	a, xl
; genCall
	jp	_CAN_SelectPage
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_CancelTransmit.c: 47: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
