;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_wwdg_WWDG_SetWindowValue
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WWDG_SetWindowValue
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
;	../SPLSPL/src/stm8s_wwdg_WWDG_SetWindowValue.c: 38: void WWDG_SetWindowValue(uint8_t WindowValue)
; genLabel
;	-----------------------------------------
;	 function WWDG_SetWindowValue
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_SetWindowValue:
; genReceive
;	../SPLSPL/src/stm8s_wwdg_WWDG_SetWindowValue.c: 43: WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
; genOr
	or	a, #0x40
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x50d2, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_wwdg_WWDG_SetWindowValue.c: 44: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
