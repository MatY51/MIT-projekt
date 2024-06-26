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
  * @brief  Sets the TIM5 Input Capture 1 prescaler.
  * @param   TIM5_IC1Prescaler specifies the Input Capture prescaler new value
  * This parameter can be one of the following values:
  *                       - TIM5_ICPSC_DIV1: no prescaler
  *                       - TIM5_ICPSC_DIV2: capture is done once every 2 events
  *                       - TIM5_ICPSC_DIV4: capture is done once every 4 events
  *                       - TIM5_ICPSC_DIV8: capture is done once every 8 events
  * @retval None
  */
void TIM5_SetIC1Prescaler(TIM5_ICPSC_TypeDef TIM5_IC1Prescaler)
{
  /* Check the parameters */
  assert_param(IS_TIM5_IC_PRESCALER_OK(TIM5_IC1Prescaler));
  
  /* Reset the IC1PSC Bits */ /* Set the IC1PSC value */
  TIM5->CCMR1 = (uint8_t)((uint8_t)(TIM5->CCMR1 & (uint8_t)(~TIM5_CCMR_ICxPSC))|
                          (uint8_t)TIM5_IC1Prescaler);
}