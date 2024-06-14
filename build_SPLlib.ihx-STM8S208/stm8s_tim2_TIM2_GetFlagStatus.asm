;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_GetFlagStatus
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
;	../SPLSPL/src/stm8s_tim2_TIM2_GetFlagStatus.c: 44: FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetFlagStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 1 bytes.
_TIM2_GetFlagStatus:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_tim2_TIM2_GetFlagStatus.c: 52: tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
; genPointerGet
	ld	a, 0x5302
	ld	(0x01, sp), a
; genCast
; genAssign
	ld	a, xl
; genAnd
	and	a, (0x01, sp)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_GetFlagStatus.c: 53: tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
; genCast
; genAssign
; genGetByte
;	../SPLSPL/src/stm8s_tim2_TIM2_GetFlagStatus.c: 55: if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
; genPointerGet
	ld	a, 0x5303
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
;	../SPLSPL/src/stm8s_tim2_TIM2_GetFlagStatus.c: 57: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2_TIM2_GetFlagStatus.c: 61: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim2_TIM2_GetFlagStatus.c: 63: return (FlagStatus)bitstatus;
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim2_TIM2_GetFlagStatus.c: 64: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
