;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_Cmd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_Cmd
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
;	../SPLSPL/src/stm8s_spi_SPI_Cmd.c: 37: void SPI_Cmd(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SPI_Cmd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SPI_Cmd:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_spi_SPI_Cmd.c: 44: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
; genPointerGet
	ld	a, 0x5200
;	../SPLSPL/src/stm8s_spi_SPI_Cmd.c: 42: if (NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_spi_SPI_Cmd.c: 44: SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
; genOr
	or	a, #0x40
; genPointerSet
	ld	0x5200, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_spi_SPI_Cmd.c: 48: SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
; genAnd
	and	a, #0xbf
; genPointerSet
	ld	0x5200, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_spi_SPI_Cmd.c: 50: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
