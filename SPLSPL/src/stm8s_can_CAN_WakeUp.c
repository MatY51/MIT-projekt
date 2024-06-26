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
  * @brief  Wakes the CAN up.
  * @param  None
  * @retval CAN_WakeUp_Ok if sleep mode left, CAN_WakeUp_Failed in an other  case.
  */
CAN_WakeUp_TypeDef CAN_WakeUp(void)
{
  CAN_WakeUp_TypeDef wakeupstatus = CAN_WakeUp_Failed;
  
  /* Wake up request */
  CAN->MCR &= (uint8_t)(~CAN_MCR_SLEEP);
  
  /* Sleep mode status */
  if ((CAN->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
  {
    /* Sleep mode exited */
    wakeupstatus = CAN_WakeUp_Ok;
  }
  
  /* At this step, sleep mode status */
  return (CAN_WakeUp_TypeDef)wakeupstatus;
}