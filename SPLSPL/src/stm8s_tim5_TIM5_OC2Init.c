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
  * @brief  Initializes the TIM5 Channel2 according to the specified parameters.
  * @param   TIM5_OCMode specifies the Output Compare mode  from @ref TIM5_OCMode_TypeDef.
  * @param   TIM5_OutputState specifies the Output State  from @ref TIM5_OutputState_TypeDef.
  * @param   TIM5_Pulse specifies the Pulse width  value.
  * @param   TIM5_OCPolarity specifies the Output Compare Polarity  from @ref TIM5_OCPolarity_TypeDef.
  * @retval None
  */
void TIM5_OC2Init(TIM5_OCMode_TypeDef TIM5_OCMode,
                  TIM5_OutputState_TypeDef TIM5_OutputState,
                  uint16_t TIM5_Pulse,
                  TIM5_OCPolarity_TypeDef TIM5_OCPolarity)
{
  /* Check the parameters */
  assert_param(IS_TIM5_OC_MODE_OK(TIM5_OCMode));
  assert_param(IS_TIM5_OUTPUT_STATE_OK(TIM5_OutputState));
  assert_param(IS_TIM5_OC_POLARITY_OK(TIM5_OCPolarity));
  
  /* Disable the Channel 1: Reset the CCE Bit, Set the Output State , the Output Polarity */
  TIM5->CCER1 &= (uint8_t)(~( TIM5_CCER1_CC2E |  TIM5_CCER1_CC2P ));
  /* Set the Output State & Set the Output Polarity  */
  TIM5->CCER1 |= (uint8_t)((uint8_t)(TIM5_OutputState  & TIM5_CCER1_CC2E )| \
    (uint8_t)(TIM5_OCPolarity & TIM5_CCER1_CC2P));
  
  
  /* Reset the Output Compare Bits  & Set the Output Compare Mode */
  TIM5->CCMR2 = (uint8_t)((uint8_t)(TIM5->CCMR2 & (uint8_t)(~TIM5_CCMR_OCM)) |
                          (uint8_t)TIM5_OCMode);
  
  /* Set the Pulse value */
  TIM5->CCR2H = (uint8_t)(TIM5_Pulse >> 8);
  TIM5->CCR2L = (uint8_t)(TIM5_Pulse);
}