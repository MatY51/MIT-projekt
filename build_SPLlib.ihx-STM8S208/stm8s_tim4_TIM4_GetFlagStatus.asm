;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim4_TIM4_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_GetFlagStatus
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
;	../SPLSPL/src/stm8s_tim4_TIM4_GetFlagStatus.c: 38: FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_TIM4_GetFlagStatus:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_tim4_TIM4_GetFlagStatus.c: 45: if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
; genPointerGet
	ld	a, 0x5342
; genCast
; genAssign
; genAnd
	pushw	x
	and	a, (2, sp)
	popw	x
; genIfx
	tnz	a
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_tim4_TIM4_GetFlagStatus.c: 47: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim4_TIM4_GetFlagStatus.c: 51: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim4_TIM4_GetFlagStatus.c: 53: return ((FlagStatus)bitstatus);
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_tim4_TIM4_GetFlagStatus.c: 54: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
