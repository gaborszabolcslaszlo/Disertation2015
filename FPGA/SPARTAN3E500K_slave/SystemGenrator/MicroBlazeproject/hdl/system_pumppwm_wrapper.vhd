-------------------------------------------------------------------------------
-- system_pumppwm_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library pwmmodlmag_plbw_v2_00_a;
use pwmmodlmag_plbw_v2_00_a.all;

entity system_pumppwm_wrapper is
  port (
    splb_clk : in std_logic;
    plb_abus : in std_logic_vector(0 to 31);
    plb_pavalid : in std_logic;
    plb_rnw : in std_logic;
    plb_wrdbus : in std_logic_vector(0 to 31);
    splb_rst : in std_logic;
    pwmout : out std_logic;
    sl_addrack : out std_logic;
    sl_rdcomp : out std_logic;
    sl_rddack : out std_logic;
    sl_rddbus : out std_logic_vector(0 to 31);
    sl_wait : out std_logic;
    sl_wrcomp : out std_logic;
    sl_wrdack : out std_logic
  );
end system_pumppwm_wrapper;

architecture STRUCTURE of system_pumppwm_wrapper is

  component pwmmodlmag_plbw is
    generic (
      C_BASEADDR : std_logic_vector(0 to 31);
      C_HIGHADDR : std_logic_vector(0 to 31);
      C_SPLB_AWIDTH : INTEGER;
      C_SPLB_DWIDTH : INTEGER;
      C_SPLB_MID_WIDTH : INTEGER;
      C_SPLB_NATIVE_DWIDTH : INTEGER;
      C_SPLB_NUM_MASTERS : INTEGER;
      C_SPLB_SUPPORT_BURSTS : INTEGER;
      C_MEMMAP_CONFIG : integer;
      C_MEMMAP_CONFIG_N_BITS : integer;
      C_MEMMAP_CONFIG_BIN_PT : integer;
      C_MEMMAP_DUTY : integer;
      C_MEMMAP_DUTY_N_BITS : integer;
      C_MEMMAP_DUTY_BIN_PT : integer
    );
    port (
      splb_clk : in std_logic;
      plb_abus : in std_logic_vector(0 to (32-1));
      plb_pavalid : in std_logic;
      plb_rnw : in std_logic;
      plb_wrdbus : in std_logic_vector(0 to (C_SPLB_DWIDTH-1));
      splb_rst : in std_logic;
      pwmout : out std_logic;
      sl_addrack : out std_logic;
      sl_rdcomp : out std_logic;
      sl_rddack : out std_logic;
      sl_rddbus : out std_logic_vector(0 to (C_SPLB_DWIDTH-1));
      sl_wait : out std_logic;
      sl_wrcomp : out std_logic;
      sl_wrdack : out std_logic
    );
  end component;

begin

  PumpPWM : pwmmodlmag_plbw
    generic map (
      C_BASEADDR => X"cbe14000",
      C_HIGHADDR => X"cbe14fff",
      C_SPLB_AWIDTH => 32,
      C_SPLB_DWIDTH => 32,
      C_SPLB_MID_WIDTH => 1,
      C_SPLB_NATIVE_DWIDTH => 32,
      C_SPLB_NUM_MASTERS => 2,
      C_SPLB_SUPPORT_BURSTS => 0,
      C_MEMMAP_CONFIG => 16#800#,
      C_MEMMAP_CONFIG_N_BITS => 8,
      C_MEMMAP_CONFIG_BIN_PT => 0,
      C_MEMMAP_DUTY => 16#804#,
      C_MEMMAP_DUTY_N_BITS => 16,
      C_MEMMAP_DUTY_BIN_PT => 0
    )
    port map (
      splb_clk => splb_clk,
      plb_abus => plb_abus,
      plb_pavalid => plb_pavalid,
      plb_rnw => plb_rnw,
      plb_wrdbus => plb_wrdbus,
      splb_rst => splb_rst,
      pwmout => pwmout,
      sl_addrack => sl_addrack,
      sl_rdcomp => sl_rdcomp,
      sl_rddack => sl_rddack,
      sl_rddbus => sl_rddbus,
      sl_wait => sl_wait,
      sl_wrcomp => sl_wrcomp,
      sl_wrdack => sl_wrdack
    );

end architecture STRUCTURE;

