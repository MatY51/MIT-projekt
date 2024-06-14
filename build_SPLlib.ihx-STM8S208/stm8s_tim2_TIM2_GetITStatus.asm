;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim2_TIM2_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM2_GetITStatus
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
;	../SPLSPL/src/stm8s_tim2_TIM2_GetITStatus.c: 41: ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
; genLabel
;	-----------------------------------------
;	 function TIM2_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM2_GetITStatus:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_GetITStatus.c: 49: TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
; genPointerGet
	ld	a, 0x5302
; genAnd
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim2_TIM2_GetITStatus.c: 51: TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
; genPointerGet
	ld	a, 0x5301
; genAnd
	and	a, (0x02, sp)
;	../SPLSPL/src/stm8s_tim2_TIM2_GetITStatus.c: 53: if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
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
;	../SPLSPL/src/stm8s_tim2_TIM2_GetITStatus.c: 55: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim2_TIM2_GetITStatus.c: 59: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim2_TIM2_GetITStatus.c: 61: return (ITStatus)(bitstatus);
; genReturn
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim2_TIM2_GetITStatus.c: 62: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
