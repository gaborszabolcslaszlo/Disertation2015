#--------------------------------------------------------------------------------
#--
#-- FIFO Generator Core Demo Testbench 
#--
#--------------------------------------------------------------------------------
-- (c) Copyright 2009 - 2010 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
# Filename: wave_mti.do
#
# Description:
#   This is the modelsim wave form file.
#
#--------------------------------------------------------------------------------

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider -height 40 {Slave interface}
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_ACLK
add wave -noupdate -divider AW
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_AWVALID
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_AWREADY
add wave -noupdate -radix hexadecimal /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_AWADDR
add wave -noupdate -divider W
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_WVALID
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_WREADY
add wave -noupdate -radix hexadecimal /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_WDATA
add wave -noupdate -divider WResp
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_BVALID
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_BREADY
add wave -noupdate -divider AR
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_ARVALID
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_ARREADY
add wave -noupdate -radix hexadecimal /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_ARADDR
add wave -noupdate -divider R
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_RVALID
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_RREADY
add wave -noupdate -radix hexadecimal /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_AXI_RDATA
add wave -noupdate -divider -height 40 {Master Interface}
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/S_ACLK
add wave -noupdate -divider AW
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_AWREADY
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_AWVALID
add wave -noupdate -radix hexadecimal /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_AWADDR
add wave -noupdate -divider W
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_WVALID
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_WREADY
add wave -noupdate -radix hexadecimal /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_WDATA
add wave -noupdate -divider WResp
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_BREADY
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_BVALID
add wave -noupdate -divider AR
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_ARVALID
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_ARREADY
add wave -noupdate -radix hexadecimal /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_ARADDR
add wave -noupdate -divider R
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_RVALID
add wave -noupdate /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_RREADY
add wave -noupdate -radix hexadecimal /system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_tb/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_synth_inst/system_axi_interconnect_1_wrapper_fifo_generator_v9_1_1_inst/M_AXI_RDATA

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2164886 ps} 0}
configure wave -namecolwidth 197
configure wave -valuecolwidth 106
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {9464063 ps}
