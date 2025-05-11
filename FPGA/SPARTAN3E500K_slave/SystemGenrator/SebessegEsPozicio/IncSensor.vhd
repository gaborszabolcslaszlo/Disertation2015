library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity top_level is
   port ( 
	      QuadA  : in    std_logic;           
          QuadB  : in    std_logic;          
          DIR    : out   std_logic; 		  
          IMP    : out   std_logic);
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
begin
DIR<=dir_a;
IMP<=imp_1;
quada_tagadott<= not QuadA;
quadb_tagadott<= not QuadB;
imp_1<=ad1_q or ad2_q;

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
  	    
end BEHAVIORAL;




