

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library proc_common_v3_00_a;
use proc_common_v3_00_a.proc_common_pkg.all;
use proc_common_v3_00_a.ipif_pkg.all;



entity not_gate is
  port
  (
		sig_in : in  STD_LOGIC;
        sig_out : out  STD_LOGIC
  );

end entity not_gate;

------------------------------------------------------------------------------
-- Architecture section
------------------------------------------------------------------------------

architecture IMP of not_gate is

  sig_out<=not(sig_in);

end IMP;
