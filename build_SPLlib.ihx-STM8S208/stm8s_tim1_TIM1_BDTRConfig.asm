;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_BDTRConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_BDTRConfig
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
;	../SPLSPL/src/stm8s_tim1_TIM1_BDTRConfig.c: 44: void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
; genLabel
;	-----------------------------------------
;	 function TIM1_BDTRConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM1_BDTRConfig:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_BDTRConfig.c: 58: TIM1->DTR = (uint8_t)(TIM1_DeadTime);
; genPointerSet
	ldw	x, #0x526e
	push	a
	ld	a, (0x06, sp)
	ld	(x), a
	pop	a
;	../SPLSPL/src/stm8s_tim1_TIM1_BDTRConfig.c: 62: TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
; genOr
	or	a, (0x04, sp)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_BDTRConfig.c: 63: (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
; genOr
	ld	a, (0x06, sp)
	or	a, (0x07, sp)
;	../SPLSPL/src/stm8s_tim1_TIM1_BDTRConfig.c: 64: (uint8_t)TIM1_AutomaticOutput));
; genOr
	or	a, (0x08, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x526d, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_BDTRConfig.c: 65: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #8
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
