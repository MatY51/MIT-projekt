;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_TimeBaseInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_TimeBaseInit
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
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 39: void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
; genLabel
;	-----------------------------------------
;	 function TIM1_TimeBaseInit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TIM1_TimeBaseInit:
	push	a
; genReceive
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 48: TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
; genGetByte
	ld	a, (0x04, sp)
; genPointerSet
	ld	0x5262, a
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 49: TIM1->ARRL = (uint8_t)(TIM1_Period);
; genCast
; genAssign
	ld	a, (0x05, sp)
; genPointerSet
	ld	0x5263, a
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 52: TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
; genGetByte
	ld	a, xh
; genPointerSet
	ld	0x5260, a
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 53: TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
; genCast
; genAssign
	ld	a, xl
; genPointerSet
	ld	0x5261, a
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 56: TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
; genPointerGet
	ld	a, 0x5250
; genAnd
	and	a, #0x8f
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 57: | (uint8_t)(TIM1_CounterMode));
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5250, a
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 60: TIM1->RCR = TIM1_RepetitionCounter;
; genPointerSet
	ldw	x, #0x5264
	ld	a, (0x06, sp)
	ld	(x), a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_tim1_TIM1_TimeBaseInit.c: 61: }
; genEndFunction
	ldw	x, (2, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
