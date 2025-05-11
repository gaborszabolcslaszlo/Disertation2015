-------------------------------------------------------------------------------
-- system_ntg_0_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library ntg_v1_00_a;
use ntg_v1_00_a.all;

entity system_ntg_0_wrapper is
  port (
    sig_in : in std_logic;
    sig_out : out std_logic
  );
end system_ntg_0_wrapper;

architecture STRUCTURE of system_ntg_0_wrapper is

  component ntg is
    generic (
      C_BASEADDR : std_logic_vector;
      C_HIGHADDR : std_logic_vector;
      C_SPLB_AWIDTH : INTEGER;
      C_SPLB_DWIDTH : INTEGER;
      C_SPLB_NUM_MASTERS : INTEGER;
      C_SPLB_MID_WIDTH : INTEGER;
      C_SPLB_NATIVE_DWIDTH : INTEGER;
      C_SPLB_P2P : INTEGER;
      C_SPLB_SUPPORT_BURSTS : INTEGER;
      C_SPLB_SMALLEST_MASTER : INTEGER;
      C_SPLB_CLK_PERIOD_PS : INTEGER;
      C_INCLUDE_DPHASE_TIMER : INTEGER;
      C_FAMILY : STRING
    );
    port (
      sig_in : in std_logic;
      sig_out : out std_logic
    );
  end component;

begin

  ntg_0 : ntg
    generic map (
      C_BASEADDR => X"ffffffff",
      C_HIGHADDR => X"00000000",
      C_SPLB_AWIDTH => 32,
      C_SPLB_DWIDTH => 128,
      C_SPLB_NUM_MASTERS => 8,
      C_SPLB_MID_WIDTH => 3,
      C_SPLB_NATIVE_DWIDTH => 32,
      C_SPLB_P2P => 0,
      C_SPLB_SUPPORT_BURSTS => 0,
      C_SPLB_SMALLEST_MASTER => 32,
      C_SPLB_CLK_PERIOD_PS => 10000,
      C_INCLUDE_DPHASE_TIMER => 0,
      C_FAMILY => "spartan3e"
    )
    port map (
      sig_in => sig_in,
      sig_out => sig_out
    );

end architecture STRUCTURE;

