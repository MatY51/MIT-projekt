;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_CalculateCRCCmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_CalculateCRCCmd
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
;	../SPLSPL/src/stm8s_spi_SPI_CalculateCRCCmd.c: 37: void SPI_CalculateCRCCmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SPI_CalculateCRCCmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SPI_CalculateCRCCmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_spi_SPI_CalculateCRCCmd.c: 44: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
; genPointerGet
	ld	a, 0x5201
;	../SPLSPL/src/stm8s_spi_SPI_CalculateCRCCmd.c: 42: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_spi_SPI_CalculateCRCCmd.c: 44: SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
; genOr
	or	a, #0x20
; genPointerSet
	ld	0x5201, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_spi_SPI_CalculateCRCCmd.c: 48: SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
; genAnd
	and	a, #0xdf
; genPointerSet
	ld	0x5201, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_spi_SPI_CalculateCRCCmd.c: 50: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
