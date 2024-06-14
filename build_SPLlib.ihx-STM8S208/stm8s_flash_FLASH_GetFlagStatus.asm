;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_GetFlagStatus
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_GetFlagStatus
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
;	../SPLSPL/src/stm8s_flash_FLASH_GetFlagStatus.c: 39: FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetFlagStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_FLASH_GetFlagStatus:
	push	a
; genReceive
	ld	(0x01, sp), a
;	../SPLSPL/src/stm8s_flash_FLASH_GetFlagStatus.c: 46: if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
; genPointerGet
	ld	a, 0x505f
; genAnd
	and	a, (0x01, sp)
; genIfx
	tnz	a
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_flash_FLASH_GetFlagStatus.c: 48: status = SET; /* FLASH_FLAG is set */
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_flash_FLASH_GetFlagStatus.c: 52: status = RESET; /* FLASH_FLAG is reset*/
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_flash_FLASH_GetFlagStatus.c: 56: return status;
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_flash_FLASH_GetFlagStatus.c: 57: }
; genEndFunction
	addw	sp, #1
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
