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
  * @brief  Forces the TIM5 Channel3 output waveform to active or inactive level.
  * @param   TIM5_ForcedAction specifies the forced Action to be set to the output waveform.
  * This parameter can be one of the following values:
  *                       - TIM5_FORCEDACTION_ACTIVE: Force active level on OC3REF
  *                       - TIM5_FORCEDACTION_INACTIVE: Force inactive level on
  *                         OC3REF.
  * @retval None
  */
void TIM5_ForcedOC3Config(TIM5_ForcedAction_TypeDef TIM5_ForcedAction)
{
  /* Check the parameters */
  assert_param(IS_TIM5_FORCED_ACTION_OK(TIM5_ForcedAction));
  
  /* Reset the OCM Bits */ /* Configure The Forced output Mode */
  TIM5->CCMR3  =  (uint8_t)((uint8_t)(TIM5->CCMR3 & (uint8_t)(~TIM5_CCMR_OCM))  
                            | (uint8_t)TIM5_ForcedAction);
}