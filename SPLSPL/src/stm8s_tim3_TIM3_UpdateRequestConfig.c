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
  * @brief  Selects the TIM3 Update Request Interrupt source.
  * @param   TIM3_UpdateSource specifies the Update source.
  * This parameter can be one of the following values
  *                       - TIM3_UPDATESOURCE_REGULAR
  *                       - TIM3_UPDATESOURCE_GLOBAL
  * @retval None
  */
void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
{
  /* Check the parameters */
  assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
  
  /* Set or Reset the URS Bit */
  if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
  {
    TIM3->CR1 |= TIM3_CR1_URS;
  }
  else
  {
    TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
  }
}