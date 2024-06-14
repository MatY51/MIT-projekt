;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_wwdg_WWDG_GetCounter
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WWDG_GetCounter
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
;	../SPLSPL/src/stm8s_wwdg_WWDG_GetCounter.c: 38: uint8_t WWDG_GetCounter(void)
; genLabel
;	-----------------------------------------
;	 function WWDG_GetCounter
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_GetCounter:
;	../SPLSPL/src/stm8s_wwdg_WWDG_GetCounter.c: 40: return(WWDG->CR);
; genPointerGet
	ld	a, 0x50d1
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_wwdg_WWDG_GetCounter.c: 41: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
