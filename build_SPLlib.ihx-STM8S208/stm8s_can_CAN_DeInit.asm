;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.0 #14620 (Linux)
;--------------------------------------------------------
	.module stm8s_can_CAN_DeInit
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CAN_OperatingModeRequest
	.globl _CAN_DeInit
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
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 36: void CAN_DeInit(void)
; genLabel
;	-----------------------------------------
;	 function CAN_DeInit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CAN_DeInit:
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 39: CAN->MCR = CAN_MCR_INRQ;
; genPointerSet
	mov	0x5420+0, #0x01
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 40: CAN->PSR = CAN_Page_Config;
; genPointerSet
	mov	0x5427+0, #0x06
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 41: CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
; genSend
	clr	a
; genCall
	call	_CAN_OperatingModeRequest
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 42: CAN->Page.Config.ESR = CAN_ESR_RESET_VALUE;
; genPointerSet
	mov	0x5428+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 43: CAN->Page.Config.EIER = CAN_EIER_RESET_VALUE;
; genPointerSet
	mov	0x5429+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 44: CAN->Page.Config.BTR1 = CAN_BTR1_RESET_VALUE;
; genPointerSet
	mov	0x542c+0, #0x40
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 45: CAN->Page.Config.BTR2 = CAN_BTR2_RESET_VALUE;
; genPointerSet
	mov	0x542d+0, #0x23
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 46: CAN->Page.Config.FMR1 = CAN_FMR1_RESET_VALUE;
; genPointerSet
	mov	0x5430+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 47: CAN->Page.Config.FMR2 = CAN_FMR2_RESET_VALUE;
; genPointerSet
	mov	0x5431+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 48: CAN->Page.Config.FCR1 = CAN_FCR_RESET_VALUE;
; genPointerSet
	mov	0x5432+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 49: CAN->Page.Config.FCR2 = CAN_FCR_RESET_VALUE;
; genPointerSet
	mov	0x5433+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 50: CAN->Page.Config.FCR3 = CAN_FCR_RESET_VALUE;
; genPointerSet
	mov	0x5434+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 51: CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
; genSend
	ld	a, #0x01
; genCall
	call	_CAN_OperatingModeRequest
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 52: CAN->PSR = CAN_Page_RxFifo;
; genPointerSet
	mov	0x5427+0, #0x07
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 53: CAN->Page.RxFIFO.MDLCR = CAN_MDLC_RESET_VALUE;
; genPointerSet
	mov	0x5429+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 54: CAN->PSR = CAN_Page_TxMailBox0;
; genPointerSet
	mov	0x5427+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 55: CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
; genPointerSet
	mov	0x5429+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 56: CAN->PSR = CAN_Page_TxMailBox1;
; genPointerSet
	mov	0x5427+0, #0x01
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 57: CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
; genPointerSet
	mov	0x5429+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 58: CAN->PSR = CAN_Page_TxMailBox2;
; genPointerSet
	mov	0x5427+0, #0x05
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 59: CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
; genPointerSet
	mov	0x5429+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 61: CAN->MCR = CAN_MCR_RESET_VALUE;
; genPointerSet
	mov	0x5420+0, #0x02
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 62: CAN->MSR = (uint8_t)(~CAN_MSR_RESET_VALUE);/* rc_w1 */
; genPointerSet
	mov	0x5421+0, #0xfd
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 63: CAN->TSR = (uint8_t)(~CAN_TSR_RESET_VALUE);/* rc_w1 */
; genPointerSet
	mov	0x5422+0, #0xff
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 64: CAN->RFR = (uint8_t)(~CAN_RFR_RESET_VALUE);/* rc_w1 */
; genPointerSet
	mov	0x5424+0, #0xff
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 65: CAN->IER = CAN_IER_RESET_VALUE;
; genPointerSet
	mov	0x5425+0, #0x00
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 66: CAN->DGR = CAN_DGR_RESET_VALUE;
; genPointerSet
	mov	0x5426+0, #0x0c
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 67: CAN->PSR = CAN_PSR_RESET_VALUE;
; genPointerSet
	mov	0x5427+0, #0x00
; genLabel
00101$:
;	../SPLSPL/src/stm8s_can_CAN_DeInit.c: 68: }
; genEndFunction
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
