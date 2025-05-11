----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:47:00 08/12/2011 
-- Design Name: 
-- Module Name:    mem_bus_mux - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
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

entity mem_bus_mux is
    Port ( 
    -- RAM ports
    ADDR_RAM_IN : in  STD_LOGIC_VECTOR (0 to 31);
    DQ_O_RAM : in  STD_LOGIC_VECTOR (0 to 15);
    DQ_T_RAM : in  STD_LOGIC_VECTOR (0 to 15);
    DQ_I_RAM : out STD_LOGIC_VECTOR (0 to 15);
    BEN_RAM_I : in STD_LOGIC_VECTOR (0 to 1);
    CEN_RAM_I : in STD_LOGIC_VECTOR (0 to 0);
    OEN_RAM_I : in STD_LOGIC_VECTOR (0 to 0);
    WEN_RAM_I : in STD_LOGIC;
   -- FLASH ports
    ADDR_FLASH_IN : in  STD_LOGIC_VECTOR (0 to 31);
    DQ_O_FLASH    : in  STD_LOGIC_VECTOR (0 to 15);
    DQ_T_FLASH    : in  STD_LOGIC_VECTOR (0 to 15);
    DQ_I_FLASH    : out STD_LOGIC_VECTOR (0 to 15);
    RPN_FLASH_I   : in STD_LOGIC;
    CEN_FLASH_I   : in STD_LOGIC_VECTOR (0 to 0);
    OEN_FLASH_I   : in STD_LOGIC_VECTOR (0 to 0);
    WEN_FLASH_I   : in STD_LOGIC;
    -- Common external ports
    MEM_ADDR : out STD_LOGIC_VECTOR (0 to 22);
    DQ_O     : out STD_LOGIC_VECTOR (0 to 15);
    DQ_T     : out STD_LOGIC_VECTOR (0 to 15);
    DQ_I     : in  STD_LOGIC_VECTOR (0 to 15);
    MEM_OEN  : out STD_LOGIC;
    MEM_WEN  : out STD_LOGIC;
    -- RAM specific ports
    RAM_CEN_O : out STD_LOGIC;
    RAM_BEN_O : out STD_LOGIC_VECTOR (0 to 1);
    -- FLASH specific ports
    FLASH_CEN_O : out STD_LOGIC;
    FLASH_RPN_O : out STD_LOGIC
    );
end mem_bus_mux;

architecture Behavioral of mem_bus_mux is
begin

--assign the bypass signals first
RAM_CEN_O <= CEN_RAM_I(0);
RAM_BEN_O <= BEN_RAM_I;

FLASH_CEN_O <= CEN_FLASH_I(0);
FLASH_RPN_O <= RPN_FLASH_I;

DQ_I_RAM <= DQ_I;
DQ_I_FLASH <= DQ_I;

-- Multiplex the addresses first
MEM_ADDR <= ADDR_RAM_IN(9 to 31) when CEN_RAM_I(0) = '0' else ADDR_FLASH_IN (8 to 30);

-- Multiplex the control signals
MEM_OEN <= OEN_RAM_I(0) when CEN_RAM_I(0) = '0' else OEN_FLASH_I(0) when CEN_FLASH_I(0) = '0' else '1';
MEM_WEN <= WEN_RAM_I when CEN_RAM_I(0) = '0' else WEN_FLASH_I when CEN_FLASH_I(0) = '0' else '1';

-- create the data IO Multiplexers
DQ_O <= DQ_O_RAM when CEN_RAM_I(0) = '0' else DQ_O_FLASH;
DQ_T <= DQ_T_RAM when CEN_RAM_I(0) = '0' else DQ_T_FLASH;

end Behavioral;

