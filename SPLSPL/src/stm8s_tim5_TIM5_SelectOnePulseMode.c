/**
  ******************************************************************************
  * @file    stm8s_tim5.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the TIM5 peripheral.
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
#include "stm8s_tim5.h"



/**
  * @brief  Selects the TIM5s One Pulse Mode.
  * @param   TIM5_OPMode specifies the OPM Mode to be used.
  * This parameter can be one of the following values
  *                    - TIM5_OPMODE_SINGLE
  *                    - TIM5_OPMODE_REPETITIVE
  * @retval None
  */
void TIM5_SelectOnePulseMode(TIM5_OPMode_TypeDef TIM5_OPMode)
{
  /* Check the parameters */
  assert_param(IS_TIM5_OPM_MODE_OK(TIM5_OPMode));
  
  /* Set or Reset the OPM Bit */
  if (TIM5_OPMode != TIM5_OPMODE_REPETITIVE)
  {
    TIM5->CR1 |= TIM5_CR1_OPM ;
  }
  else
  {
    TIM5->CR1 &= (uint8_t)(~TIM5_CR1_OPM) ;
  }
}