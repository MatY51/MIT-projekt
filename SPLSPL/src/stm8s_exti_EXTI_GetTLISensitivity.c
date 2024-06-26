/**
  ******************************************************************************
  * @file    stm8s_exti.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the EXTI peripheral.
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
#include "stm8s_exti.h"



/**
  * @brief  Get the TLI interrupt sensitivity.
  * @param  None
  * @retval EXTI_TLISensitivity_TypeDef The TLI interrupt sensitivity read.
  */
EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
{
  uint8_t value = 0;
  
  /* Get TLI interrupt sensitivity */
  value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
  
  return((EXTI_TLISensitivity_TypeDef)value);
}