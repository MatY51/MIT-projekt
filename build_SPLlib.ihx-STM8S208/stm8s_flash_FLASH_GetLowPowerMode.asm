;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_GetLowPowerMode
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_GetLowPowerMode
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
;	../SPLSPL/src/stm8s_flash_FLASH_GetLowPowerMode.c: 36: FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetLowPowerMode
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_GetLowPowerMode:
;	../SPLSPL/src/stm8s_flash_FLASH_GetLowPowerMode.c: 38: return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
; genPointerGet
	ld	a, 0x505a
; genAnd
	and	a, #0x0c
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_GetLowPowerMode.c: 39: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
