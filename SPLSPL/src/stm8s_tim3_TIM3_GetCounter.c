/**
  ******************************************************************************
  * @file    stm8s_tim3.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the TIM3 peripheral.
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
#include "stm8s_tim3.h"



/**
  * @brief  Gets the TIM3 Counter value.
  * @param  None
  * @retval Counter Register value.
  */
uint16_t TIM3_GetCounter(void)
{
  uint16_t tmpcntr = 0;
  
  tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
  /* Get the Counter Register value */
  return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
}