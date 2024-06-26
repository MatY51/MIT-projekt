/**
  ********************************************************************************
  * @file    stm8s_uart4.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the UART4 peripheral.
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
#include "stm8s_uart4.h"



/**
  * @brief  Determines if the UART4 is in mute mode or not.
  * @param  NewState: new state of the UART4 mode.
  *         This parameter can be ENABLE or DISABLE
  * @retval None
  */
void UART4_ReceiverWakeUpCmd(FunctionalState NewState)
{
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  
  if(NewState != DISABLE)
  {
    /* Enable the mute mode UART4 by setting the RWU bit in the CR2 register */
    UART4->CR2 |= UART4_CR2_RWU;
  }
  else
  {
    /* Disable the mute mode UART4 by clearing the RWU bit in the CR1 register */
    UART4->CR2 &= ((uint8_t)~UART4_CR2_RWU);
  }
}