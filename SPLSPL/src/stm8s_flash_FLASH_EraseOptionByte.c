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
#include "stm8s_flash_private.h"



/**
  * @brief  Erases option byte
  * @param  Address : Option byte address to erase
  * @retval None
  */
void FLASH_EraseOptionByte(uint16_t Address)
{
  /* Check parameter */
  assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
  
  /* Enable write access to option bytes */
  FLASH->CR2 |= FLASH_CR2_OPT;
  FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
  
  /* check if the option byte to erase is ROP */
  if(Address == 0x4800)
  {
    /* Erase option byte */
    *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
  }
  else
  {
    /* Erase option byte and his complement */
    *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
    *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
  }
  FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
  
  /* Disable write access to option bytes */
  FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
  FLASH->NCR2 |= FLASH_NCR2_NOPT;
}