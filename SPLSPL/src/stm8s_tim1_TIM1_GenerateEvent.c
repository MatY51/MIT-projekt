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
  * @brief  Configures the TIM1 event to be generated by software.
  * @param   TIM1_EventSource specifies the event source.
  * This parameter can be one of the following values:
  *                       - TIM1_EVENTSOURCE_UPDATE: TIM1 update Event source
  *                       - TIM1_EVENTSOURCE_CC1: TIM1 Capture Compare 1 Event source
  *                       - TIM1_EVENTSOURCE_CC2: TIM1 Capture Compare 2 Event source
  *                       - TIM1_EVENTSOURCE_CC3: TIM1 Capture Compare 3 Event source
  *                       - TIM1_EVENTSOURCE_CC4: TIM1 Capture Compare 4 Event source
  *                       - TIM1_EVENTSOURCE_COM: TIM1 COM Event source
  *                       - TIM1_EVENTSOURCE_TRIGGER: TIM1 Trigger Event source
  *                       - TIM1_EventSourceBreak: TIM1 Break Event source
  * @retval None
  */
void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
{
  /* Check the parameters */
  assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
  
  /* Set the event sources */
  TIM1->EGR = (uint8_t)TIM1_EventSource;
}