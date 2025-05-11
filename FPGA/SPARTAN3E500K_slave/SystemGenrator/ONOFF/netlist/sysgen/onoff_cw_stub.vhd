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

entity onoff_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      enapwm: in std_logic; 
      ennulreset: in std_logic; 
      jb1: in std_logic_vector(7 downto 0); 
      jc1: in std_logic_vector(7 downto 0); 
      recerencia: in std_logic_vector(15 downto 0); 
      tsvalue: in std_logic_vector(23 downto 0); 
      ja1: out std_logic_vector(7 downto 0); 
      nullimp: out std_logic; 
      position: out std_logic_vector(15 downto 0); 
      speed: out std_logic_vector(15 downto 0); 
      tsimp: out std_logic_vector(15 downto 0); 
      u: out std_logic_vector(16 downto 0)
    );
end onoff_cw_stub;

architecture Behavioral of onoff_cw_stub is

  component onoff_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      enapwm: in std_logic; 
      ennulreset: in std_logic; 
      jb1: in std_logic_vector(7 downto 0); 
      jc1: in std_logic_vector(7 downto 0); 
      recerencia: in std_logic_vector(15 downto 0); 
      tsvalue: in std_logic_vector(23 downto 0); 
      ja1: out std_logic_vector(7 downto 0); 
      nullimp: out std_logic; 
      position: out std_logic_vector(15 downto 0); 
      speed: out std_logic_vector(15 downto 0); 
      tsimp: out std_logic_vector(15 downto 0); 
      u: out std_logic_vector(16 downto 0)
    );
  end component;
begin

onoff_cw_i : onoff_cw
  port map (
    ce => ce,
    clk => clk,
    enapwm => enapwm,
    ennulreset => ennulreset,
    jb1 => jb1,
    jc1 => jc1,
    recerencia => recerencia,
    tsvalue => tsvalue,
    ja1 => ja1,
    nullimp => nullimp,
    position => position,
    speed => speed,
    tsimp => tsimp,
    u => u);
end Behavioral;

