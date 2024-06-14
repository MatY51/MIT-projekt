;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_rst_RST_ClearFlag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _RST_ClearFlag
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
;	../SPLSPL/src/stm8s_rst_RST_ClearFlag.c: 37: void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
; genLabel
;	-----------------------------------------
;	 function RST_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RST_ClearFlag:
; genReceive
;	../SPLSPL/src/stm8s_rst_RST_ClearFlag.c: 42: RST->SR = (uint8_t)RST_Flag;
; genPointerSet
	ld	0x50b3, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_rst_RST_ClearFlag.c: 43: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
