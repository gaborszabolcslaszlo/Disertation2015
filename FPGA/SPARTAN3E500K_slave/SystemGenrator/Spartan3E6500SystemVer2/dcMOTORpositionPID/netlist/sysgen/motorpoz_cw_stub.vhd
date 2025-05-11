----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity motorpoz_cw_stub is
    port (
      aahj: in std_logic_vector(15 downto 0); 
      bb: in std_logic_vector(15 downto 0); 
      cc: in std_logic_vector(15 downto 0); 
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      direct_inp: in std_logic; 
      enapwm: in std_logic; 
      pmod1: in std_logic_vector(7 downto 0); 
      recerencia: in std_logic_vector(15 downto 0); 
      ts: in std_logic_vector(31 downto 0); 
      counterval: out std_logic_vector(15 downto 0); 
      e: out std_logic_vector(16 downto 0); 
      led: out std_logic_vector(3 downto 0); 
      pmod2: out std_logic_vector(7 downto 0); 
      u: out std_logic_vector(16 downto 0)
    );
end motorpoz_cw_stub;

architecture Behavioral of motorpoz_cw_stub is

  component motorpoz_cw
    port (
      aahj: in std_logic_vector(15 downto 0); 
      bb: in std_logic_vector(15 downto 0); 
      cc: in std_logic_vector(15 downto 0); 
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      direct_inp: in std_logic; 
      enapwm: in std_logic; 
      pmod1: in std_logic_vector(7 downto 0); 
      recerencia: in std_logic_vector(15 downto 0); 
      ts: in std_logic_vector(31 downto 0); 
      counterval: out std_logic_vector(15 downto 0); 
      e: out std_logic_vector(16 downto 0); 
      led: out std_logic_vector(3 downto 0); 
      pmod2: out std_logic_vector(7 downto 0); 
      u: out std_logic_vector(16 downto 0)
    );
  end component;
begin

motorpoz_cw_i : motorpoz_cw
  port map (
    aahj => aahj,
    bb => bb,
    cc => cc,
    ce => ce,
    clk => clk,
    direct_inp => direct_inp,
    enapwm => enapwm,
    pmod1 => pmod1,
    recerencia => recerencia,
    ts => ts,
    counterval => counterval,
    e => e,
    led => led,
    pmod2 => pmod2,
    u => u);
end Behavioral;

