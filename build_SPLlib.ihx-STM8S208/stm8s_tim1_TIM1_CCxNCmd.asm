;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_CCxNCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_CCxNCmd
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
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 42: void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM1_CCxNCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_CCxNCmd:
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 48: if (TIM1_Channel == TIM1_CHANNEL_1)
; genIfx
	tnz	a
	jreq	00153$
	jp	00114$
00153$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 53: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 51: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00154$
	jp	00102$
00154$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 53: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00116$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 57: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00116$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 60: else if (TIM1_Channel == TIM1_CHANNEL_2)
; genCmpEQorNE
	dec	a
	jrne	00156$
	jp	00157$
00156$:
	jp	00111$
00157$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 53: TIM1->CCER1 |= TIM1_CCER1_CC1NE;
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 63: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00158$
	jp	00105$
00158$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 65: TIM1->CCER1 |= TIM1_CCER1_CC2NE;
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00116$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 69: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00116$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 77: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
; genPointerGet
	ld	a, 0x525d
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 75: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00159$
	jp	00108$
00159$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 77: TIM1->CCER2 |= TIM1_CCER2_CC3NE;
; genOr
	or	a, #0x04
; genPointerSet
	ld	0x525d, a
; genGoto
	jp	00116$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 81: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
; genAnd
	and	a, #0xfb
; genPointerSet
	ld	0x525d, a
; genLabel
00116$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxNCmd.c: 84: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
