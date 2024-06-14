;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_DeInit
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
;	../SPLSPL/src/stm8s_spi_SPI_DeInit.c: 36: void SPI_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function SPI_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_DeInit:
;	../SPLSPL/src/stm8s_spi_SPI_DeInit.c: 38: SPI->CR1    = SPI_CR1_RESET_VALUE;
; genPointerSet
	mov	0x5200+0, #0x00
;	../SPLSPL/src/stm8s_spi_SPI_DeInit.c: 39: SPI->CR2    = SPI_CR2_RESET_VALUE;
; genPointerSet
	mov	0x5201+0, #0x00
;	../SPLSPL/src/stm8s_spi_SPI_DeInit.c: 40: SPI->ICR    = SPI_ICR_RESET_VALUE;
; genPointerSet
	mov	0x5202+0, #0x00
;	../SPLSPL/src/stm8s_spi_SPI_DeInit.c: 41: SPI->SR     = SPI_SR_RESET_VALUE;
; genPointerSet
	mov	0x5203+0, #0x02
;	../SPLSPL/src/stm8s_spi_SPI_DeInit.c: 42: SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
; genPointerSet
	mov	0x5205+0, #0x07
; genLabel
00101$:
;	../SPLSPL/src/stm8s_spi_SPI_DeInit.c: 43: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
