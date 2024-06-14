/**
  ******************************************************************************
  * @file    stm8s_flash.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the FLASH peripheral.
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
#include "stm8s_flash.h"



/**
  * @brief  Enables or Disables the Flash interrupt mode
  * @param  NewState : The new state of the flash interrupt mode
  *         This parameter can be a value of @ref FunctionalState enumeration.
  * @retval None
  */
void FLASH_ITConfig(FunctionalState NewState)
{
  /* Check parameter */
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));
  
  if(NewState != DISABLE)
  {
    FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
  }
  else
  {
    FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
  }
}