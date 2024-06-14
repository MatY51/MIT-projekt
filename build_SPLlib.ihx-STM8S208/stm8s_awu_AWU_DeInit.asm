;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_awu_AWU_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_DeInit
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
;	../SPLSPL/src/stm8s_awu_AWU_DeInit.c: 37: void AWU_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function AWU_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_AWU_DeInit:
;	../SPLSPL/src/stm8s_awu_AWU_DeInit.c: 39: AWU->CSR = AWU_CSR_RESET_VALUE;
; genPointerSet
	mov	0x50f0+0, #0x00
;	../SPLSPL/src/stm8s_awu_AWU_DeInit.c: 40: AWU->APR = AWU_APR_RESET_VALUE;
; genPointerSet
	mov	0x50f1+0, #0x3f
;	../SPLSPL/src/stm8s_awu_AWU_DeInit.c: 41: AWU->TBR = AWU_TBR_RESET_VALUE;
; genPointerSet
	mov	0x50f2+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_awu_AWU_DeInit.c: 42: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
