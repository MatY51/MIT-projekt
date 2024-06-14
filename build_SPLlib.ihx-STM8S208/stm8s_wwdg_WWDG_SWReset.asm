;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_wwdg_WWDG_SWReset
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WWDG_SWReset
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
;	../SPLSPL/src/stm8s_wwdg_WWDG_SWReset.c: 36: void WWDG_SWReset(void)
; genLabel
;	-----------------------------------------
;	 function WWDG_SWReset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_SWReset:
;	../SPLSPL/src/stm8s_wwdg_WWDG_SWReset.c: 38: WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
; genPointerSet
	mov	0x50d1+0, #0x80
; genLabel
00101$:
;	../SPLSPL/src/stm8s_wwdg_WWDG_SWReset.c: 39: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
