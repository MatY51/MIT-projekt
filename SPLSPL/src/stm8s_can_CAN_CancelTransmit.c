/**
  ******************************************************************************
  * @file    stm8s_can.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the CAN peripheral.
   ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT 2014 STMicroelectronics</center></h2>
  *
  * Licensed under MCD-ST Liberty SW License Agreement V2, (the "License");
  * You may not use this file except in compliance with the License.
  * You may obtain a copy of the License at:
  *
  *        http://www.st.com/software_license_agreement_liberty_v2
  *
  * Unless required by applicable law or agreed to in writing, software 
  * distributed under the License is distributed on an "AS IS" BASIS, 
  * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  * See the License for the specific language governing permissions and
  * limitations under the License.
  *
  ******************************************************************************
  */
#include "stm8s_can.h"



/**
  * @brief  Cancels a transmit request.
  * @param  CAN_TransmitMailbox : the Transmission mailbox, can be one of CAN_TransmitMailBox_TypeDef
  * @retval None
  */
void CAN_CancelTransmit(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
{
  CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
  /* Check the parameters */
  assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
  /*switch to the specific page */
  CAN->PSR = (uint8_t)CAN_TransmitMailbox;
  /* abort transmission */
  CAN->Page.TxMailbox.MCSR |= CAN_MCSR_ABRQ;
  /*Restore Last Page*/
  CAN_SelectPage(can_page);
}