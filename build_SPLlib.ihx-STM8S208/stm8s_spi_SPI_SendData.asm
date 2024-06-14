;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_SendData
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_SendData
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
;	../SPLSPL/src/stm8s_spi_SPI_SendData.c: 36: void SPI_SendData(uint8_t Data)
; genLabel
;	-----------------------------------------
;	 function SPI_SendData
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_SPI_SendData:
; genReceive
;	../SPLSPL/src/stm8s_spi_SPI_SendData.c: 38: SPI->DR = Data; /* Write in the DR register the data to be sent*/
; genPointerSet
	ld	0x5204, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_spi_SPI_SendData.c: 39: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
