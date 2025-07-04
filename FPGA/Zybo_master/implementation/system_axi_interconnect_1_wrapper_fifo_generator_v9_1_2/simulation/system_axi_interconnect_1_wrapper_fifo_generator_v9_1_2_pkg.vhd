--------------------------------------------------------------------------------
--
-- FIFO Generator Core Demo Testbench 
--
--------------------------------------------------------------------------------
--
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
--------------------------------------------------------------------------------
--
-- Filename: system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_pkg.vhd
--
-- Description:
--   This is the demo testbench package file for FIFO Generator core.
--
--------------------------------------------------------------------------------
-- Library Declarations
--------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

PACKAGE system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_pkg IS

 FUNCTION divroundup (
    data_value : INTEGER;
    divisor : INTEGER)
 RETURN INTEGER;
 ------------------------
 FUNCTION if_then_else (
   condition : BOOLEAN;
   true_case : INTEGER;
   false_case : INTEGER)
 RETURN INTEGER;
 ------------------------
 FUNCTION if_then_else (
   condition : BOOLEAN;
   true_case : STD_LOGIC;
   false_case : STD_LOGIC)
 RETURN STD_LOGIC;
  ------------------------
 FUNCTION if_then_else (
   condition : BOOLEAN;
   true_case : TIME;
   false_case : TIME)
 RETURN TIME;
 ------------------------ 
 FUNCTION log2roundup (
      data_value : INTEGER)
 RETURN INTEGER; 
 ------------------------ 
 FUNCTION hexstr_to_std_logic_vec(
   arg1 : string;
   size : integer )
 RETURN std_logic_vector;
 ------------------------
 COMPONENT system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_rng IS
    GENERIC (WIDTH : integer :=  8;
             SEED  : integer := 3);
    PORT (
      CLK : IN STD_LOGIC;
      RESET : IN STD_LOGIC;
      ENABLE : IN STD_LOGIC;
      RANDOM_NUM : OUT STD_LOGIC_VECTOR (WIDTH-1 DOWNTO 0)         
     );
 END COMPONENT; 
 ------------------------ 
 
 COMPONENT system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_dgen IS
  GENERIC (
	    C_DIN_WIDTH   : INTEGER := 32;
	    C_DOUT_WIDTH  : INTEGER := 32;
	    C_CH_TYPE     : INTEGER := 0;
	    TB_SEED       : INTEGER := 2
	 );
  PORT (
        RESET     : IN STD_LOGIC;
        WR_CLK    : IN STD_LOGIC;
        PRC_WR_EN : IN STD_LOGIC;
        FULL      : IN STD_LOGIC;  
        WR_EN     : OUT STD_LOGIC;      
        WR_DATA   : OUT STD_LOGIC_VECTOR(C_DIN_WIDTH-1 DOWNTO 0)
       );
 END COMPONENT;
 ------------------------ 

 COMPONENT system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_dverif IS
  GENERIC(
   C_DIN_WIDTH        : INTEGER := 0;
   C_DOUT_WIDTH       : INTEGER := 0;
   C_USE_EMBEDDED_REG : INTEGER := 0;
   C_CH_TYPE          : INTEGER := 0;
   TB_SEED            : INTEGER := 2
  );
  PORT(
       RESET       : IN STD_LOGIC;
       RD_CLK      : IN STD_LOGIC;
       PRC_RD_EN   : IN STD_LOGIC;
       EMPTY       : IN STD_LOGIC;
       DATA_OUT    : IN STD_LOGIC_VECTOR(C_DOUT_WIDTH-1 DOWNTO 0);
       RD_EN       : OUT STD_LOGIC;
       DOUT_CHK    : OUT STD_LOGIC
      );
 END COMPONENT; 
 ------------------------ 

 COMPONENT system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_pctrl IS
   GENERIC(
     AXI_CHANNEL         : STRING  := "NONE";
     C_APPLICATION_TYPE  : INTEGER := 0;
     C_DIN_WIDTH         : INTEGER := 0;
     C_DOUT_WIDTH        : INTEGER := 0;
     C_WR_PNTR_WIDTH     : INTEGER := 0;
     C_RD_PNTR_WIDTH     : INTEGER := 0;
     C_CH_TYPE           : INTEGER := 0;
     FREEZEON_ERROR      : INTEGER := 0;
     TB_STOP_CNT         : INTEGER := 2;
     TB_SEED             : INTEGER := 2
   );
   PORT(
       RESET_WR        : IN STD_LOGIC;
       RESET_RD        : IN STD_LOGIC;
       WR_CLK          : IN STD_LOGIC;
       RD_CLK          : IN STD_LOGIC;
       FULL            : IN STD_LOGIC;
       EMPTY           : IN STD_LOGIC;
       ALMOST_FULL     : IN STD_LOGIC;
       ALMOST_EMPTY    : IN STD_LOGIC;
       DATA_IN         : IN STD_LOGIC_VECTOR(C_DIN_WIDTH-1 DOWNTO 0);
       DATA_OUT        : IN STD_LOGIC_VECTOR(C_DOUT_WIDTH-1 DOWNTO 0);
       DOUT_CHK        : IN STD_LOGIC;
       PRC_WR_EN       : OUT STD_LOGIC;
       PRC_RD_EN       : OUT STD_LOGIC;
       RESET_EN        : OUT STD_LOGIC;
       SIM_DONE        : OUT STD_LOGIC;
       STATUS          : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
 END COMPONENT;
 ------------------------
 COMPONENT system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_synth IS
  GENERIC(
  	   FREEZEON_ERROR : INTEGER := 0;
	   TB_STOP_CNT    : INTEGER := 0;
	   TB_SEED        : INTEGER := 1
	 );
  PORT(
	S_ACLK     :  IN  STD_LOGIC;
        RESET      :  IN  STD_LOGIC;
        SIM_DONE   :  OUT STD_LOGIC;
        STATUS     :  OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
      );
 END COMPONENT;
 ------------------------
 COMPONENT system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_exdes IS
   PORT (
           S_ARESETN                 : IN  std_logic;
           M_AXI_AWID                : OUT std_logic_vector(12-1 DOWNTO 0);
           M_AXI_AWADDR              : OUT std_logic_vector(32-1 DOWNTO 0);
           M_AXI_AWLEN               : OUT std_logic_vector(8-1 DOWNTO 0);
           M_AXI_AWSIZE              : OUT std_logic_vector(3-1 DOWNTO 0);
           M_AXI_AWBURST             : OUT std_logic_vector(2-1 DOWNTO 0);
           M_AXI_AWLOCK              : OUT std_logic_vector(2-1 DOWNTO 0);
           M_AXI_AWCACHE             : OUT std_logic_vector(4-1 DOWNTO 0);
           M_AXI_AWPROT              : OUT std_logic_vector(3-1 DOWNTO 0);
           M_AXI_AWQOS               : OUT std_logic_vector(4-1 DOWNTO 0);
           M_AXI_AWREGION            : OUT std_logic_vector(4-1 DOWNTO 0);
           M_AXI_AWVALID             : OUT std_logic;
           M_AXI_AWREADY             : IN  std_logic;
           M_AXI_WID                 : OUT std_logic_vector(12-1 DOWNTO 0);
           M_AXI_WDATA               : OUT std_logic_vector(32-1 DOWNTO 0);
           M_AXI_WSTRB               : OUT std_logic_vector(32/8-1 DOWNTO 0);
           M_AXI_WLAST               : OUT std_logic;
           M_AXI_WVALID              : OUT std_logic;
           M_AXI_WREADY              : IN  std_logic;
           M_AXI_BID                 : IN  std_logic_vector(12-1 DOWNTO 0);
           M_AXI_BRESP               : IN  std_logic_vector(2-1 DOWNTO 0);
           M_AXI_BVALID              : IN  std_logic;
           M_AXI_BREADY              : OUT std_logic;
           S_AXI_AWID                : IN  std_logic_vector(12-1 DOWNTO 0);
           S_AXI_AWADDR              : IN  std_logic_vector(32-1 DOWNTO 0);
           S_AXI_AWLEN               : IN  std_logic_vector(8-1 DOWNTO 0);
           S_AXI_AWSIZE              : IN  std_logic_vector(3-1 DOWNTO 0);
           S_AXI_AWBURST             : IN  std_logic_vector(2-1 DOWNTO 0);
           S_AXI_AWLOCK              : IN  std_logic_vector(2-1 DOWNTO 0);
           S_AXI_AWCACHE             : IN  std_logic_vector(4-1 DOWNTO 0);
           S_AXI_AWPROT              : IN  std_logic_vector(3-1 DOWNTO 0);
           S_AXI_AWQOS               : IN  std_logic_vector(4-1 DOWNTO 0);
           S_AXI_AWREGION            : IN  std_logic_vector(4-1 DOWNTO 0);
           S_AXI_AWVALID             : IN  std_logic;
           S_AXI_AWREADY             : OUT std_logic;
           S_AXI_WID                 : IN  std_logic_vector(12-1 DOWNTO 0);
           S_AXI_WDATA               : IN  std_logic_vector(32-1 DOWNTO 0);
           S_AXI_WSTRB               : IN  std_logic_vector(32/8-1 DOWNTO 0);
           S_AXI_WLAST               : IN  std_logic;
           S_AXI_WVALID              : IN  std_logic;
           S_AXI_WREADY              : OUT std_logic;
           S_AXI_BID                 : OUT std_logic_vector(12-1 DOWNTO 0);
           S_AXI_BRESP               : OUT std_logic_vector(2-1 DOWNTO 0);
           S_AXI_BVALID              : OUT std_logic;
           S_AXI_BREADY              : IN  std_logic;
           M_AXI_ARID                : OUT std_logic_vector(12-1 DOWNTO 0);
           M_AXI_ARADDR              : OUT std_logic_vector(32-1 DOWNTO 0);
           M_AXI_ARLEN               : OUT std_logic_vector(8-1 DOWNTO 0);
           M_AXI_ARSIZE              : OUT std_logic_vector(3-1 DOWNTO 0);
           M_AXI_ARBURST             : OUT std_logic_vector(2-1 DOWNTO 0);
           M_AXI_ARLOCK              : OUT std_logic_vector(2-1 DOWNTO 0);
           M_AXI_ARCACHE             : OUT std_logic_vector(4-1 DOWNTO 0);
           M_AXI_ARPROT              : OUT std_logic_vector(3-1 DOWNTO 0);
           M_AXI_ARQOS               : OUT std_logic_vector(4-1 DOWNTO 0);
           M_AXI_ARREGION            : OUT std_logic_vector(4-1 DOWNTO 0);
           M_AXI_ARVALID             : OUT std_logic;
           M_AXI_ARREADY             : IN  std_logic;
           M_AXI_RID                 : IN  std_logic_vector(12-1 DOWNTO 0);
           M_AXI_RDATA               : IN  std_logic_vector(32-1 DOWNTO 0);
           M_AXI_RRESP               : IN  std_logic_vector(2-1 DOWNTO 0);
           M_AXI_RLAST               : IN  std_logic;
           M_AXI_RVALID              : IN  std_logic;
           M_AXI_RREADY              : OUT std_logic;
           S_AXI_ARID                : IN  std_logic_vector(12-1 DOWNTO 0);
           S_AXI_ARADDR              : IN  std_logic_vector(32-1 DOWNTO 0);
           S_AXI_ARLEN               : IN  std_logic_vector(8-1 DOWNTO 0);
           S_AXI_ARSIZE              : IN  std_logic_vector(3-1 DOWNTO 0);
           S_AXI_ARBURST             : IN  std_logic_vector(2-1 DOWNTO 0);
           S_AXI_ARLOCK              : IN  std_logic_vector(2-1 DOWNTO 0);
           S_AXI_ARCACHE             : IN  std_logic_vector(4-1 DOWNTO 0);
           S_AXI_ARPROT              : IN  std_logic_vector(3-1 DOWNTO 0);
           S_AXI_ARQOS               : IN  std_logic_vector(4-1 DOWNTO 0);
           S_AXI_ARREGION            : IN  std_logic_vector(4-1 DOWNTO 0);
           S_AXI_ARVALID             : IN  std_logic;
           S_AXI_ARREADY             : OUT std_logic;
           S_AXI_RID                 : OUT std_logic_vector(12-1 DOWNTO 0);
           S_AXI_RDATA               : OUT std_logic_vector(32-1 DOWNTO 0);
           S_AXI_RRESP               : OUT std_logic_vector(2-1 DOWNTO 0);
           S_AXI_RLAST               : OUT std_logic;
           S_AXI_RVALID              : OUT std_logic;
           S_AXI_RREADY              : IN  std_logic;
           AXI_AW_PROG_FULL          : OUT std_logic;
           AXI_AW_PROG_EMPTY         : OUT std_logic;
           AXI_W_PROG_FULL           : OUT std_logic;
           AXI_W_PROG_EMPTY          : OUT std_logic;
           AXI_B_PROG_FULL           : OUT std_logic;
           AXI_B_PROG_EMPTY          : OUT std_logic;
           AXI_AR_PROG_FULL          : OUT std_logic;
           AXI_AR_PROG_EMPTY         : OUT std_logic;
           AXI_R_PROG_FULL           : OUT std_logic;
           AXI_R_PROG_EMPTY          : OUT std_logic;
           S_ACLK                    : IN  std_logic);

 END COMPONENT;
 ------------------------ 


END system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_pkg;



PACKAGE BODY system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_pkg IS

 FUNCTION divroundup (
    data_value : INTEGER;
    divisor : INTEGER)
  RETURN INTEGER IS
    VARIABLE div                   : INTEGER;
  BEGIN
    div   := data_value/divisor;
    IF ( (data_value MOD divisor) /= 0) THEN
      div := div+1;
    END IF;
    RETURN div;
  END divroundup;
  ---------------------------------
  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : INTEGER;
    false_case : INTEGER)
  RETURN INTEGER IS
    VARIABLE retval : INTEGER := 0;
  BEGIN
    IF condition=false THEN
      retval:=false_case;
    ELSE
      retval:=true_case;
    END IF;
    RETURN retval;
  END if_then_else;
    ---------------------------------
  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : STD_LOGIC;
    false_case : STD_LOGIC)
  RETURN STD_LOGIC IS
    VARIABLE retval : STD_LOGIC := '0';
  BEGIN
    IF condition=false THEN
      retval:=false_case;
    ELSE
      retval:=true_case;
    END IF;
    RETURN retval;
  END if_then_else;
  ---------------------------------
  FUNCTION if_then_else (
    condition : BOOLEAN;
    true_case : TIME;
    false_case : TIME)
  RETURN TIME IS
    VARIABLE retval : TIME := 0 ps;
  BEGIN
    IF condition=false THEN
      retval:=false_case;
    ELSE
      retval:=true_case;
    END IF;
    RETURN retval;
  END if_then_else;
  ------------------------------- 
  FUNCTION log2roundup (
      data_value : INTEGER)
    RETURN INTEGER IS

      VARIABLE width       : INTEGER := 0;
      VARIABLE cnt         : INTEGER := 1;
    BEGIN
      IF (data_value <= 1) THEN
        width   := 1;
      ELSE
        WHILE (cnt < data_value) LOOP
          width := width + 1;
          cnt   := cnt *2;
        END LOOP;
      END IF;

      RETURN width;
    END log2roundup;
  ------------------------------------------------------------------------------
  -- hexstr_to_std_logic_vec
  --  This function converts a hex string to a std_logic_vector
  ------------------------------------------------------------------------------
  FUNCTION hexstr_to_std_logic_vec( 
    arg1 : string; 
    size : integer ) 
  RETURN std_logic_vector IS
    VARIABLE result : std_logic_vector(size-1 DOWNTO 0) := (OTHERS => '0');
    VARIABLE bin    : std_logic_vector(3 DOWNTO 0);
    VARIABLE index  : integer                           := 0;
  BEGIN
    FOR i IN arg1'reverse_range LOOP
      CASE arg1(i) IS
        WHEN '0' => bin := (OTHERS => '0');
        WHEN '1' => bin := (0 => '1', OTHERS => '0');
        WHEN '2' => bin := (1 => '1', OTHERS => '0');
        WHEN '3' => bin := (0 => '1', 1 => '1', OTHERS => '0');
        WHEN '4' => bin := (2 => '1', OTHERS => '0');
        WHEN '5' => bin := (0 => '1', 2 => '1', OTHERS => '0');
        WHEN '6' => bin := (1 => '1', 2 => '1', OTHERS => '0');
        WHEN '7' => bin := (3 => '0', OTHERS => '1');
        WHEN '8' => bin := (3 => '1', OTHERS => '0');
        WHEN '9' => bin := (0 => '1', 3 => '1', OTHERS => '0');
        WHEN 'A' => bin := (0 => '0', 2 => '0', OTHERS => '1');
        WHEN 'a' => bin := (0 => '0', 2 => '0', OTHERS => '1');
        WHEN 'B' => bin := (2 => '0', OTHERS => '1');
        WHEN 'b' => bin := (2 => '0', OTHERS => '1');
        WHEN 'C' => bin := (0 => '0', 1 => '0', OTHERS => '1');
        WHEN 'c' => bin := (0 => '0', 1 => '0', OTHERS => '1');
        WHEN 'D' => bin := (1 => '0', OTHERS => '1');
        WHEN 'd' => bin := (1 => '0', OTHERS => '1');
        WHEN 'E' => bin := (0 => '0', OTHERS => '1');
        WHEN 'e' => bin := (0 => '0', OTHERS => '1');
        WHEN 'F' => bin := (OTHERS => '1');
        WHEN 'f' => bin := (OTHERS => '1');
        WHEN OTHERS =>
          FOR j IN 0 TO 3 LOOP
            bin(j) := 'X';
          END LOOP;
      END CASE;
      FOR j IN 0 TO 3 LOOP
        IF (index*4)+j < size THEN
          result((index*4)+j) := bin(j);
        END IF;
      END LOOP;
      index := index + 1;
    END LOOP;
    RETURN result;
  END hexstr_to_std_logic_vec;

END system_axi_interconnect_1_wrapper_fifo_generator_v9_1_2_pkg;
