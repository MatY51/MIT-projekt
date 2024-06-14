;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_ITConfig
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
;	../SPLSPL/src/stm8s_spi_SPI_ITConfig.c: 38: void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function SPI_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_SPI_ITConfig:
	push	a
; genReceive
;	../SPLSPL/src/stm8s_spi_SPI_ITConfig.c: 46: itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
; genAnd
	and	a, #0x0f
	ld	xl, a
; genLeftShift
	ld	a, #0x01
	push	a
	ld	a, xl
	tnz	a
	jreq	00114$
00113$:
	sll	(1, sp)
	dec	a
	jrne	00113$
00114$:
	pop	a
;	../SPLSPL/src/stm8s_spi_SPI_ITConfig.c: 50: SPI->ICR |= itpos; /* Enable interrupt*/
; genPointerGet
	ldw	x, #0x5202
	push	a
	ld	a, (x)
	ld	(0x02, sp), a
	pop	a
;	../SPLSPL/src/stm8s_spi_SPI_ITConfig.c: 48: if (NewState != DISABLE)
; genIfx
	tnz	(0x04, sp)
	jrne	00115$
	jp	00102$
00115$:
;	../SPLSPL/src/stm8s_spi_SPI_ITConfig.c: 50: SPI->ICR |= itpos; /* Enable interrupt*/
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x5202, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_spi_SPI_ITConfig.c: 54: SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
; genCpl
	cpl	a
; genAnd
	and	a, (0x01, sp)
; genPointerSet
	ld	0x5202, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_spi_SPI_ITConfig.c: 56: }
; genEndFunction
	pop	a
	popw	x
	pop	a
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
