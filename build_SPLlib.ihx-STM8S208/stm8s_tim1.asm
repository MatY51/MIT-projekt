;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_TI1_Config
	.globl _TIM1_TI2_Config
	.globl _TIM1_TI3_Config
	.globl _TIM1_TI4_Config
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
;	../SPLSPL/src/stm8s_tim1.c: 57: void TIM1_TI1_Config(uint8_t TIM1_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM1_TI1_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM1_TI1_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim1.c: 62: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
; genPointerGet
	ld	a, 0x525c
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525c, a
;	../SPLSPL/src/stm8s_tim1.c: 65: TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
; genPointerGet
	ld	a, 0x5258
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1.c: 66: (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5258, a
;	../SPLSPL/src/stm8s_tim1.c: 62: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1.c: 69: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1.c: 71: TIM1->CCER1 |= TIM1_CCER1_CC1P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1.c: 75: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x525c, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1.c: 79: TIM1->CCER1 |=  TIM1_CCER1_CC1E;
; genPointerGet
	ld	a, 0x525c
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x525c, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1.c: 80: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../SPLSPL/src/stm8s_tim1.c: 98: void TIM1_TI2_Config(uint8_t TIM1_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM1_TI2_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM1_TI2_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim1.c: 103: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
; genPointerGet
	ld	a, 0x525c
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525c, a
;	../SPLSPL/src/stm8s_tim1.c: 106: TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
; genPointerGet
	ld	a, 0x5259
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1.c: 107: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5259, a
;	../SPLSPL/src/stm8s_tim1.c: 103: TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
; genPointerGet
	ld	a, 0x525c
;	../SPLSPL/src/stm8s_tim1.c: 109: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1.c: 111: TIM1->CCER1 |= TIM1_CCER1_CC2P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x525c, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1.c: 115: TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x525c, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1.c: 118: TIM1->CCER1 |=  TIM1_CCER1_CC2E;
; genPointerGet
	ld	a, 0x525c
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x525c, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1.c: 119: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../SPLSPL/src/stm8s_tim1.c: 137: void TIM1_TI3_Config(uint8_t TIM1_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM1_TI3_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM1_TI3_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim1.c: 142: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
; genPointerGet
	ld	a, 0x525d
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x525d, a
;	../SPLSPL/src/stm8s_tim1.c: 145: TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
; genPointerGet
	ld	a, 0x525a
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1.c: 146: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x525a, a
;	../SPLSPL/src/stm8s_tim1.c: 142: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
; genPointerGet
	ld	a, 0x525d
;	../SPLSPL/src/stm8s_tim1.c: 149: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1.c: 151: TIM1->CCER2 |= TIM1_CCER2_CC3P;
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x525d, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1.c: 155: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x525d, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1.c: 158: TIM1->CCER2 |=  TIM1_CCER2_CC3E;
; genPointerGet
	ld	a, 0x525d
; genOr
	or	a, #0x01
; genPointerSet
	ld	0x525d, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1.c: 159: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
;	../SPLSPL/src/stm8s_tim1.c: 177: void TIM1_TI4_Config(uint8_t TIM1_ICPolarity,
; genLabel
;	-----------------------------------------
;	 function TIM1_TI4_Config
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_TIM1_TI4_Config:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim1.c: 182: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
; genPointerGet
	ld	a, 0x525d
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x525d, a
;	../SPLSPL/src/stm8s_tim1.c: 185: TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
; genPointerGet
	ld	a, 0x525b
; genAnd
	and	a, #0x0c
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1.c: 186: | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
; genCast
; genAssign
	ld	a, (0x06, sp)
; genLeftShiftLiteral
	swap	a
	and	a, #0xf0
; genCast
; genAssign
; genOr
	or	a, (0x05, sp)
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x525b, a
;	../SPLSPL/src/stm8s_tim1.c: 182: TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
; genPointerGet
	ld	a, 0x525d
;	../SPLSPL/src/stm8s_tim1.c: 189: if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
; genIfx
	tnz	(0x02, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1.c: 191: TIM1->CCER2 |= TIM1_CCER2_CC4P;
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x525d, a
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1.c: 195: TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x525d, a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1.c: 199: TIM1->CCER2 |=  TIM1_CCER2_CC4E;
; genPointerGet
	ld	a, 0x525d
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x525d, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1.c: 200: }
; genEndFunction
	ldw	x, (3, sp)
	addw	sp, #6
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
