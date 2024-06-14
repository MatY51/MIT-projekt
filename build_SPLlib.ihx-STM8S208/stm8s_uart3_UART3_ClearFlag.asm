;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_uart3_UART3_ClearFlag
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _UART3_ClearFlag
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
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 59: void UART3_ClearFlag(UART3_Flag_TypeDef UART3_FLAG)
; genLabel
;	-----------------------------------------
;	 function UART3_ClearFlag
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_UART3_ClearFlag:
; genReceive
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 65: if (UART3_FLAG == UART3_FLAG_RXNE)
; genCast
; genAssign
; genCmpEQorNE
	cpw	x, #0x0020
	jrne	00134$
	jp	00135$
00134$:
	jp	00108$
00135$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 67: UART3->SR = (uint8_t)~(UART3_SR_RXNE);
; genPointerSet
	mov	0x5240+0, #0xdf
; genGoto
	jp	00110$
; genLabel
00108$:
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 70: else if (UART3_FLAG == UART3_FLAG_LBDF)
; genCmpEQorNE
	cpw	x, #0x0210
	jrne	00137$
	jp	00138$
00137$:
	jp	00105$
00138$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 72: UART3->CR4 &= (uint8_t)(~UART3_CR4_LBDF);
; genPointerGet
	ld	a, 0x5247
; genAnd
	and	a, #0xef
; genPointerSet
	ld	0x5247, a
; genGoto
	jp	00110$
; genLabel
00105$:
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 77: UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
; genPointerGet
	ld	a, 0x5249
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 75: else if (UART3_FLAG == UART3_FLAG_LHDF)
; genCmpEQorNE
	cpw	x, #0x0302
	jrne	00140$
	jp	00141$
00140$:
	jp	00102$
00141$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 77: UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x5249, a
; genGoto
	jp	00110$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 82: UART3->CR6 &= (uint8_t)(~UART3_CR6_LSF);
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x5249, a
; genLabel
00110$:
;	../SPLSPL/src/stm8s_uart3_UART3_ClearFlag.c: 84: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
