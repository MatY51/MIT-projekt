;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_GetReceivedData
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_GetReceivedData
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
;	../SPLSPL/src/stm8s_can_CAN_GetReceivedData.c: 41: uint8_t CAN_GetReceivedData(uint8_t CAN_DataIndex)
; genLabel
;	-----------------------------------------
;	 function CAN_GetReceivedData
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_CAN_GetReceivedData:
; genReceive
;	../SPLSPL/src/stm8s_can_CAN_GetReceivedData.c: 44: return (_Data[CAN_DataIndex]);
; skipping iCode since result will be rematerialized
; genPlus
	clrw	x
	ld	xl, a
	addw	x, #(__Data+0)
; genPointerGet
	ld	a, (x)
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_GetReceivedData.c: 45: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
