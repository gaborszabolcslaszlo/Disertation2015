/*****************************************************************************
* Filename:          C:\Diak\gszl\MicroBlazeproject/drivers/not_gate_v1_00_a/src/not_gate.h
* Version:           1.00.a
* Description:       not_gate Driver Header File
* Date:              Mon Jun 23 13:03:45 2014 (by Create and Import Peripheral Wizard)
*****************************************************************************/

#ifndef NOT_GATE_H
#define NOT_GATE_H

/***************************** Include Files *******************************/

#include "xbasic_types.h"
#include "xstatus.h"
#include "xil_io.h"

/************************** Constant Definitions ***************************/


/**
 * User Logic Slave Space Offsets
 * -- SLV_REG0 : user logic slave module register 0
 */
#define NOT_GATE_USER_SLV_SPACE_OFFSET (0x00000000)
#define NOT_GATE_SLV_REG0_OFFSET (NOT_GATE_USER_SLV_SPACE_OFFSET + 0x00000000)

/**************************** Type Definitions *****************************/


/***************** Macros (Inline Functions) Definitions *******************/

/**
 *
 * Write a value to a NOT_GATE register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the NOT_GATE device.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void NOT_GATE_mWriteReg(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Data)
 *
 */
#define NOT_GATE_mWriteReg(BaseAddress, RegOffset, Data) \
 	Xil_Out32((BaseAddress) + (RegOffset), (Xuint32)(Data))

/**
 *
 * Read a value from a NOT_GATE register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the NOT_GATE device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	Xuint32 NOT_GATE_mReadReg(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define NOT_GATE_mReadReg(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (RegOffset))


/**
 *
 * Write/Read 32 bit value to/from NOT_GATE user logic slave registers.
 *
 * @param   BaseAddress is the base address of the NOT_GATE device.
 * @param   RegOffset is the offset from the slave register to write to or read from.
 * @param   Value is the data written to the register.
 *
 * @return  Data is the data from the user logic slave register.
 *
 * @note
 * C-style signature:
 * 	void NOT_GATE_mWriteSlaveRegn(Xuint32 BaseAddress, unsigned RegOffset, Xuint32 Value)
 * 	Xuint32 NOT_GATE_mReadSlaveRegn(Xuint32 BaseAddress, unsigned RegOffset)
 *
 */
#define NOT_GATE_mWriteSlaveReg0(BaseAddress, RegOffset, Value) \
 	Xil_Out32((BaseAddress) + (NOT_GATE_SLV_REG0_OFFSET) + (RegOffset), (Xuint32)(Value))

#define NOT_GATE_mReadSlaveReg0(BaseAddress, RegOffset) \
 	Xil_In32((BaseAddress) + (NOT_GATE_SLV_REG0_OFFSET) + (RegOffset))

/************************** Function Prototypes ****************************/


/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the NOT_GATE instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus NOT_GATE_SelfTest(void * baseaddr_p);

#endif /** NOT_GATE_H */
