/**
  ******************************************************************************
  * @file    stm8s_adc2.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions/macros for the ADC2 peripheral.
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
#include "stm8s_adc2.h"



/**
  * @brief  Deinitializes the ADC2 peripheral registers to their default reset
  * values.
  * @param  None
  * @retval None
  */
void ADC2_DeInit(void)
{
  ADC2->CSR  = ADC2_CSR_RESET_VALUE;
  ADC2->CR1  = ADC2_CR1_RESET_VALUE;
  ADC2->CR2  = ADC2_CR2_RESET_VALUE;
  ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
  ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
}