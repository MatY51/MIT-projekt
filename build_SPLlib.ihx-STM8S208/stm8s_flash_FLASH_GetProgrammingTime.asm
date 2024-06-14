;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_GetProgrammingTime
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_GetProgrammingTime
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
;	../SPLSPL/src/stm8s_flash_FLASH_GetProgrammingTime.c: 36: FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetProgrammingTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_GetProgrammingTime:
;	../SPLSPL/src/stm8s_flash_FLASH_GetProgrammingTime.c: 38: return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
; genPointerGet
	ld	a, 0x505a
; genGetABit
	and	a, #0x01
; genReturn
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_GetProgrammingTime.c: 39: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
