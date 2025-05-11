##############################################################################
##
## ***************************************************************************
## **                                                                       **
## ** Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.            **
## **                                                                       **
## ** You may copy and modify these files for your own internal use solely  **
## ** with Xilinx programmable logic devices and Xilinx EDK system or       **
## ** create IP modules solely for Xilinx programmable logic devices and    **
## ** Xilinx EDK system. No rights are granted to distribute any files      **
## ** unless they are distributed in Xilinx programmable logic devices.     **
## **                                                                       **
## ***************************************************************************
##
##############################################################################

proc generate {drv_handle} {
    puts "Generating Macros for ipsdksebesegespozicio_plbw driver access ... "

    # initialize
    lappend config_table
    lappend addr_config_table
    lappend xparam_config_table

    # hardware version
    lappend config_table "C_XC_VERSION"
    # Low-level function names
    lappend config_table "C_XC_CREATE" "C_XC_RELEASE" "C_XC_OPEN" "C_XC_CLOSE" "C_XC_READ" "C_XC_WRITE" "C_XC_GET_SHMEM"
    # Optional parameters
    # (empty)

    # Memory map information
    sg_lappend config_table addr_config_table "C_MEMMAP_USEBESSEG"
    sg_lappend config_table xparam_config_table "C_MEMMAP_USEBESSEG_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_USEBESSEG_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_USEBESSEG_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_UPOZICIO"
    sg_lappend config_table xparam_config_table "C_MEMMAP_UPOZICIO_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_UPOZICIO_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_UPOZICIO_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_SEBESSEGPOZICIO"
    sg_lappend config_table xparam_config_table "C_MEMMAP_SEBESSEGPOZICIO_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_SEBESSEGPOZICIO_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_SEBESSEGPOZICIO_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AKTPOZICIO"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AKTPOZICIO_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AKTPOZICIO_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AKTPOZICIO_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_AKTSEBESSEG"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AKTSEBESSEG_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_AKTSEBESSEG_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_AKTSEBESSEG_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_ESEBESSEG"
    sg_lappend config_table xparam_config_table "C_MEMMAP_ESEBESSEG_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_ESEBESSEG_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_ESEBESSEG_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_POSREF"
    sg_lappend config_table xparam_config_table "C_MEMMAP_POSREF_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_POSREF_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_POSREF_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_Q1"
    sg_lappend config_table xparam_config_table "C_MEMMAP_Q1_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_Q1_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_Q1_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_Q2"
    sg_lappend config_table xparam_config_table "C_MEMMAP_Q2_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_Q2_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_Q2_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_Q0"
    sg_lappend config_table xparam_config_table "C_MEMMAP_Q0_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_Q0_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_Q0_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PIDTS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PIDTS_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PIDTS_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PIDTS_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_PWMFREK"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PWMFREK_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_PWMFREK_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_PWMFREK_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_REFSPEED"
    sg_lappend config_table xparam_config_table "C_MEMMAP_REFSPEED_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_REFSPEED_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_REFSPEED_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_SUGARAKARANYA"
    sg_lappend config_table xparam_config_table "C_MEMMAP_SUGARAKARANYA_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_SUGARAKARANYA_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_SUGARAKARANYA_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_Q_SAV"
    sg_lappend config_table xparam_config_table "C_MEMMAP_Q_SAV_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_Q_SAV_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_Q_SAV_ATTR"
    sg_lappend config_table addr_config_table "C_MEMMAP_CONFIG"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CONFIG_N_BITS"
    sg_lappend config_table xparam_config_table "C_MEMMAP_CONFIG_BIN_PT"
    # sg_lappend config_table xparam_config_table "C_MEMMAP_CONFIG_ATTR"

    # XPS parameters
    sg_lappend config_table xparam_config_table "DEVICE_ID" "C_BASEADDR"

    # generate xparameters.h
    eval xdefine_include_file $drv_handle "xparameters.h" "IPSDKSEBESEGESPOZICIO_PLBW" "NUM_INSTANCES" ${xparam_config_table}
    eval sg_xdefine_include_file $drv_handle "xparameters.h" "IPSDKSEBESEGESPOZICIO_PLBW" ${addr_config_table}
    # generate ipsdksebesegespozicio_plbw_g.c
    eval xdefine_config_file $drv_handle "ipsdksebesegespozicio_plbw_g.c" "IPSDKSEBESEGESPOZICIO_PLBW" ${config_table}
}

proc sg_xdefine_include_file {drv_handle file_name drv_string args} {
    # Open include file
    set file_handle [xopen_include_file $file_name]

    # Get all peripherals connected to this driver
    set periphs [xget_periphs $drv_handle] 

    # Print all parameters for all peripherals
    set device_id 0
    foreach periph ${periphs} {
        # base_addr of the peripheral
        set base_addr [xget_param_value ${periph} "C_BASEADDR"]

        puts ${file_handle} ""
        puts ${file_handle} "/* Definitions (address parameters) for peripheral [string toupper [xget_hw_name $periph]] */"
        foreach arg ${args} {
            set value [xget_param_value ${periph} ${arg}]
            if {[llength ${value}] == 0} {
                set value 0
            }
            set value [expr ${base_addr} + ${value}]
            set value_str [xformat_address_string ${value}]
            puts ${file_handle} "#define [xget_name ${periph} ${arg}] ${value_str}"
        }

        puts $file_handle "/* software driver settings for peripheral [string toupper [xget_hw_name $periph]] */"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_VERSION   1"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CREATE    xc_ipsdksebesegespozicio_plbw_create"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_RELEASE   xc_ipsdksebesegespozicio_plbw_release"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_OPEN      xc_ipsdksebesegespozicio_plbw_open"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_CLOSE     xc_ipsdksebesegespozicio_plbw_close"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_READ      xc_ipsdksebesegespozicio_plbw_read"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_WRITE     xc_ipsdksebesegespozicio_plbw_write"
        puts $file_handle "#define XPAR_[string toupper [xget_hw_name ${periph}]]_XC_GET_SHMEM xc_ipsdksebesegespozicio_plbw_getshmem"

        puts $file_handle ""
    }		
    puts $file_handle "\n/******************************************************************/\n"
    close $file_handle
}

proc sg_lappend {required_config_table {extra_config_table ""} args} {
    upvar ${required_config_table} config_table_1
    if {[string length ${extra_config_table}] != 0} {
        upvar ${extra_config_table} config_table_2
    }

    foreach value ${args} {
        eval [list lappend config_table_1 ${value}]
        if {[string length ${extra_config_table}] != 0} {
            lappend config_table_2 ${value}
        }
    }
}
