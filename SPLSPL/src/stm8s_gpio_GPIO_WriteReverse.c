/**
  ******************************************************************************
  * @file    stm8s_gpio.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the GPIO peripheral.
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
#include "stm8s_gpio.h"



/**
  * @brief  Writes reverse level to the specified GPIO pins.
  * @note   The port must be configured in output mode.
  * @param  GPIOx : Select the GPIO peripheral number (x = A to I).
  * @param  PortPins : Specifies the pins to be reversed to the port output.
  *         data register.
  * @retval None
  */
void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
{
  GPIOx->ODR ^= (uint8_t)PortPins;
}