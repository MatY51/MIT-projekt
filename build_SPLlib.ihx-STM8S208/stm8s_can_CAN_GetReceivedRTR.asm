;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_GetReceivedRTR
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_GetReceivedRTR
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
;	../SPLSPL/src/stm8s_can_CAN_GetReceivedRTR.c: 40: CAN_RTR_TypeDef CAN_GetReceivedRTR(void)
; genLabel
;	-----------------------------------------
;	 function CAN_GetReceivedRTR
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_GetReceivedRTR:
;	../SPLSPL/src/stm8s_can_CAN_GetReceivedRTR.c: 42: return (CAN_RTR_TypeDef)(_RTR);
; genReturn
	ld	a, __RTR+0
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_GetReceivedRTR.c: 43: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
