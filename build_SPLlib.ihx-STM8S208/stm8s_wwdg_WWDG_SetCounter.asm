;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_wwdg_WWDG_SetCounter
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WWDG_SetCounter
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
;	../SPLSPL/src/stm8s_wwdg_WWDG_SetCounter.c: 38: void WWDG_SetCounter(uint8_t Counter)
; genLabel
;	-----------------------------------------
;	 function WWDG_SetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_SetCounter:
; genReceive
;	../SPLSPL/src/stm8s_wwdg_WWDG_SetCounter.c: 45: WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x50d1, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_wwdg_WWDG_SetCounter.c: 46: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
