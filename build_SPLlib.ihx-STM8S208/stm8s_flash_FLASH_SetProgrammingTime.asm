;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_SetProgrammingTime
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_SetProgrammingTime
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
;	../SPLSPL/src/stm8s_flash_FLASH_SetProgrammingTime.c: 37: void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
; genLabel
;	-----------------------------------------
;	 function FLASH_SetProgrammingTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_SetProgrammingTime:
; genReceive
	ld	xl, a
;	../SPLSPL/src/stm8s_flash_FLASH_SetProgrammingTime.c: 42: FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
; genPointerGet
	ld	a, 0x505a
; genAnd
	and	a, #0xfe
; genPointerSet
	ld	0x505a, a
;	../SPLSPL/src/stm8s_flash_FLASH_SetProgrammingTime.c: 43: FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
; genPointerGet
	ld	a, 0x505a
; genCast
; genAssign
; genOr
	pushw	x
	or	a, (2, sp)
	popw	x
; genPointerSet
	ld	0x505a, a
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_SetProgrammingTime.c: 44: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
