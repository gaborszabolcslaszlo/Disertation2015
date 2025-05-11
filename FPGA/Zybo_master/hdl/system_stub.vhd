-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
    processing_system7_0_PS_SRSTB_pin : in std_logic;
    processing_system7_0_PS_CLK_pin : in std_logic;
    processing_system7_0_PS_PORB_pin : in std_logic;
    processing_system7_0_DDR_Clk : inout std_logic;
    processing_system7_0_DDR_Clk_n : inout std_logic;
    processing_system7_0_DDR_CKE : inout std_logic;
    processing_system7_0_DDR_CS_n : inout std_logic;
    processing_system7_0_DDR_RAS_n : inout std_logic;
    processing_system7_0_DDR_CAS_n : inout std_logic;
    processing_system7_0_DDR_WEB_pin : out std_logic;
    processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
    processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
    processing_system7_0_DDR_ODT : inout std_logic;
    processing_system7_0_DDR_DRSTB : inout std_logic;
    processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
    processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
    processing_system7_0_DDR_VRN : inout std_logic;
    processing_system7_0_DDR_VRP : inout std_logic;
    axi_uart16550_0_Sin_pin : in std_logic;
    axi_uart16550_0_Sout_pin : out std_logic;
    axi_iic_0_Sda_pin : inout std_logic;
    axi_iic_0_Scl_pin : inout std_logic;
    axi_gpio_LED4_GPIO_IO_O_pin : out std_logic_vector(3 downto 0);
    axi_gpio_Switch_GPIO_IO_pin : inout std_logic_vector(3 downto 0);
    SpiSpartan_MISO_I_pin : in std_logic;
    SpiSpartan_MOSI_O_pin : out std_logic;
    SpiSpartan_SCK_O_pin : out std_logic;
    SpiSpartan_SS_O_pin : out std_logic_vector(0 to 0);
    axi_iic_1_Sda_pin : inout std_logic;
    axi_iic_1_Scl_pin : inout std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      processing_system7_0_MIO : inout std_logic_vector(53 downto 0);
      processing_system7_0_PS_SRSTB_pin : in std_logic;
      processing_system7_0_PS_CLK_pin : in std_logic;
      processing_system7_0_PS_PORB_pin : in std_logic;
      processing_system7_0_DDR_Clk : inout std_logic;
      processing_system7_0_DDR_Clk_n : inout std_logic;
      processing_system7_0_DDR_CKE : inout std_logic;
      processing_system7_0_DDR_CS_n : inout std_logic;
      processing_system7_0_DDR_RAS_n : inout std_logic;
      processing_system7_0_DDR_CAS_n : inout std_logic;
      processing_system7_0_DDR_WEB_pin : out std_logic;
      processing_system7_0_DDR_BankAddr : inout std_logic_vector(2 downto 0);
      processing_system7_0_DDR_Addr : inout std_logic_vector(14 downto 0);
      processing_system7_0_DDR_ODT : inout std_logic;
      processing_system7_0_DDR_DRSTB : inout std_logic;
      processing_system7_0_DDR_DQ : inout std_logic_vector(31 downto 0);
      processing_system7_0_DDR_DM : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_DQS_n : inout std_logic_vector(3 downto 0);
      processing_system7_0_DDR_VRN : inout std_logic;
      processing_system7_0_DDR_VRP : inout std_logic;
      axi_uart16550_0_Sin_pin : in std_logic;
      axi_uart16550_0_Sout_pin : out std_logic;
      axi_iic_0_Sda_pin : inout std_logic;
      axi_iic_0_Scl_pin : inout std_logic;
      axi_gpio_LED4_GPIO_IO_O_pin : out std_logic_vector(3 downto 0);
      axi_gpio_Switch_GPIO_IO_pin : inout std_logic_vector(3 downto 0);
      SpiSpartan_MISO_I_pin : in std_logic;
      SpiSpartan_MOSI_O_pin : out std_logic;
      SpiSpartan_SCK_O_pin : out std_logic;
      SpiSpartan_SS_O_pin : out std_logic_vector(0 to 0);
      axi_iic_1_Sda_pin : inout std_logic;
      axi_iic_1_Scl_pin : inout std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      processing_system7_0_MIO => processing_system7_0_MIO,
      processing_system7_0_PS_SRSTB_pin => processing_system7_0_PS_SRSTB_pin,
      processing_system7_0_PS_CLK_pin => processing_system7_0_PS_CLK_pin,
      processing_system7_0_PS_PORB_pin => processing_system7_0_PS_PORB_pin,
      processing_system7_0_DDR_Clk => processing_system7_0_DDR_Clk,
      processing_system7_0_DDR_Clk_n => processing_system7_0_DDR_Clk_n,
      processing_system7_0_DDR_CKE => processing_system7_0_DDR_CKE,
      processing_system7_0_DDR_CS_n => processing_system7_0_DDR_CS_n,
      processing_system7_0_DDR_RAS_n => processing_system7_0_DDR_RAS_n,
      processing_system7_0_DDR_CAS_n => processing_system7_0_DDR_CAS_n,
      processing_system7_0_DDR_WEB_pin => processing_system7_0_DDR_WEB_pin,
      processing_system7_0_DDR_BankAddr => processing_system7_0_DDR_BankAddr,
      processing_system7_0_DDR_Addr => processing_system7_0_DDR_Addr,
      processing_system7_0_DDR_ODT => processing_system7_0_DDR_ODT,
      processing_system7_0_DDR_DRSTB => processing_system7_0_DDR_DRSTB,
      processing_system7_0_DDR_DQ => processing_system7_0_DDR_DQ,
      processing_system7_0_DDR_DM => processing_system7_0_DDR_DM,
      processing_system7_0_DDR_DQS => processing_system7_0_DDR_DQS,
      processing_system7_0_DDR_DQS_n => processing_system7_0_DDR_DQS_n,
      processing_system7_0_DDR_VRN => processing_system7_0_DDR_VRN,
      processing_system7_0_DDR_VRP => processing_system7_0_DDR_VRP,
      axi_uart16550_0_Sin_pin => axi_uart16550_0_Sin_pin,
      axi_uart16550_0_Sout_pin => axi_uart16550_0_Sout_pin,
      axi_iic_0_Sda_pin => axi_iic_0_Sda_pin,
      axi_iic_0_Scl_pin => axi_iic_0_Scl_pin,
      axi_gpio_LED4_GPIO_IO_O_pin => axi_gpio_LED4_GPIO_IO_O_pin,
      axi_gpio_Switch_GPIO_IO_pin => axi_gpio_Switch_GPIO_IO_pin,
      SpiSpartan_MISO_I_pin => SpiSpartan_MISO_I_pin,
      SpiSpartan_MOSI_O_pin => SpiSpartan_MOSI_O_pin,
      SpiSpartan_SCK_O_pin => SpiSpartan_SCK_O_pin,
      SpiSpartan_SS_O_pin => SpiSpartan_SS_O_pin(0 to 0),
      axi_iic_1_Sda_pin => axi_iic_1_Sda_pin,
      axi_iic_1_Scl_pin => axi_iic_1_Scl_pin
    );

end architecture STRUCTURE;

