;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_wwdg_WWDG_Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WWDG_Init
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
;	../SPLSPL/src/stm8s_wwdg_WWDG_Init.c: 39: void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
; genLabel
;	-----------------------------------------
;	 function WWDG_Init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_WWDG_Init:
; genReceive
;	../SPLSPL/src/stm8s_wwdg_WWDG_Init.c: 44: WWDG->WR = WWDG_WR_RESET_VALUE;
; genPointerSet
	mov	0x50d2+0, #0x7f
;	../SPLSPL/src/stm8s_wwdg_WWDG_Init.c: 45: WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
; genOr
	or	a, #0xc0
; genPointerSet
	ld	0x50d1, a
;	../SPLSPL/src/stm8s_wwdg_WWDG_Init.c: 46: WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
; genOr
	ld	a, (0x03, sp)
	or	a, #0x40
; genAnd
	and	a, #0x7f
; genPointerSet
	ld	0x50d2, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_wwdg_WWDG_Init.c: 47: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
