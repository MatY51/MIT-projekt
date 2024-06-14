;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_GetFlagStatus
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
;	../SPLSPL/src/stm8s_spi_SPI_GetFlagStatus.c: 39: FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
; genLabel
;	-----------------------------------------
;	 function SPI_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SPI_GetFlagStatus:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_spi_SPI_GetFlagStatus.c: 46: if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
; genPointerGet
	ld	a, 0x5203
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_spi_SPI_GetFlagStatus.c: 48: status = SET; /* SPI_FLAG is set */
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_spi_SPI_GetFlagStatus.c: 52: status = RESET; /* SPI_FLAG is reset*/
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_spi_SPI_GetFlagStatus.c: 56: return status;
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_spi_SPI_GetFlagStatus.c: 57: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
