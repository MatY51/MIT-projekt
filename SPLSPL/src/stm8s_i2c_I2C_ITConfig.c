/**
  ******************************************************************************
  * @file    stm8s_i2c.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the I2C peripheral.
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
#include "stm8s_i2c.h"



/**
  * @brief  Enables or disables the specified I2C interrupt.
  * @param  I2C_IT : Name of the interrupt to enable or disable.
  *         This parameter can be any of the  @ref I2C_IT_TypeDef enumeration.
  * @param  NewState : State of the interrupt to apply.
  *         This parameter can be any of the @ref FunctionalState enumeration.
  * @retval None
  */
void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
{
  /* Check functions parameters */
  assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
  assert_param(IS_FUNCTIONALSTATE_OK(NewState));

  if (NewState != DISABLE)
  {
    /* Enable the selected I2C interrupts */
    I2C->ITR |= (uint8_t)I2C_IT;
  }
  else /* NewState == DISABLE */
  {
    /* Disable the selected I2C interrupts */
    I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
  }
}