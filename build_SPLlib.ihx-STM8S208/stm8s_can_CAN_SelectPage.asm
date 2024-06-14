;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_SelectPage
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
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
;	../SPLSPL/src/stm8s_can_CAN_SelectPage.c: 36: void CAN_SelectPage(CAN_Page_TypeDef CAN_Page)
; genLabel
;	-----------------------------------------
;	 function CAN_SelectPage
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_SelectPage:
; genReceive
;	../SPLSPL/src/stm8s_can_CAN_SelectPage.c: 38: CAN->PSR = (uint8_t)CAN_Page;
; genPointerSet
	ld	0x5427, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_SelectPage.c: 39: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
