;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_SetLowPowerMode
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_SetLowPowerMode
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
;	../SPLSPL/src/stm8s_flash_FLASH_SetLowPowerMode.c: 37: void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
; genLabel
;	-----------------------------------------
;	 function FLASH_SetLowPowerMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_SetLowPowerMode:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_flash_FLASH_SetLowPowerMode.c: 43: FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
; genPointerGet
	ld	a, 0x505a
; genAnd
	and	a, #0xf3
; genPointerSet
	ld	0x505a, a
;	../SPLSPL/src/stm8s_flash_FLASH_SetLowPowerMode.c: 46: FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
; genPointerGet
	ld	a, 0x505a
; genOr
	or	a, (0x01, sp)
; genPointerSet
	ld	0x505a, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_SetLowPowerMode.c: 47: }
; genEndFunction
	pop	a
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
