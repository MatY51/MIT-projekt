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


#if defined (_SDCC_BIGMEM_)
/**
  * @brief  write single byte to address
  * @note   is required for >64kB memory space and SDCC, which doesn't yet support far pointers
  * @param  Address : address to write to
  *         Data :    value to write
  * @retval None
  */
void write_byte_address(uint32_t Address, uint8_t Data)
{
#if defined (_SDCC_GAS_)
    *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
#else
  /* store address & data globally for assember */
  asm_addr = Address;
  asm_val  = Data;

  /* use inline assembler to write to 16b/24b address */
__asm
  ld a,_asm_val
  ldf [_asm_addr+1].e,a
__endasm;
#endif

}
#endif // _SDCC_BIGMEM_
