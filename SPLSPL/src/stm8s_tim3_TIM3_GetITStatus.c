/**
  ******************************************************************************
  * @file    stm8s_tim3.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the TIM3 peripheral.
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
#include "stm8s_tim3.h"



/**
  * @brief  Checks whether the TIM3 interrupt has occurred or not.
  * @param   TIM3_IT specifies the TIM3 interrupt source to check.
  * This parameter can be one of the following values:
  *                       - TIM3_IT_UPDATE: TIM3 update Interrupt source
  *                       - TIM3_IT_CC1: TIM3 Capture Compare 1 Interrupt source
  *                       - TIM3_IT_CC2: TIM3 Capture Compare 2 Interrupt source
  * @retval ITStatus The new state of the TIM3_IT(SET or RESET).
  */
ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
{
  ITStatus bitstatus = RESET;
  uint8_t TIM3_itStatus = 0, TIM3_itEnable = 0;
  
  /* Check the parameters */
  assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
  
  TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
  
  TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
  
  if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
  {
    bitstatus = SET;
  }
  else
  {
    bitstatus = RESET;
  }
  return (ITStatus)(bitstatus);
}