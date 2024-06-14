;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __FMI
	.globl __Data
	.globl __DLC
	.globl __RTR
	.globl __IDE
	.globl __Id
	.globl _CheckITStatus
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
__Id::
	.ds 4
__IDE::
	.ds 1
__RTR::
	.ds 1
__DLC::
	.ds 1
__Data::
	.ds 8
__FMI::
	.ds 1
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
;	../SPLSPL/src/stm8s_can.c: 50: ITStatus CheckITStatus(uint8_t CAN_Reg, uint8_t It_Bit)
; genLabel
;	-----------------------------------------
;	 function CheckITStatus
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CheckITStatus:
; genReceive
;	../SPLSPL/src/stm8s_can.c: 53: if ((CAN_Reg & It_Bit) != (uint8_t)RESET)
; genAnd
	and	a, (0x03, sp)
; genIfx
	tnz	a
	jrne	00113$
	jp	00102$
00113$:
;	../SPLSPL/src/stm8s_can.c: 56: pendingbitstatus = SET;
; genAssign
	ld	a, #0x01
; genGoto
	jp	00103$
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can.c: 61: pendingbitstatus = RESET;
; genAssign
	clr	a
; genLabel
00103$:
;	../SPLSPL/src/stm8s_can.c: 63: return (ITStatus)pendingbitstatus;
; genReturn
; genLabel
00104$:
;	../SPLSPL/src/stm8s_can.c: 64: }
; genEndFunction
	popw	x
	addw	sp, #1
	jp	(x)
	.area CODE
	.area CONST
	.area INITIALIZER
__xinit___Id:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
__xinit___IDE:
	.db #0x00	; 0
__xinit___RTR:
	.db #0x00	; 0
__xinit___DLC:
	.db #0x00	; 0
__xinit___Data:
	.db #0x00	; 0
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
__xinit___FMI:
	.db #0x00	; 0
	.area CABS (ABS)
