/**
  ********************************************************************************
  * @file    stm8s_uart3.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the uart3 peripheral.
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
#include "stm8s_uart3.h"



/**
  * @brief  Selects the UART3 WakeUp method.
  * @param  UART3_WakeUp: specifies the UART3 wakeup method.
  *         This parameter can be any of the @ref UART3_WakeUp_TypeDef values.
  * @retval None
  */
void UART3_WakeUpConfig(UART3_WakeUp_TypeDef UART3_WakeUp)
{
  /* Check the parameters */
  assert_param(IS_UART3_WAKEUP_OK(UART3_WakeUp));
  
  UART3->CR1 &= ((uint8_t)~UART3_CR1_WAKE);
  UART3->CR1 |= (uint8_t)UART3_WakeUp;
}