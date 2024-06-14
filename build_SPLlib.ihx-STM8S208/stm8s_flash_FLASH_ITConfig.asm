;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_ITConfig
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_ITConfig
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
;	../SPLSPL/src/stm8s_flash_FLASH_ITConfig.c: 37: void FLASH_ITConfig(FunctionalState NewState)
; genLabel
;	-----------------------------------------
;	 function FLASH_ITConfig
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_ITConfig:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_flash_FLASH_ITConfig.c: 44: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
; genPointerGet
	ld	a, 0x505a
;	../SPLSPL/src/stm8s_flash_FLASH_ITConfig.c: 42: if(NewState != DISABLE)
; genIfx
	tnz	(0x01, sp)
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_flash_FLASH_ITConfig.c: 44: FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
; genOr
	or	a, #0x02
; genPointerSet
	ld	0x505a, a
; genGoto
	jp	00104$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_flash_FLASH_ITConfig.c: 48: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x505a, a
; genLabel
00104$:
;	../SPLSPL/src/stm8s_flash_FLASH_ITConfig.c: 50: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
