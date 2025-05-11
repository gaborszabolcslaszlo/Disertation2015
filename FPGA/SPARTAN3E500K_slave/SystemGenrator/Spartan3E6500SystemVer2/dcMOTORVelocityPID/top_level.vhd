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

entity top_level is
   port ( 
	      QuadA  : in    std_logic; 
          QuadA2 : in    std_logic; 
          QuadA3 : in    std_logic;
          QuadA4 : in    std_logic;		  
          QuadB  : in    std_logic; 
          QuadB2 : in    std_logic; 
          QuadB3 : in    std_logic; 
		  QuadB4 : in    std_logic; 
          DIR    : out   std_logic; 
          DIR2   : out   std_logic; 
          DIR3   : out   std_logic;
          DIR4   : out   std_logic; 		  
          IMP    : out   std_logic; 
          IMP2   : out   std_logic; 
          IMP3   : out   std_logic;
		  IMP4   : out   std_logic);
end top_level;

architecture BEHAVIORAL of top_level is
	
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

signal quada_tagadott3 : std_logic;
signal quadb_tagadott3 : std_logic;
signal cd1_q : std_logic;
signal cd2_q : std_logic;
signal dir_c : std_logic;
signal imp_3 : std_logic;	

signal quada_tagadott4 : std_logic;
signal quadb_tagadott4 : std_logic;
signal dd1_q : std_logic;
signal dd2_q : std_logic;
signal dir_d : std_logic;
signal imp_4 : std_logic;	
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


DIR3<=dir_c;
IMP3<=imp_3;
quada_tagadott3<= not QuadA3;
quadb_tagadott3<= not QuadB3;
imp_3<=cd1_q or cd2_q;

DIR4<=dir_d;
IMP4<=imp_4;
quada_tagadott4<= not QuadA4;
quadb_tagadott4<= not QuadB4;
imp_4<=dd1_q or dd2_q;

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
					 

	
	c_kanalis_d1 : FDCE
      port map (C=>QuadB3,
                CLR=>quada_tagadott3,
					 CE=>'1',
                D=>QuadA3,
                Q=>cd1_q);
					 
	c_kanalis_d2 : FDCE
      port map (C=>QuadA3,
                CLR=>quadb_tagadott3,
					 CE=>'1',
                D=>QuadB3,
                Q=>cd2_q);
					 
	c_kanalis_d3 : FDCE
      port map (C=>QuadB3,
                CLR=>'0',
					 CE=>'1',
                D=>QuadA3,
                Q=>dir_c);
					 

    d_kanalis_d1 : FDCE
      port map (C=>QuadB4,
                CLR=>quada_tagadott4,
					 CE=>'1',
                D=>QuadA4,
                Q=>dd1_q);
					 
	d_kanalis_d2 : FDCE
      port map (C=>QuadA4,
                CLR=>quadb_tagadott4,
					 CE=>'1',
                D=>QuadB4,
                Q=>dd2_q);
					 
	d_kanalis_d3 : FDCE
      port map (C=>QuadB4,
                CLR=>'0',
					 CE=>'1',
                D=>QuadA4,
                Q=>dir_d);

   
end BEHAVIORAL;




