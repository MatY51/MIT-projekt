;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_OC4Init
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_OC4Init
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
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 44: void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
; genLabel
;	-----------------------------------------
;	 function TIM1_OC4Init
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 3 bytes.
_TIM1_OC4Init:
	sub	sp, #3
; genReceive
	ld	(0x03, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 57: TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
; genPointerGet
	ld	a, 0x525d
; genAnd
	and	a, #0xcf
; genPointerSet
	ld	0x525d, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 59: TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
; genPointerGet
	ld	a, 0x525d
	ld	(0x01, sp), a
; genAnd
	ld	a, (0x06, sp)
	and	a, #0x10
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 60: (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
; genAnd
	ld	a, (0x09, sp)
	and	a, #0x20
; genOr
	or	a, (0x02, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x525d, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 63: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
; genPointerGet
	ld	a, 0x525b
; genAnd
	and	a, #0x8f
; genOr
	or	a, (0x03, sp)
; genPointerSet
	ld	0x525b, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 69: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
; genPointerGet
	ld	a, 0x526f
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 67: if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
; genIfx
	tnz	(0x0a, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 69: TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
; genOr
	or	a, #0xdf
; genPointerSet
	ld	0x526f, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 73: TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x526f, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 77: TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
; genGetByte
	ld	a, (0x07, sp)
; genPointerSet
	ld	0x526b, a
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 78: TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
; genCast
; genAssign
	ld	a, (0x08, sp)
; genPointerSet
	ld	0x526c, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_OC4Init.c: 79: }
; genEndFunction
	ldw	x, (4, sp)
	addw	sp, #10
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
