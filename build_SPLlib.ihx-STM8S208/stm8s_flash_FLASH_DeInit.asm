;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_DeInit
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
;	../SPLSPL/src/stm8s_flash_FLASH_DeInit.c: 36: void FLASH_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_FLASH_DeInit:
;	../SPLSPL/src/stm8s_flash_FLASH_DeInit.c: 38: FLASH->CR1 = FLASH_CR1_RESET_VALUE;
; genPointerSet
	mov	0x505a+0, #0x00
;	../SPLSPL/src/stm8s_flash_FLASH_DeInit.c: 39: FLASH->CR2 = FLASH_CR2_RESET_VALUE;
; genPointerSet
	mov	0x505b+0, #0x00
;	../SPLSPL/src/stm8s_flash_FLASH_DeInit.c: 40: FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
; genPointerSet
	mov	0x505c+0, #0xff
;	../SPLSPL/src/stm8s_flash_FLASH_DeInit.c: 41: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
; genPointerGet
	ld	a, 0x505f
; genAnd
	and	a, #0xf7
; genPointerSet
	ld	0x505f, a
;	../SPLSPL/src/stm8s_flash_FLASH_DeInit.c: 42: FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
; genPointerGet
	ld	a, 0x505f
; genAnd
	and	a, #0xfd
; genPointerSet
	ld	0x505f, a
;	../SPLSPL/src/stm8s_flash_FLASH_DeInit.c: 43: (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
; genPointerGet
; Dummy read
	ld	a, 0x505f
; genLabel
00101$:
;	../SPLSPL/src/stm8s_flash_FLASH_DeInit.c: 44: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
