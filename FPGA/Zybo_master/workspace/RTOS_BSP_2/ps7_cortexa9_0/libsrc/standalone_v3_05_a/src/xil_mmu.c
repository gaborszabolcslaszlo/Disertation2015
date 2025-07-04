/******************************************************************************
*
* (c) Copyright 2012 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE;
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
******************************************************************************/
/*****************************************************************************/
/**
* @file xil_mmu.c
*
* This file provides APIs for enabling/disabling MMU and setting the memory
* attributes for sections, in the MMU translation table.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- ---------------------------------------------------
* 1.00a sdm  01/12/12 Initial version
* 3.05a asa  03/10/12 Modified the Xil_EnableMMU to invalidate the caches
*		      before enabling back.
* 3.05a asa  04/15/12 Modified the Xil_SetTlbAttributes routine so that
*		      translation table and branch predictor arrays are
*		      invalidated, D-cache flushed before the attribute
*		      change is applied. This is done so that the user
*		      need not call Xil_DisableMMU before calling
*		      Xil_SetTlbAttributes.
* </pre>
*
* @note
*
* None.
*
******************************************************************************/

/***************************** Include Files *********************************/

#include "xil_cache.h"
#include "xpseudo_asm.h"
#include "xil_types.h"

/***************** Macros (Inline Functions) Definitions *********************/

/**************************** Type Definitions *******************************/

/************************** Constant Definitions *****************************/

/************************** Variable Definitions *****************************/

extern u32 MMUTable;

/************************** Function Prototypes ******************************/

/*****************************************************************************
*
* Set the memory attributes for a section, in the translation table. Each
* section covers 1MB of memory. For setting/changing an attribute in the
* translation table, the ARM specs suggests to first invalidate the old
* translation table and then do the change in attribute.
* We do the following:
* - First invalidate the unified TLB to invalidate the old translation table
* - We wait till the changes are synced and are visible to all
* - We invalidate the branch predictor array.
* - We flush the D-cache so that any change in the attribute will not give
*   undesired results.
* - Finally we update the translation table attribute
* - We do a dsb and isb so that the changes are visible to all.
*
* @param	addr is the address for which attributes are to be set.
* @param	attrib specifies the attributes for that memory region.
*
* @return	None.
*
* @note		The MMU and D-cache need not be disabled before changing an
*		translation table attribute.
*
******************************************************************************/
void Xil_SetTlbAttributes(u32 addr, u32 attrib)
{
	u32 *ptr;
	u32 section;

	mtcp(XREG_CP15_INVAL_UTLB_UNLOCKED, 0);
	dsb();

	mtcp(XREG_CP15_INVAL_BRANCH_ARRAY, 0);
	dsb();
	Xil_DCacheFlush();


	section = addr / 0x100000;
	ptr = &MMUTable + section;
	*ptr = (addr & 0xFFF00000) | attrib;
	dsb();
}

/*****************************************************************************
*
* Invalidate the caches, enable MMU and D Caches for Cortex A9 processor.
*
* @param	None.
* @return	None.
*
******************************************************************************/
void Xil_EnableMMU(void)
{
	u32 Reg;
	Xil_DCacheInvalidate();
	Xil_ICacheInvalidate();

#ifdef __GNUC__
	Reg = mfcp(XREG_CP15_SYS_CONTROL);
#else
	{ volatile register unsigned int Cp15Reg __asm(XREG_CP15_SYS_CONTROL);
	  Reg = Cp15Reg; }
#endif
	Reg |= 0x05;
	mtcp(XREG_CP15_SYS_CONTROL, Reg);

	dsb();
	isb();
}

/*****************************************************************************
*
* Disable MMU for Cortex A9 processors. This function invalidates the TLBs,
* Branch Predictor Array and flushed the D Caches before disabling
* the MMU and D cache.
*
* @param	None.
*
* @return	None.
*
******************************************************************************/
void Xil_DisableMMU(void)
{
	u32 Reg;

	mtcp(XREG_CP15_INVAL_UTLB_UNLOCKED, 0);
	mtcp(XREG_CP15_INVAL_BRANCH_ARRAY, 0);
	Xil_DCacheFlush();

#ifdef __GNUC__
	Reg = mfcp(XREG_CP15_SYS_CONTROL);
#else
	{ volatile register unsigned int Cp15Reg __asm(XREG_CP15_SYS_CONTROL);
	  Reg = Cp15Reg; }
#endif
	Reg &= ~0x05;
	mtcp(XREG_CP15_SYS_CONTROL, Reg);
}
