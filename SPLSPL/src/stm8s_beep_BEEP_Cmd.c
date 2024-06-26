/**
  ******************************************************************************
  * @file    stm8s_beep.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the BEEP peripheral.
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
#include "stm8s_beep.h"



/**
  * @brief  Enable or disable the BEEP function.
  * @param   NewState Indicates the new state of the BEEP function.
  * @retval None
  * @par Required preconditions:
  * Initialisation of BEEP and LS RC calibration must be done before.
  */
void BEEP_Cmd(FunctionalState NewState)
{
  if (NewState != DISABLE)
  {
    /* Enable the BEEP peripheral */
    BEEP->CSR |= BEEP_CSR_BEEPEN;
  }
  else
  {
    /* Disable the BEEP peripheral */
    BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
  }
}