;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_CCxCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_CCxCmd
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
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 42: void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM2_CCxCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM2_CCxCmd:
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 48: if (TIM2_Channel == TIM2_CHANNEL_1)
; genIfx
	tnz	a
	jreq	00153$
	jp	00114$
00153$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 53: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
; genPointerGet
	ld	a, 0x5308
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 51: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00154$
	jp	00102$
00154$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 53: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5308, a
; genGoto
	jp	00116$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 57: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5308, a
; genGoto
	jp	00116$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 61: else if (TIM2_Channel == TIM2_CHANNEL_2)
; genCmpEQorNE
	dec	a
	jrne	00156$
	jp	00157$
00156$:
	jp	00111$
00157$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 53: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
; genPointerGet
	ld	a, 0x5308
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 64: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00158$
	jp	00105$
00158$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 66: TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5308, a
; genGoto
	jp	00116$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 70: TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5308, a
; genGoto
	jp	00116$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 78: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
; genPointerGet
	ld	a, 0x5309
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 76: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00159$
	jp	00108$
00159$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 78: TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5309, a
; genGoto
	jp	00116$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 82: TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5309, a
; genLabel
00116$:
;	../SPLSPL/src/stm8s_tim2_TIM2_CCxCmd.c: 85: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
