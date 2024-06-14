;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_spi_SPI_GetITStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SPI_GetITStatus
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
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 44: ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
; genLabel
;	-----------------------------------------
;	 function SPI_GetITStatus
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 2 bytes.
_SPI_GetITStatus:
	pushw	x
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 53: itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
; genAnd
	ld	a, xl
	and	a, #0x0f
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x02, sp), a
	pop	a
	tnz	a
	jreq	00122$
00121$:
	sll	(0x01, sp)
	dec	a
	jrne	00121$
00122$:
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 56: itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
; genRightShiftLiteral
	ld	a, xl
	swap	a
	and	a, #0x0f
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 58: itmask2 = (uint8_t)((uint8_t)1 << itmask1);
; genLeftShift
	push	a
	ld	a, #0x01
	ld	(0x03, sp), a
	pop	a
	tnz	a
	jreq	00124$
00123$:
	sll	(0x02, sp)
	dec	a
	jrne	00123$
00124$:
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 60: enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
; genPointerGet
	ld	a, 0x5203
; genAnd
	and	a, (0x02, sp)
	ld	xl, a
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 62: if (((SPI->ICR & itpos) != RESET) && enablestatus)
; genPointerGet
	ld	a, 0x5202
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00125$
	jp	00102$
00125$:
; genIfx
	ld	a, xl
	tnz	a
	jrne	00126$
	jp	00102$
00126$:
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 65: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 70: pendingbitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 73: return  pendingbitstatus;
; genReturn
; genLabel
00105$:
;	../SPLSPL/src/stm8s_spi_SPI_GetITStatus.c: 74: }
; genEndFunction
	popw	x
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
