;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_awu_AWU_Cmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _AWU_Cmd
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
;	../SPLSPL/src/stm8s_awu_AWU_Cmd.c: 38: void AWU_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function AWU_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_AWU_Cmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_awu_AWU_Cmd.c: 43: AWU->CSR |= AWU_CSR_AWUEN;
; genPointerGet
	ld	a, 0x50f0
;	../SPLSPL/src/stm8s_awu_AWU_Cmd.c: 40: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_awu_AWU_Cmd.c: 43: AWU->CSR |= AWU_CSR_AWUEN;
; genOr
	or	a, #0x10
; genPointerSet
	ld	0x50f0, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_awu_AWU_Cmd.c: 48: AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x50f0, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_awu_AWU_Cmd.c: 50: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
