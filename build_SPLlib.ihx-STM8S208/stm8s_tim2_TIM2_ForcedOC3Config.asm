;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_ForcedOC3Config
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_ForcedOC3Config
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
;	../SPLSPL/src/stm8s_tim2_TIM2_ForcedOC3Config.c: 40: void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
; genLabel
;	-----------------------------------------
;	 function TIM2_ForcedOC3Config
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM2_ForcedOC3Config:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_ForcedOC3Config.c: 46: TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
; genPointerGet
	ld	a, 0x5307
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim2_TIM2_ForcedOC3Config.c: 47: | (uint8_t)TIM2_ForcedAction);
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5307, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim2_TIM2_ForcedOC3Config.c: 48: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
