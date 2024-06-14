/**
  ******************************************************************************
  * @file    stm8s_tim2.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the TIM2 peripheral.
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
#include "stm8s_tim2.h"



/**
  * @brief  Configures the TIM2 Channel 1 polarity.
  * @param   TIM2_OCPolarity specifies the OC1 Polarity.
  * This parameter can be one of the following values:
  *                       - TIM2_OCPOLARITY_LOW: Output Compare active low
  *                       - TIM2_OCPOLARITY_HIGH: Output Compare active high
  * @retval None
  */
void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
{
  /* Check the parameters */
  assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
  
  /* Set or Reset the CC1P Bit */
  if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
  {
    TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
  }
  else
  {
    TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
  }
}