
-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- The following code must appear in the VHDL architecture header:

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component onoff_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
    enapwm: in std_logic; 
    ennulreset: in std_logic; 
    jb1: in std_logic_vector(7 downto 0); 
    jc1: in std_logic_vector(7 downto 0); 
    recerencia: in std_logic_vector(15 downto 0); 
    tsvalue: in std_logic_vector(23 downto 0); 
    ja1: out std_logic_vector(7 downto 0); 
    nullimp: out std_logic; 
    position: out std_logic_vector(15 downto 0); 
    speed: out std_logic_vector(15 downto 0); 
    tsimp: out std_logic_vector(15 downto 0); 
    u: out std_logic_vector(16 downto 0)
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : onoff_cw
  port map (
    ce => ce,
    clk => clk,
    enapwm => enapwm,
    ennulreset => ennulreset,
    jb1 => jb1,
    jc1 => jc1,
    recerencia => recerencia,
    tsvalue => tsvalue,
    ja1 => ja1,
    nullimp => nullimp,
    position => position,
    speed => speed,
    tsimp => tsimp,
    u => u);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
