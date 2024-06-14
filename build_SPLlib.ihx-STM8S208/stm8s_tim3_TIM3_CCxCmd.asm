;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_CCxCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_CCxCmd
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
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 41: void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function TIM3_CCxCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_TIM3_CCxCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 52: TIM3->CCER1 |= TIM3_CCER1_CC1E;
; genPointerGet
	ld	a, 0x5327
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 47: if (TIM3_Channel == TIM3_CHANNEL_1)
; genIfx
	tnz	(0x01, sp)
	jreq	00133$
	jp	00108$
00133$:
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 50: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00134$
	jp	00102$
00134$:
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 52: TIM3->CCER1 |= TIM3_CCER1_CC1E;
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x5327, a
; genGoto
	jp	00110$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 56: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5327, a
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 63: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00135$
	jp	00105$
00135$:
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 65: TIM3->CCER1 |= TIM3_CCER1_CC2E;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x5327, a
; genGoto
	jp	00110$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 69: TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5327, a
; genLabel
00110$:
;	../SPLSPL/src/stm8s_tim3_TIM3_CCxCmd.c: 72: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
