/*
 * Empty C++ Application
 */
#include<xil_io.h>
#include<xparameters.h>
#include<xiic.h>
#include<xil_types.h>


int main()
{
	XIic_Config *xiic_conf;
	XIic* xiic_inst;
	u8 buffbe,buffki;
	int kutyu_cime=0;
	xiic_conf=XIic_LookupConfig(XPAR_XPS_IIC_0_DEVICE_ID);
	XIic_CfgInitialize(xiic_inst, xiic_conf, XPAR_IIC_0_BASEADDR);

	XIic_SetAddress(xiic_inst, XII_ADDR_TO_SEND_TYPE, kutyu_cime);

	XIic_Start(xiic_inst);

	XIic_MasterRecv(xiic_inst, &buffbe, 1);
	XIic_MasterSend(xiic_inst, &buffki, 1);


	xil_printf("hello");
	while(1){
		for(int i=0 ; i<70000;i++);
		Xil_Out32(XPAR_TEST_PINS_BASEADDR, 0xffffffff);
		for(int i=0 ; i<70000;i++);
		Xil_Out32(XPAR_TEST_PINS_BASEADDR, 0x0000000);

	}
	return 0;
}
