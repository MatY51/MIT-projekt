/**
  ******************************************************************************
  * @file    stm8s_tim1.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the TIM1 peripheral.
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
#include "stm8s_tim1.h"



/**
  * @brief  Enables or Disables the TIM1 Update event.
  * @param   NewState new state of the TIM1 peripheral Preload register. This parameter can
  * be ENABLE or DISABLE.
  * @retval None
  */

void TIM1_UpdateDisableConfig(FunctionalState NewState)
{
  /* Check the parameters */
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  
  /* Set or Reset the UDIS Bit */
  if (NewState != DISABLE)
  {
    TIM1->CR1 |= TIM1_CR1_UDIS;
  }
  else
  {
    TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
  }
}