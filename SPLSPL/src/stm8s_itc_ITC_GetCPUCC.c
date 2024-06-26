/**
  ******************************************************************************
  * @file    stm8s_itc.c
  * @author  MCD Application Team
  * @version V2.3.0
  * @date    16-June-2017
  * @brief   This file contains all the functions for the ITC peripheral.
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
#include "stm8s_itc.h"



/**
  * @brief  Utility function used to read CC register.
  * @param  None
  * @retval CPU CC register value
  */
uint8_t ITC_GetCPUCC(void)
{
#ifdef _COSMIC_
  _asm("push cc");
  _asm("pop a");
  return; /* Ignore compiler warning, the returned value is in A register */
#elif defined _RAISONANCE_ /* _RAISONANCE_ */
  return _getCC_();
#elif defined(_SDCC_)                    /* SDCC patch: do same as IAR */
  __asm__("push cc");
  __asm__("pop a");
#else /* _IAR_ */
  asm("push cc");
  asm("pop a"); /* Ignore compiler warning, the returned value is in A register */
#endif /* _COSMIC_*/
}