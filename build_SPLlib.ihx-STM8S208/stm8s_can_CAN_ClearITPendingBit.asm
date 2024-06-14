;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_ClearITPendingBit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_SelectPage
	.globl _CAN_GetSelectedPage
	.globl _CAN_ClearITPendingBit
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
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 46: void CAN_ClearITPendingBit(CAN_IT_TypeDef CAN_IT)
; genLabel
;	-----------------------------------------
;	 function CAN_ClearITPendingBit
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_CAN_ClearITPendingBit:
; genReceive
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 48: CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
; genCall
	pushw	x
	call	_CAN_GetSelectedPage
	popw	x
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 52: switch (CAN_IT)
; genCast
; genAssign
; genCmpEQorNE
	cpw	x, #0x0001
	jrne	00178$
	jp	00101$
00178$:
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0x0004
	jrne	00181$
	jp	00102$
00181$:
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0x0008
	jrne	00184$
	jp	00103$
00184$:
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0x0080
	jrne	00187$
	jp	00104$
00187$:
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0x0100
	jrne	00190$
	jp	00106$
00190$:
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0x0200
	jrne	00193$
	jp	00107$
00193$:
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0x0400
	jrne	00196$
	jp	00108$
00196$:
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0x0800
	jrne	00199$
	jp	00109$
00199$:
; skipping generated iCode
; genCmpEQorNE
	cpw	x, #0x4000
	jrne	00202$
	jp	00105$
00202$:
; skipping generated iCode
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 54: case CAN_IT_TME:
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 55: CAN->TSR = CAN_TSR_RQCP012;/* rc_w1*/
; genPointerSet
	mov	0x5422+0, #0x07
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 56: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 58: case CAN_IT_FF:
; genLabel
00102$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 59: CAN->RFR = CAN_RFR_FULL; /* rc_w1*/
; genPointerSet
	mov	0x5424+0, #0x08
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 60: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 62: case CAN_IT_FOV:
; genLabel
00103$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 63: CAN->RFR = CAN_RFR_FOVR; /* rc_w1*/
; genPointerSet
	mov	0x5424+0, #0x10
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 64: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 66: case CAN_IT_WKU:
; genLabel
00104$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 67: CAN->MSR = CAN_MSR_WKUI;  /* rc_w1*/
; genPointerSet
	mov	0x5421+0, #0x08
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 68: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 70: case CAN_IT_ERR:
; genLabel
00105$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 71: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 72: CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
; genPointerSet
	mov	0x5428+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 73: CAN->MSR = CAN_MSR_ERRI;
; genPointerSet
	mov	0x5421+0, #0x04
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 74: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 76: case CAN_IT_EWG:
; genLabel
00106$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 77: CAN->MSR = CAN_MSR_ERRI;
; genPointerSet
	mov	0x5421+0, #0x04
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 78: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 80: case CAN_IT_EPV:
; genLabel
00107$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 81: CAN->MSR = CAN_MSR_ERRI;
; genPointerSet
	mov	0x5421+0, #0x04
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 82: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 84: case CAN_IT_BOF:
; genLabel
00108$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 85: CAN->MSR = CAN_MSR_ERRI;
; genPointerSet
	mov	0x5421+0, #0x04
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 86: break;
; genGoto
	jp	00111$
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 88: case CAN_IT_LEC:
; genLabel
00109$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 89: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 90: CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
; genPointerSet
	mov	0x5428+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 95: }
; genLabel
00111$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 97: CAN_SelectPage(can_page);
; genSend
; genCall
	jp	_CAN_SelectPage
; genLabel
00112$:
;	../SPLSPL/src/stm8s_can_CAN_ClearITPendingBit.c: 98: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
