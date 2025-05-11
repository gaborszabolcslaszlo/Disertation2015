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

entity meromodul_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      enapwm: in std_logic; 
      pmod1: in std_logic_vector(7 downto 0); 
      pmod3: in std_logic_vector(7 downto 0); 
      step: in std_logic_vector(16 downto 0); 
      tsvalue: in std_logic_vector(23 downto 0); 
      pmod2: out std_logic_vector(7 downto 0); 
      position: out std_logic_vector(15 downto 0); 
      speed: out std_logic_vector(15 downto 0); 
      uout: out std_logic_vector(15 downto 0)
    );
end meromodul_cw_stub;

architecture Behavioral of meromodul_cw_stub is

  component meromodul_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      enapwm: in std_logic; 
      pmod1: in std_logic_vector(7 downto 0); 
      pmod3: in std_logic_vector(7 downto 0); 
      step: in std_logic_vector(16 downto 0); 
      tsvalue: in std_logic_vector(23 downto 0); 
      pmod2: out std_logic_vector(7 downto 0); 
      position: out std_logic_vector(15 downto 0); 
      speed: out std_logic_vector(15 downto 0); 
      uout: out std_logic_vector(15 downto 0)
    );
  end component;
begin

meromodul_cw_i : meromodul_cw
  port map (
    ce => ce,
    clk => clk,
    enapwm => enapwm,
    pmod1 => pmod1,
    pmod3 => pmod3,
    step => step,
    tsvalue => tsvalue,
    pmod2 => pmod2,
    position => position,
    speed => speed,
    uout => uout);
end Behavioral;

