;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_CCxCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_CCxCmd
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
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 43: void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM1_CCxCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM1_CCxCmd:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 49: if (TIM1_Channel == TIM1_CHANNEL_1)
; genIfx
	ld	a, xl
	tnz	a
	jreq	00173$
	jp	00120$
00173$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 54: TIM1->CCER1 |= TIM1_CCER1_CC1E;
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 52: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00174$
	jp	00102$
00174$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 54: TIM1->CCER1 |= TIM1_CCER1_CC1E;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00122$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 58: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00122$
; genLabel
00120$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 62: else if (TIM1_Channel == TIM1_CHANNEL_2)
; genCmpEQorNE
	ld	a, xl
	dec	a
	jrne	00176$
	jp	00177$
00176$:
	jp	00117$
00177$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 54: TIM1->CCER1 |= TIM1_CCER1_CC1E;
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 65: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00178$
	jp	00105$
00178$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 67: TIM1->CCER1 |= TIM1_CCER1_CC2E;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00122$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 71: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00122$
; genLabel
00117$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 79: TIM1->CCER2 |= TIM1_CCER2_CC3E;
; genPointerGet
	ld	a, 0x525d
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 74: else if (TIM1_Channel == TIM1_CHANNEL_3)
; genCmpEQorNE
	push	a
	ld	a, xl
	cp	a, #0x02
	pop	a
	jrne	00180$
	jp	00181$
00180$:
	jp	00114$
00181$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 77: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00182$
	jp	00108$
00182$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 79: TIM1->CCER2 |= TIM1_CCER2_CC3E;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x525d, a
; genGoto
	jp	00122$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 83: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525d, a
; genGoto
	jp	00122$
; genLabel
00114$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 89: if (NewState != DISABLE)
; genIfx
	tnz	(0x03, sp)
	jrne	00183$
	jp	00111$
00183$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 91: TIM1->CCER2 |= TIM1_CCER2_CC4E;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x525d, a
; genGoto
	jp	00122$
; genLabel
00111$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 95: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525d, a
; genLabel
00122$:
;	../SPLSPL/src/stm8s_tim1_TIM1_CCxCmd.c: 98: }
; genEndFunction
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
