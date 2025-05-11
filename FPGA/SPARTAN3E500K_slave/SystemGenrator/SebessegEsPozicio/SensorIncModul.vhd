--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : sch1.vhf
-- /___/   /\     Timestamp : 02/27/2012 15:54:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl Z:/allamvizsga/~AUT/testD/sch1.vhf -w Z:/allamvizsga/~AUT/testD/sch1.sch
--Design Name: sch1
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SensorIncModul is
   port ( 
	      QuadA  : in    std_logic; 
          QuadA2 : in    std_logic; 	  
          QuadB  : in    std_logic; 
          QuadB2 : in    std_logic;          
          DIR    : out   std_logic; 
          DIR2   : out   std_logic;           		  
          IMP    : out   std_logic; 
          IMP2   : out   std_logic 
          );
end SensorIncModul;

architecture BEHAVIORAL of SensorIncModul is
	
	component FDCE
   generic  ( INIT :bit := '0'); -- Initial value of register ('0' or '1')  
	 port (C   : in    std_logic; 
           CLR : in    std_logic; 
		   CE  : in    std_logic; 
           D   : in    std_logic; 
           Q   : out   std_logic);	
   end component;
   
   
signal quada_tagadott : std_logic;
signal quadb_tagadott : std_logic;
signal ad1_q : std_logic;
signal ad2_q : std_logic;
signal dir_a : std_logic;
signal imp_1 : std_logic;

signal quada_tagadott2 : std_logic;
signal quadb_tagadott2 : std_logic;
signal bd1_q : std_logic;
signal bd2_q : std_logic;
signal dir_b : std_logic;
signal imp_2 : std_logic;
	
begin
DIR<=dir_a;
IMP<=imp_1;
quada_tagadott<= not QuadA;
quadb_tagadott<= not QuadB;
imp_1<=ad1_q or ad2_q;


DIR2<=dir_b;
IMP2<=imp_2;
quada_tagadott2<= not QuadA2;
quadb_tagadott2<= not QuadB2;
imp_2<=bd1_q or bd2_q;


    a_kanalis_d1 : FDCE
      port map (C=>QuadB,
                CLR=>quada_tagadott,
					 CE=>'1',
                D=>QuadA,
                Q=>ad1_q);
					 
	a_kanalis_d2 : FDCE
      port map (C=>QuadA,
                CLR=>quadb_tagadott,
					 CE=>'1',
                D=>QuadB,
                Q=>ad2_q);
					 
	a_kanalis_d3 : FDCE
      port map (C=>QuadB,
                CLR=>'0',
					 CE=>'1',
                D=>QuadA,
                Q=>dir_a);
					 

	b_kanalis_d1 : FDCE
      port map (C=>QuadB2,
                CLR=>quada_tagadott2,
					 CE=>'1',
                D=>QuadA2,
                Q=>bd1_q);
					 
	b_kanalis_d2 : FDCE
      port map (C=>QuadA2,
                CLR=>quadb_tagadott2,
					 CE=>'1',
                D=>QuadB2,
                Q=>bd2_q);
					 
	b_kanalis_d3 : FDCE
      port map (C=>QuadB2,
                CLR=>'0',
					 CE=>'1',
                D=>QuadA2,
                Q=>dir_b);
   
end BEHAVIORAL;




