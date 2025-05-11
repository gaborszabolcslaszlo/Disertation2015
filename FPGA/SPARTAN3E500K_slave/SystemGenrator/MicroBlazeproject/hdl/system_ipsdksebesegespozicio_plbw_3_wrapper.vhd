-------------------------------------------------------------------------------
-- system_ipsdksebesegespozicio_plbw_3_wrapper.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

library ipsdksebesegespozicio_plbw_v55_00_a;
use ipsdksebesegespozicio_plbw_v55_00_a.all;

entity system_ipsdksebesegespozicio_plbw_3_wrapper is
  port (
    splb_clk : in std_logic;
    null_x0 : in std_logic;
    plb_abus : in std_logic_vector(0 to 31);
    plb_pavalid : in std_logic;
    plb_rnw : in std_logic;
    plb_wrdbus : in std_logic_vector(0 to 31);
    positiona : in std_logic;
    positionb : in std_logic;
    speeda : in std_logic;
    speedb : in std_logic;
    splb_rst : in std_logic;
    pospwm0 : out std_logic;
    pospwm1 : out std_logic;
    sl_addrack : out std_logic;
    sl_rdcomp : out std_logic;
    sl_rddack : out std_logic;
    sl_rddbus : out std_logic_vector(0 to 31);
    sl_wait : out std_logic;
    sl_wrcomp : out std_logic;
    sl_wrdack : out std_logic;
    speedpwm0 : out std_logic;
    speedpwm1 : out std_logic
  );
end system_ipsdksebesegespozicio_plbw_3_wrapper;

architecture STRUCTURE of system_ipsdksebesegespozicio_plbw_3_wrapper is

  component ipsdksebesegespozicio_plbw is
    generic (
      C_BASEADDR : std_logic_vector(0 to 31);
      C_HIGHADDR : std_logic_vector(0 to 31);
      C_SPLB_AWIDTH : INTEGER;
      C_SPLB_DWIDTH : INTEGER;
      C_SPLB_MID_WIDTH : INTEGER;
      C_SPLB_NATIVE_DWIDTH : INTEGER;
      C_SPLB_NUM_MASTERS : INTEGER;
      C_SPLB_SUPPORT_BURSTS : INTEGER;
      C_MEMMAP_USEBESSEG : integer;
      C_MEMMAP_USEBESSEG_N_BITS : integer;
      C_MEMMAP_USEBESSEG_BIN_PT : integer;
      C_MEMMAP_UPOZICIO : integer;
      C_MEMMAP_UPOZICIO_N_BITS : integer;
      C_MEMMAP_UPOZICIO_BIN_PT : integer;
      C_MEMMAP_SEBESSEGPOZICIO : integer;
      C_MEMMAP_SEBESSEGPOZICIO_N_BITS : integer;
      C_MEMMAP_SEBESSEGPOZICIO_BIN_PT : integer;
      C_MEMMAP_AKTPOZICIO : integer;
      C_MEMMAP_AKTPOZICIO_N_BITS : integer;
      C_MEMMAP_AKTPOZICIO_BIN_PT : integer;
      C_MEMMAP_AKTSEBESSEG : integer;
      C_MEMMAP_AKTSEBESSEG_N_BITS : integer;
      C_MEMMAP_AKTSEBESSEG_BIN_PT : integer;
      C_MEMMAP_ESEBESSEG : integer;
      C_MEMMAP_ESEBESSEG_N_BITS : integer;
      C_MEMMAP_ESEBESSEG_BIN_PT : integer;
      C_MEMMAP_POSREF : integer;
      C_MEMMAP_POSREF_N_BITS : integer;
      C_MEMMAP_POSREF_BIN_PT : integer;
      C_MEMMAP_Q1 : integer;
      C_MEMMAP_Q1_N_BITS : integer;
      C_MEMMAP_Q1_BIN_PT : integer;
      C_MEMMAP_Q2 : integer;
      C_MEMMAP_Q2_N_BITS : integer;
      C_MEMMAP_Q2_BIN_PT : integer;
      C_MEMMAP_Q0 : integer;
      C_MEMMAP_Q0_N_BITS : integer;
      C_MEMMAP_Q0_BIN_PT : integer;
      C_MEMMAP_PIDTS : integer;
      C_MEMMAP_PIDTS_N_BITS : integer;
      C_MEMMAP_PIDTS_BIN_PT : integer;
      C_MEMMAP_REFSPEED : integer;
      C_MEMMAP_REFSPEED_N_BITS : integer;
      C_MEMMAP_REFSPEED_BIN_PT : integer;
      C_MEMMAP_SUGARAKARANYA : integer;
      C_MEMMAP_SUGARAKARANYA_N_BITS : integer;
      C_MEMMAP_SUGARAKARANYA_BIN_PT : integer;
      C_MEMMAP_Q_SAV : integer;
      C_MEMMAP_Q_SAV_N_BITS : integer;
      C_MEMMAP_Q_SAV_BIN_PT : integer;
      C_MEMMAP_CONFIG : integer;
      C_MEMMAP_CONFIG_N_BITS : integer;
      C_MEMMAP_CONFIG_BIN_PT : integer;
      C_MEMMAP_TOLTESIIDO : integer;
      C_MEMMAP_TOLTESIIDO_N_BITS : integer;
      C_MEMMAP_TOLTESIIDO_BIN_PT : integer
    );
    port (
      splb_clk : in std_logic;
      null_x0 : in std_logic;
      plb_abus : in std_logic_vector(0 to (32-1));
      plb_pavalid : in std_logic;
      plb_rnw : in std_logic;
      plb_wrdbus : in std_logic_vector(0 to (C_SPLB_DWIDTH-1));
      positiona : in std_logic;
      positionb : in std_logic;
      speeda : in std_logic;
      speedb : in std_logic;
      splb_rst : in std_logic;
      pospwm0 : out std_logic;
      pospwm1 : out std_logic;
      sl_addrack : out std_logic;
      sl_rdcomp : out std_logic;
      sl_rddack : out std_logic;
      sl_rddbus : out std_logic_vector(0 to (C_SPLB_DWIDTH-1));
      sl_wait : out std_logic;
      sl_wrcomp : out std_logic;
      sl_wrdack : out std_logic;
      speedpwm0 : out std_logic;
      speedpwm1 : out std_logic
    );
  end component;

begin

  ipsdksebesegespozicio_plbw_3 : ipsdksebesegespozicio_plbw
    generic map (
      C_BASEADDR => X"CBE00000",
      C_HIGHADDR => X"CBE00FFF",
      C_SPLB_AWIDTH => 32,
      C_SPLB_DWIDTH => 32,
      C_SPLB_MID_WIDTH => 1,
      C_SPLB_NATIVE_DWIDTH => 32,
      C_SPLB_NUM_MASTERS => 2,
      C_SPLB_SUPPORT_BURSTS => 0,
      C_MEMMAP_USEBESSEG => 16#800#,
      C_MEMMAP_USEBESSEG_N_BITS => 32,
      C_MEMMAP_USEBESSEG_BIN_PT => 0,
      C_MEMMAP_UPOZICIO => 16#804#,
      C_MEMMAP_UPOZICIO_N_BITS => 32,
      C_MEMMAP_UPOZICIO_BIN_PT => 0,
      C_MEMMAP_SEBESSEGPOZICIO => 16#808#,
      C_MEMMAP_SEBESSEGPOZICIO_N_BITS => 16,
      C_MEMMAP_SEBESSEGPOZICIO_BIN_PT => 0,
      C_MEMMAP_AKTPOZICIO => 16#80C#,
      C_MEMMAP_AKTPOZICIO_N_BITS => 16,
      C_MEMMAP_AKTPOZICIO_BIN_PT => 0,
      C_MEMMAP_AKTSEBESSEG => 16#810#,
      C_MEMMAP_AKTSEBESSEG_N_BITS => 16,
      C_MEMMAP_AKTSEBESSEG_BIN_PT => 0,
      C_MEMMAP_ESEBESSEG => 16#814#,
      C_MEMMAP_ESEBESSEG_N_BITS => 16,
      C_MEMMAP_ESEBESSEG_BIN_PT => 0,
      C_MEMMAP_POSREF => 16#800#,
      C_MEMMAP_POSREF_N_BITS => 16,
      C_MEMMAP_POSREF_BIN_PT => 0,
      C_MEMMAP_Q1 => 16#804#,
      C_MEMMAP_Q1_N_BITS => 16,
      C_MEMMAP_Q1_BIN_PT => 0,
      C_MEMMAP_Q2 => 16#808#,
      C_MEMMAP_Q2_N_BITS => 16,
      C_MEMMAP_Q2_BIN_PT => 0,
      C_MEMMAP_Q0 => 16#80C#,
      C_MEMMAP_Q0_N_BITS => 16,
      C_MEMMAP_Q0_BIN_PT => 0,
      C_MEMMAP_PIDTS => 16#810#,
      C_MEMMAP_PIDTS_N_BITS => 32,
      C_MEMMAP_PIDTS_BIN_PT => 0,
      C_MEMMAP_REFSPEED => 16#814#,
      C_MEMMAP_REFSPEED_N_BITS => 16,
      C_MEMMAP_REFSPEED_BIN_PT => 0,
      C_MEMMAP_SUGARAKARANYA => 16#818#,
      C_MEMMAP_SUGARAKARANYA_N_BITS => 16,
      C_MEMMAP_SUGARAKARANYA_BIN_PT => 0,
      C_MEMMAP_Q_SAV => 16#81C#,
      C_MEMMAP_Q_SAV_N_BITS => 16,
      C_MEMMAP_Q_SAV_BIN_PT => 0,
      C_MEMMAP_CONFIG => 16#820#,
      C_MEMMAP_CONFIG_N_BITS => 16,
      C_MEMMAP_CONFIG_BIN_PT => 0,
      C_MEMMAP_TOLTESIIDO => 16#824#,
      C_MEMMAP_TOLTESIIDO_N_BITS => 16,
      C_MEMMAP_TOLTESIIDO_BIN_PT => 0
    )
    port map (
      splb_clk => splb_clk,
      null_x0 => null_x0,
      plb_abus => plb_abus,
      plb_pavalid => plb_pavalid,
      plb_rnw => plb_rnw,
      plb_wrdbus => plb_wrdbus,
      positiona => positiona,
      positionb => positionb,
      speeda => speeda,
      speedb => speedb,
      splb_rst => splb_rst,
      pospwm0 => pospwm0,
      pospwm1 => pospwm1,
      sl_addrack => sl_addrack,
      sl_rdcomp => sl_rdcomp,
      sl_rddack => sl_rddack,
      sl_rddbus => sl_rddbus,
      sl_wait => sl_wait,
      sl_wrcomp => sl_wrcomp,
      sl_wrdack => sl_wrdack,
      speedpwm0 => speedpwm0,
      speedpwm1 => speedpwm1
    );

end architecture STRUCTURE;

