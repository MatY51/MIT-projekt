;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetFlagStatus
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
;	../SPLSPL/src/stm8s_tim1_TIM1_GetFlagStatus.c: 49: FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM1_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TIM1_GetFlagStatus:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_tim1_TIM1_GetFlagStatus.c: 57: tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
; genPointerGet
	ld	a, 0x5255
	ld	(0x01, sp), a
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, (0x01, sp)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_GetFlagStatus.c: 58: tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
; genCast
; genAssign
; genGetByte
;	../SPLSPL/src/stm8s_tim1_TIM1_GetFlagStatus.c: 60: if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
; genPointerGet
	ld	a, 0x5256
; genAnd
	pushw	x
	and	a, (1, sp)
	popw	x
; genOr
	or	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetFlagStatus.c: 62: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetFlagStatus.c: 66: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetFlagStatus.c: 68: return (FlagStatus)(bitstatus);
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetFlagStatus.c: 69: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
