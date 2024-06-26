/**
  ******************************************************************************
  * @file    stm8s_tim1.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the TIM1 peripheral.
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
#include "stm8s_tim1.h"



/**
  * @brief  Gets the TIM1 Input Capture 2 value.
  * @param  None
  * @retval Capture Compare 2 Register value.
  */
uint16_t TIM1_GetCapture2(void)
{
  /* Get the Capture 2 Register value */
  
  uint16_t tmpccr2 = 0;
  uint8_t tmpccr2l=0, tmpccr2h=0;
  
  tmpccr2h = TIM1->CCR2H;
  tmpccr2l = TIM1->CCR2L;
  
  tmpccr2 = (uint16_t)(tmpccr2l);
  tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
  /* Get the Capture 2 Register value */
  return (uint16_t)tmpccr2;
}