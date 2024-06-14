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
  * @brief  Returns the Boot memory size in bytes
  * @param  None
  * @retval Boot memory size in bytes
  */
uint32_t FLASH_GetBootSize(void)
{
  uint32_t temp = 0;
  
  /* Calculates the number of bytes */
  temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
  
  /* Correction because size of 127.5 kb doesn't exist */
  if(FLASH->FPR == 0xFF)
  {
    temp += 512;
  }
  
  /* Return value */
  return(temp);
}