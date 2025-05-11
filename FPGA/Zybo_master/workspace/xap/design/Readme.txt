*************************************************************************
   ____  ____ 
  /   /\/   / 
 /___/  \  /   
 \   \   \/    © Copyright 2013 Xilinx, Inc. All rights reserved.
  \   \        This file contains confidential and proprietary 
  /   /        information of Xilinx, Inc. and is protected under U.S. 
 /___/   /\    and international copyright and other intellectual 
 \   \  /  \   property laws. 
  \___\/\___\ 
 
*************************************************************************

Vendor: Xilinx 
Current readme.txt Version: 1.0.0
Date Last Modified:  24JUN2013
Date Created: 24JUN2013

Associated Filename: xapp1079.zip
Associated Document: 
   XAPP1079, Simple AMP Running Bare-Metal Systems on Both
   Zynq Processors

Supported Device(s): Design is specific to ZC702 Demo board that uses
Zynq XC7Z020CLG484-1
   
*************************************************************************

Disclaimer: 

      This disclaimer is not a license and does not grant any rights to 
      the materials distributed herewith. Except as otherwise provided in 
      a valid license issued to you by Xilinx, and to the maximum extent 
      permitted by applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE 
      "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL 
      WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, 
      INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, 
      NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and 
      (2) Xilinx shall not be liable (whether in contract or tort, 
      including negligence, or under any other theory of liability) for 
      any loss or damage of any kind or nature related to, arising under 
      or in connection with these materials, including for any direct, or 
      any indirect, special, incidental, or consequential loss or damage 
      (including loss of data, profits, goodwill, or any type of loss or 
      damage suffered as a result of any action brought by a third party) 
      even if such damage or loss was reasonably foreseeable or Xilinx 
      had been advised of the possibility of the same.

Critical Applications:

      Xilinx products are not designed or intended to be fail-safe, or 
      for use in any application requiring fail-safe performance, such as 
      life-support or safety devices or systems, Class III medical 
      devices, nuclear facilities, applications related to the deployment 
      of airbags, or any other applications that could lead to death, 
      personal injury, or severe property or environmental damage 
      (individually and collectively, "Critical Applications"). Customer 
      assumes the sole risk and liability of any use of Xilinx products 
      in Critical Applications, subject only to applicable laws and 
      regulations governing limitations on product liability.

THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS 
FILE AT ALL TIMES.

*************************************************************************

This readme file contains these sections:

1. REVISION HISTORY
2. OVERVIEW
3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS
4. DESIGN FILE HIERARCHY
5. INSTALLATION AND OPERATING INSTRUCTIONS
6. OTHER INFORMATION (OPTIONAL)
7. SUPPORT


1. REVISION HISTORY 


            Readme  
Date        Version      Revision Description
=========================================================================
09MAR2013   0.0          Initial Xilinx release.
24JUN2013   1.0          Updated to ISE14.5
=========================================================================



2. OVERVIEW

This readme describes how to use the files that come with XAPP1079

This embedded design contains a custom core that generates interrupts
from a control register or from the chipscope VIO core. The output
of the core drives the PS Core_nIRQ signal.

Bare-Metal runs on CPU0 and Bare-Metal runs on CPU1. CPU1 services interrupts
and communicates with CPU0 through OCM.


3. SOFTWARE TOOLS AND SYSTEM REQUIREMENTS

* Xilinx ISE 14.5 including Chipscope, SDK and XPS


4. DESIGN FILE HIERARCHY

The directory structure underneath this top-level folder is described 
below:

\generated_files
 |       
  +---- \boot
  |        This directory contains the generated BOOT.BIN and devicetree files
  +---- \fpga
  |        This directory contains the generated FPGA bit file
  +---- \SDK_apps
           This directory contains the generated elf files from SDK
\src
  |
  +---- \apps
  |       |
  |       +---- \app_cpu0
  |       |        This directory contains the C source code for the
  |       |        CPU0 application
  |       +---- \app_cpu1
  |                This directory contains the C source code for the
  |                CPU1 application
  |
  +---- \bootgen
  |        This directory contains the files used to create BOOT.BIN
  +---- \chipscope
  |        This directory contains the chipscope project file
  +---- \edk_system
  |        This directory contains the EDK Embedded System
  +---- \sdk_repo
            This directory is a SDK repository and contains the customized
            standalone BSP and FSBL


5. INSTALLATION AND OPERATING INSTRUCTIONS 

1) Install the Xilinx ISE 14.5 System Edition

XPS is used to open the included EDK design.


6. SUPPORT

To obtain technical support for this reference design, go to 
www.xilinx.com/support to locate answers to known issues in the Xilinx
Answers Database or to create a WebCase.  