;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim4_TIM4_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM4_GetITStatus
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
;	../SPLSPL/src/stm8s_tim4_TIM4_GetITStatus.c: 38: ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
; genLabel
;	-----------------------------------------
;	 function TIM4_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM4_GetITStatus:
	pushw	x
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_tim4_TIM4_GetITStatus.c: 47: itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
; genPointerGet
	ld	a, 0x5342
; genCast
; genAssign
	exg	a, xl
	ld	(0x01, sp), a
	exg	a, xl
; genAnd
	and	a, (0x01, sp)
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim4_TIM4_GetITStatus.c: 49: itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
; genPointerGet
	ld	a, 0x5341
; genAnd
	and	a, (0x01, sp)
;	../SPLSPL/src/stm8s_tim4_TIM4_GetITStatus.c: 51: if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
; genIfx
	tnz	(0x02, sp)
	jrne	00121$
	jp	00102$
00121$:
; genIfx
	tnz	a
	jrne	00122$
	jp	00102$
00122$:
;	../SPLSPL/src/stm8s_tim4_TIM4_GetITStatus.c: 53: bitstatus = (ITStatus)SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim4_TIM4_GetITStatus.c: 57: bitstatus = (ITStatus)RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim4_TIM4_GetITStatus.c: 59: return ((ITStatus)bitstatus);
; genReturn
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim4_TIM4_GetITStatus.c: 60: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
