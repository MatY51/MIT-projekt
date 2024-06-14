;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_tim3_TIM3_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TIM3_GetITStatus
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
;	../SPLSPL/src/stm8s_tim3_TIM3_GetITStatus.c: 40: ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
; genLabel
;	-----------------------------------------
;	 function TIM3_GetITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_TIM3_GetITStatus:
	pushw	x
; genReceive
	ld	(0x02, sp), a
;	../SPLSPL/src/stm8s_tim3_TIM3_GetITStatus.c: 48: TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
; genPointerGet
	ld	a, 0x5322
; genAnd
	and	a, (0x02, sp)
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_tim3_TIM3_GetITStatus.c: 50: TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
; genPointerGet
	ld	a, 0x5321
; genAnd
	and	a, (0x02, sp)
;	../SPLSPL/src/stm8s_tim3_TIM3_GetITStatus.c: 52: if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
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
;	../SPLSPL/src/stm8s_tim3_TIM3_GetITStatus.c: 54: bitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_tim3_TIM3_GetITStatus.c: 58: bitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_tim3_TIM3_GetITStatus.c: 60: return (ITStatus)(bitstatus);
; genReturn
; genLabel
00105$:
;	../SPLSPL/src/stm8s_tim3_TIM3_GetITStatus.c: 61: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
