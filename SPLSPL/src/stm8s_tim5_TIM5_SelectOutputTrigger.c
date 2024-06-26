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
  * @brief  Selects the TIM5 Trigger Output Mode.
  * @param   TIM5_TRGOSource : Specifies the Trigger Output source.
  * This parameter can be one of the @ref TIM5_TRGOSource_TypeDef enumeration.
  * @retval None
  */
void TIM5_SelectOutputTrigger(TIM5_TRGOSource_TypeDef TIM5_TRGOSource)
{
  uint8_t tmpcr2 = 0;
  
  /* Check the parameters */
  assert_param(IS_TIM5_TRGO_SOURCE_OK(TIM5_TRGOSource));
  
  tmpcr2 = TIM5->CR2;
  
  /* Reset the MMS Bits */
  tmpcr2 &= (uint8_t)(~TIM5_CR2_MMS);
  
  /* Select the TRGO source */
  tmpcr2 |=  (uint8_t)TIM5_TRGOSource;
  
  TIM5->CR2 = tmpcr2;
}