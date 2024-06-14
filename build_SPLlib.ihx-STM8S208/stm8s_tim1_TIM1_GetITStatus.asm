;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim1_TIM1_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM1_GetITStatus
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
;	../SPLSPL/src/stm8s_tim1_TIM1_GetITStatus.c: 45: ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
; genLabel
;	-----------------------------------------
;	 function TIM1_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM1_GetITStatus:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_GetITStatus.c: 53: TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
; genPointerGet
	ld	a, 0x5255
; genAnd
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim1_TIM1_GetITStatus.c: 55: TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
; genPointerGet
	ld	a, 0x5254
; genAnd
	and	a, (0x02, sp)
;	../SPLSPL/src/stm8s_tim1_TIM1_GetITStatus.c: 57: if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
; genIfx
	tnz	(0x01, sp)
	jrne	00121$
	jp	00102$
00121$:
; genIfx
	tnz	a
	jrne	00122$
	jp	00102$
00122$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetITStatus.c: 59: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetITStatus.c: 63: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetITStatus.c: 65: return (ITStatus)(bitstatus);
; genReturn
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim1_TIM1_GetITStatus.c: 66: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
