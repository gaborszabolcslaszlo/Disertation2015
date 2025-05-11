
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
component meresholtidomotrok_cw  port (
    ce: in std_logic := '1'; 
    clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
    csereposdir: in std_logic; 
    cseresebdir: in std_logic; 
    pos: in std_logic_vector(16 downto 0); 
    pos_en: in std_logic; 
    posistionsens: in std_logic_vector(1 downto 0); 
    seb: in std_logic_vector(16 downto 0); 
    seben: in std_logic; 
    sebsensor: in std_logic_vector(1 downto 0); 
    tsreg: in std_logic_vector(31 downto 0); 
    position: out std_logic_vector(15 downto 0); 
    pwmpos: out std_logic_vector(1 downto 0); 
    pwmseb: out std_logic_vector(1 downto 0); 
    sebesseg: out std_logic_vector(15 downto 0); 
    tobbi: out std_logic_vector(11 downto 0)
  );
end component;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body.  Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : meresholtidomotrok_cw
  port map (
    ce => ce,
    clk => clk,
    csereposdir => csereposdir,
    cseresebdir => cseresebdir,
    pos => pos,
    pos_en => pos_en,
    posistionsens => posistionsens,
    seb => seb,
    seben => seben,
    sebsensor => sebsensor,
    tsreg => tsreg,
    position => position,
    pwmpos => pwmpos,
    pwmseb => pwmseb,
    sebesseg => sebesseg,
    tobbi => tobbi);
-- INST_TAG_END ------ End INSTANTIATION Template ------------
