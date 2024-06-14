;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_MessagePending
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_MessagePending
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
;	../SPLSPL/src/stm8s_can_CAN_MessagePending.c: 35: CAN_NbrPendingMessage_TypeDef CAN_MessagePending(void)
; genLabel
;	-----------------------------------------
;	 function CAN_MessagePending
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_MessagePending:
;	../SPLSPL/src/stm8s_can_CAN_MessagePending.c: 38: msgpending = (CAN_NbrPendingMessage_TypeDef)(CAN->RFR & CAN_RFR_FMP01);
; genPointerGet
	ld	a, 0x5424
; genAnd
	and	a, #0x03
;	../SPLSPL/src/stm8s_can_CAN_MessagePending.c: 39: return (CAN_NbrPendingMessage_TypeDef)msgpending;
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_MessagePending.c: 40: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
