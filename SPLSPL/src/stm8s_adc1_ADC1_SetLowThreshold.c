/**
  ******************************************************************************
  * @file    stm8s_adc1.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions/macros for the ADC1 peripheral.
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
#include "stm8s_adc1.h"



/**
  * @brief  Sets the low threshold of the analog watchdog.
  * @param   Threshold specifies the low threshold value.
  * this value depends on the reference voltage range.
  * @retval None
  */
void ADC1_SetLowThreshold(uint16_t Threshold)
{
  ADC1->LTRL = (uint8_t)Threshold;
  ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
}