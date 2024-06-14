;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_flash_FLASH_GetBootSize
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FLASH_GetBootSize
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
;	../SPLSPL/src/stm8s_flash_FLASH_GetBootSize.c: 36: uint32_t FLASH_GetBootSize(void)
; genLabel
;	-----------------------------------------
;	 function FLASH_GetBootSize
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_FLASH_GetBootSize:
;	../SPLSPL/src/stm8s_flash_FLASH_GetBootSize.c: 41: temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
; genPointerGet
	ld	a, 0x505d
; genCast
; genAssign
	clrw	y
	clrw	x
; genLeftShiftLiteral
	swapw	y
	ld	xh, a
	clr	a
	ld	xl, a
	sllw	x
	rlcw	y
;	../SPLSPL/src/stm8s_flash_FLASH_GetBootSize.c: 44: if(FLASH->FPR == 0xFF)
; genPointerGet
	ld	a, 0x505d
; genCmpEQorNE
	inc	a
	jrne	00113$
	jp	00114$
00113$:
	jp	00102$
00114$:
; skipping generated iCode
;	../SPLSPL/src/stm8s_flash_FLASH_GetBootSize.c: 46: temp += 512;
; genPlus
	addw	x, #0x0200
	ld	a, yl
	adc	a, #0x00
	ld	yl, a
	clr	a
	adc	a, #0x00
	ld	yh, a
; genLabel
00102$:
;	../SPLSPL/src/stm8s_flash_FLASH_GetBootSize.c: 50: return(temp);
; genReturn
; genLabel
00103$:
;	../SPLSPL/src/stm8s_flash_FLASH_GetBootSize.c: 51: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
