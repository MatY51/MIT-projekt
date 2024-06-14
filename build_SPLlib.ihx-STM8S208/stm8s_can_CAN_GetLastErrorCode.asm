;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_GetLastErrorCode
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_GetLastErrorCode
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
;	../SPLSPL/src/stm8s_can_CAN_GetLastErrorCode.c: 36: CAN_ErrorCode_TypeDef CAN_GetLastErrorCode(void)
; genLabel
;	-----------------------------------------
;	 function CAN_GetLastErrorCode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_GetLastErrorCode:
;	../SPLSPL/src/stm8s_can_CAN_GetLastErrorCode.c: 39: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	call	_CAN_GetSelectedPage
	ld	xl, a
;	../SPLSPL/src/stm8s_can_CAN_GetLastErrorCode.c: 41: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_GetLastErrorCode.c: 42: errcode = (CAN_ErrorCode_TypeDef)((CAN->Page.Config.ESR) & (CAN_ESR_LEC));
; genPointerGet
	ld	a, 0x5428
; genAnd
	and	a, #0x70
;	../SPLSPL/src/stm8s_can_CAN_GetLastErrorCode.c: 45: CAN_SelectPage(can_page);
; genSend
	push	a
	ld	a, xl
; genCall
	call	_CAN_SelectPage
	pop	a
;	../SPLSPL/src/stm8s_can_CAN_GetLastErrorCode.c: 47: return (CAN_ErrorCode_TypeDef)(errcode);
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_GetLastErrorCode.c: 48: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
