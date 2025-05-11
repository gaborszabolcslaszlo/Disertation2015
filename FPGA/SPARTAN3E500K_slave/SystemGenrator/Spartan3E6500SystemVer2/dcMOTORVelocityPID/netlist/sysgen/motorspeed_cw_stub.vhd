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

entity motorspeed_cw_stub is
    port (
      aa: in std_logic_vector(15 downto 0); 
      bb: in std_logic_vector(15 downto 0); 
      cc: in std_logic_vector(15 downto 0); 
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      enapwm: in std_logic; 
      gateway_in: in std_logic_vector(16 downto 0); 
      recerencia: in std_logic_vector(15 downto 0); 
      ts: in std_logic_vector(31 downto 0); 
      counterval: out std_logic_vector(15 downto 0); 
      e: out std_logic_vector(16 downto 0); 
      pmod2: out std_logic_vector(7 downto 0); 
      u: out std_logic_vector(16 downto 0)
    );
end motorspeed_cw_stub;

architecture Behavioral of motorspeed_cw_stub is

  component motorspeed_cw
    port (
      aa: in std_logic_vector(15 downto 0); 
      bb: in std_logic_vector(15 downto 0); 
      cc: in std_logic_vector(15 downto 0); 
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      enapwm: in std_logic; 
      gateway_in: in std_logic_vector(16 downto 0); 
      recerencia: in std_logic_vector(15 downto 0); 
      ts: in std_logic_vector(31 downto 0); 
      counterval: out std_logic_vector(15 downto 0); 
      e: out std_logic_vector(16 downto 0); 
      pmod2: out std_logic_vector(7 downto 0); 
      u: out std_logic_vector(16 downto 0)
    );
  end component;
begin

motorspeed_cw_i : motorspeed_cw
  port map (
    aa => aa,
    bb => bb,
    cc => cc,
    ce => ce,
    clk => clk,
    enapwm => enapwm,
    gateway_in => gateway_in,
    recerencia => recerencia,
    ts => ts,
    counterval => counterval,
    e => e,
    pmod2 => pmod2,
    u => u);
end Behavioral;

