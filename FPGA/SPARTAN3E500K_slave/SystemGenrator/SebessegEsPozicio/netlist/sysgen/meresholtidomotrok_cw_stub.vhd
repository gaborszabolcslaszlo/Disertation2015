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

entity meresholtidomotrok_cw_stub is
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      csereposdir: in std_logic; 
      cseresebdir: in std_logic; 
      pos: in std_logic_vector(16 downto 0); 
      pos_en: in std_logic; 
      posistionsens: in std_logic_vector(1 downto 0); 
      seb: in std_logic_vector(16 downto 0); 
      seben: in std_logic; 
      sebsensor: in std_logic_vector(1 downto 0); 
      tsreg: in std_logic_vector(31 downto 0); 
      position: out std_logic_vector(15 downto 0); 
      pwmpos: out std_logic_vector(1 downto 0); 
      pwmseb: out std_logic_vector(1 downto 0); 
      sebesseg: out std_logic_vector(15 downto 0); 
      tobbi: out std_logic_vector(11 downto 0)
    );
end meresholtidomotrok_cw_stub;

architecture Behavioral of meresholtidomotrok_cw_stub is

  component meresholtidomotrok_cw
    port (
      ce: in std_logic := '1'; 
      clk: in std_logic; -- clock period = 20.0 ns (50.0 Mhz)
      csereposdir: in std_logic; 
      cseresebdir: in std_logic; 
      pos: in std_logic_vector(16 downto 0); 
      pos_en: in std_logic; 
      posistionsens: in std_logic_vector(1 downto 0); 
      seb: in std_logic_vector(16 downto 0); 
      seben: in std_logic; 
      sebsensor: in std_logic_vector(1 downto 0); 
      tsreg: in std_logic_vector(31 downto 0); 
      position: out std_logic_vector(15 downto 0); 
      pwmpos: out std_logic_vector(1 downto 0); 
      pwmseb: out std_logic_vector(1 downto 0); 
      sebesseg: out std_logic_vector(15 downto 0); 
      tobbi: out std_logic_vector(11 downto 0)
    );
  end component;
begin

meresholtidomotrok_cw_i : meresholtidomotrok_cw
  port map (
    ce => ce,
    clk => clk,
    csereposdir => csereposdir,
    cseresebdir => cseresebdir,
    pos => pos,
    pos_en => pos_en,
    posistionsens => posistionsens,
    seb => seb,
    seben => seben,
    sebsensor => sebsensor,
    tsreg => tsreg,
    position => position,
    pwmpos => pwmpos,
    pwmseb => pwmseb,
    sebesseg => sebesseg,
    tobbi => tobbi);
end Behavioral;

