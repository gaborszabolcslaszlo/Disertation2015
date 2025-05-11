##############################################################################
## Filename:          C:\Diak\gszl\MicroBlazeproject/drivers/not_gate_v1_00_a/data/not_gate_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Jun 23 13:03:45 2014 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "not_gate" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
