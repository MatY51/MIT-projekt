;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_iwdg_IWDG_SetReload
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _IWDG_SetReload
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
;	../SPLSPL/src/stm8s_iwdg_IWDG_SetReload.c: 38: void IWDG_SetReload(uint8_t IWDG_Reload)
; genLabel
;	-----------------------------------------
;	 function IWDG_SetReload
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_IWDG_SetReload:
; genReceive
;	../SPLSPL/src/stm8s_iwdg_IWDG_SetReload.c: 40: IWDG->RLR = IWDG_Reload;
; genPointerSet
	ld	0x50e2, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_iwdg_IWDG_SetReload.c: 41: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
