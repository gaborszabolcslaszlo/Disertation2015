-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    fpga_0_clk_1_sys_clk_pin : in std_logic;
    ntg_0_sig_in_pin : in std_logic;
    LED4gpio_GPIO_IO_O_pin : out std_logic_vector(0 to 3);
    SpiZybo_SCK_I_pin : in std_logic;
    SpiZybo_SPISEL_pin : in std_logic;
    SpiZybo_MOSI_I_pin : in std_logic;
    SpiZybo_MISO_O_pin : out std_logic;
    Cooler0PWM_pwmout_pin : out std_logic;
    PumpPWM_pwmout_pin : out std_logic;
    ipsdksebesegespozicio_plbw_0_positionb_pin : in std_logic;
    ipsdksebesegespozicio_plbw_0_null_x0_pin : in std_logic;
    ipsdksebesegespozicio_plbw_0_speedpwm0_pin : out std_logic;
    ipsdksebesegespozicio_plbw_0_pospwm0_pin : out std_logic;
    ipsdksebesegespozicio_plbw_0_speedpwm1_pin : out std_logic;
    ipsdksebesegespozicio_plbw_0_pospwm1_pin : out std_logic;
    ipsdksebesegespozicio_plbw_0_speedb_pin : in std_logic;
    ipsdksebesegespozicio_plbw_0_speeda_pin : in std_logic;
    ipsdksebesegespozicio_plbw_0_positiona_pin : in std_logic;
    ipsdksebesegespozicio_plbw_1_pospwm1_pin : out std_logic;
    ipsdksebesegespozicio_plbw_1_pospwm0_pin : out std_logic;
    ipsdksebesegespozicio_plbw_1_positiona_pin : in std_logic;
    ipsdksebesegespozicio_plbw_1_null_x0_pin : in std_logic;
    ipsdksebesegespozicio_plbw_1_speedpwm0_pin : out std_logic;
    ipsdksebesegespozicio_plbw_1_speedpwm1_pin : out std_logic;
    ipsdksebesegespozicio_plbw_1_speedb_pin : in std_logic;
    ipsdksebesegespozicio_plbw_1_speeda_pin : in std_logic;
    ipsdksebesegespozicio_plbw_1_positionb_pin : in std_logic;
    ipsdksebesegespozicio_plbw_2_null_x0_pin : in std_logic;
    ipsdksebesegespozicio_plbw_2_pospwm1_pin : out std_logic;
    ipsdksebesegespozicio_plbw_2_positionb_pin : in std_logic;
    ipsdksebesegespozicio_plbw_2_speedpwm0_pin : out std_logic;
    ipsdksebesegespozicio_plbw_2_speeda_pin : in std_logic;
    ipsdksebesegespozicio_plbw_2_speedb_pin : in std_logic;
    ipsdksebesegespozicio_plbw_2_positiona_pin : in std_logic;
    ipsdksebesegespozicio_plbw_2_pospwm0_pin : out std_logic;
    ipsdksebesegespozicio_plbw_2_speedpwm1_pin : out std_logic;
    ipsdksebesegespozicio_plbw_3_positiona_pin : in std_logic;
    ipsdksebesegespozicio_plbw_3_positionb_pin : in std_logic;
    ipsdksebesegespozicio_plbw_3_pospwm0_pin : out std_logic;
    ipsdksebesegespozicio_plbw_3_speedb_pin : in std_logic;
    ipsdksebesegespozicio_plbw_3_speedpwm0_pin : out std_logic;
    ipsdksebesegespozicio_plbw_3_speeda_pin : in std_logic;
    ipsdksebesegespozicio_plbw_3_pospwm1_pin : out std_logic;
    ipsdksebesegespozicio_plbw_3_speedpwm1_pin : out std_logic;
    ipsdksebesegespozicio_plbw_3_null_x0_pin : in std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      fpga_0_clk_1_sys_clk_pin : in std_logic;
      ntg_0_sig_in_pin : in std_logic;
      LED4gpio_GPIO_IO_O_pin : out std_logic_vector(0 to 3);
      SpiZybo_SCK_I_pin : in std_logic;
      SpiZybo_SPISEL_pin : in std_logic;
      SpiZybo_MOSI_I_pin : in std_logic;
      SpiZybo_MISO_O_pin : out std_logic;
      Cooler0PWM_pwmout_pin : out std_logic;
      PumpPWM_pwmout_pin : out std_logic;
      ipsdksebesegespozicio_plbw_0_positionb_pin : in std_logic;
      ipsdksebesegespozicio_plbw_0_null_x0_pin : in std_logic;
      ipsdksebesegespozicio_plbw_0_speedpwm0_pin : out std_logic;
      ipsdksebesegespozicio_plbw_0_pospwm0_pin : out std_logic;
      ipsdksebesegespozicio_plbw_0_speedpwm1_pin : out std_logic;
      ipsdksebesegespozicio_plbw_0_pospwm1_pin : out std_logic;
      ipsdksebesegespozicio_plbw_0_speedb_pin : in std_logic;
      ipsdksebesegespozicio_plbw_0_speeda_pin : in std_logic;
      ipsdksebesegespozicio_plbw_0_positiona_pin : in std_logic;
      ipsdksebesegespozicio_plbw_1_pospwm1_pin : out std_logic;
      ipsdksebesegespozicio_plbw_1_pospwm0_pin : out std_logic;
      ipsdksebesegespozicio_plbw_1_positiona_pin : in std_logic;
      ipsdksebesegespozicio_plbw_1_null_x0_pin : in std_logic;
      ipsdksebesegespozicio_plbw_1_speedpwm0_pin : out std_logic;
      ipsdksebesegespozicio_plbw_1_speedpwm1_pin : out std_logic;
      ipsdksebesegespozicio_plbw_1_speedb_pin : in std_logic;
      ipsdksebesegespozicio_plbw_1_speeda_pin : in std_logic;
      ipsdksebesegespozicio_plbw_1_positionb_pin : in std_logic;
      ipsdksebesegespozicio_plbw_2_null_x0_pin : in std_logic;
      ipsdksebesegespozicio_plbw_2_pospwm1_pin : out std_logic;
      ipsdksebesegespozicio_plbw_2_positionb_pin : in std_logic;
      ipsdksebesegespozicio_plbw_2_speedpwm0_pin : out std_logic;
      ipsdksebesegespozicio_plbw_2_speeda_pin : in std_logic;
      ipsdksebesegespozicio_plbw_2_speedb_pin : in std_logic;
      ipsdksebesegespozicio_plbw_2_positiona_pin : in std_logic;
      ipsdksebesegespozicio_plbw_2_pospwm0_pin : out std_logic;
      ipsdksebesegespozicio_plbw_2_speedpwm1_pin : out std_logic;
      ipsdksebesegespozicio_plbw_3_positiona_pin : in std_logic;
      ipsdksebesegespozicio_plbw_3_positionb_pin : in std_logic;
      ipsdksebesegespozicio_plbw_3_pospwm0_pin : out std_logic;
      ipsdksebesegespozicio_plbw_3_speedb_pin : in std_logic;
      ipsdksebesegespozicio_plbw_3_speedpwm0_pin : out std_logic;
      ipsdksebesegespozicio_plbw_3_speeda_pin : in std_logic;
      ipsdksebesegespozicio_plbw_3_pospwm1_pin : out std_logic;
      ipsdksebesegespozicio_plbw_3_speedpwm1_pin : out std_logic;
      ipsdksebesegespozicio_plbw_3_null_x0_pin : in std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      fpga_0_clk_1_sys_clk_pin => fpga_0_clk_1_sys_clk_pin,
      ntg_0_sig_in_pin => ntg_0_sig_in_pin,
      LED4gpio_GPIO_IO_O_pin => LED4gpio_GPIO_IO_O_pin,
      SpiZybo_SCK_I_pin => SpiZybo_SCK_I_pin,
      SpiZybo_SPISEL_pin => SpiZybo_SPISEL_pin,
      SpiZybo_MOSI_I_pin => SpiZybo_MOSI_I_pin,
      SpiZybo_MISO_O_pin => SpiZybo_MISO_O_pin,
      Cooler0PWM_pwmout_pin => Cooler0PWM_pwmout_pin,
      PumpPWM_pwmout_pin => PumpPWM_pwmout_pin,
      ipsdksebesegespozicio_plbw_0_positionb_pin => ipsdksebesegespozicio_plbw_0_positionb_pin,
      ipsdksebesegespozicio_plbw_0_null_x0_pin => ipsdksebesegespozicio_plbw_0_null_x0_pin,
      ipsdksebesegespozicio_plbw_0_speedpwm0_pin => ipsdksebesegespozicio_plbw_0_speedpwm0_pin,
      ipsdksebesegespozicio_plbw_0_pospwm0_pin => ipsdksebesegespozicio_plbw_0_pospwm0_pin,
      ipsdksebesegespozicio_plbw_0_speedpwm1_pin => ipsdksebesegespozicio_plbw_0_speedpwm1_pin,
      ipsdksebesegespozicio_plbw_0_pospwm1_pin => ipsdksebesegespozicio_plbw_0_pospwm1_pin,
      ipsdksebesegespozicio_plbw_0_speedb_pin => ipsdksebesegespozicio_plbw_0_speedb_pin,
      ipsdksebesegespozicio_plbw_0_speeda_pin => ipsdksebesegespozicio_plbw_0_speeda_pin,
      ipsdksebesegespozicio_plbw_0_positiona_pin => ipsdksebesegespozicio_plbw_0_positiona_pin,
      ipsdksebesegespozicio_plbw_1_pospwm1_pin => ipsdksebesegespozicio_plbw_1_pospwm1_pin,
      ipsdksebesegespozicio_plbw_1_pospwm0_pin => ipsdksebesegespozicio_plbw_1_pospwm0_pin,
      ipsdksebesegespozicio_plbw_1_positiona_pin => ipsdksebesegespozicio_plbw_1_positiona_pin,
      ipsdksebesegespozicio_plbw_1_null_x0_pin => ipsdksebesegespozicio_plbw_1_null_x0_pin,
      ipsdksebesegespozicio_plbw_1_speedpwm0_pin => ipsdksebesegespozicio_plbw_1_speedpwm0_pin,
      ipsdksebesegespozicio_plbw_1_speedpwm1_pin => ipsdksebesegespozicio_plbw_1_speedpwm1_pin,
      ipsdksebesegespozicio_plbw_1_speedb_pin => ipsdksebesegespozicio_plbw_1_speedb_pin,
      ipsdksebesegespozicio_plbw_1_speeda_pin => ipsdksebesegespozicio_plbw_1_speeda_pin,
      ipsdksebesegespozicio_plbw_1_positionb_pin => ipsdksebesegespozicio_plbw_1_positionb_pin,
      ipsdksebesegespozicio_plbw_2_null_x0_pin => ipsdksebesegespozicio_plbw_2_null_x0_pin,
      ipsdksebesegespozicio_plbw_2_pospwm1_pin => ipsdksebesegespozicio_plbw_2_pospwm1_pin,
      ipsdksebesegespozicio_plbw_2_positionb_pin => ipsdksebesegespozicio_plbw_2_positionb_pin,
      ipsdksebesegespozicio_plbw_2_speedpwm0_pin => ipsdksebesegespozicio_plbw_2_speedpwm0_pin,
      ipsdksebesegespozicio_plbw_2_speeda_pin => ipsdksebesegespozicio_plbw_2_speeda_pin,
      ipsdksebesegespozicio_plbw_2_speedb_pin => ipsdksebesegespozicio_plbw_2_speedb_pin,
      ipsdksebesegespozicio_plbw_2_positiona_pin => ipsdksebesegespozicio_plbw_2_positiona_pin,
      ipsdksebesegespozicio_plbw_2_pospwm0_pin => ipsdksebesegespozicio_plbw_2_pospwm0_pin,
      ipsdksebesegespozicio_plbw_2_speedpwm1_pin => ipsdksebesegespozicio_plbw_2_speedpwm1_pin,
      ipsdksebesegespozicio_plbw_3_positiona_pin => ipsdksebesegespozicio_plbw_3_positiona_pin,
      ipsdksebesegespozicio_plbw_3_positionb_pin => ipsdksebesegespozicio_plbw_3_positionb_pin,
      ipsdksebesegespozicio_plbw_3_pospwm0_pin => ipsdksebesegespozicio_plbw_3_pospwm0_pin,
      ipsdksebesegespozicio_plbw_3_speedb_pin => ipsdksebesegespozicio_plbw_3_speedb_pin,
      ipsdksebesegespozicio_plbw_3_speedpwm0_pin => ipsdksebesegespozicio_plbw_3_speedpwm0_pin,
      ipsdksebesegespozicio_plbw_3_speeda_pin => ipsdksebesegespozicio_plbw_3_speeda_pin,
      ipsdksebesegespozicio_plbw_3_pospwm1_pin => ipsdksebesegespozicio_plbw_3_pospwm1_pin,
      ipsdksebesegespozicio_plbw_3_speedpwm1_pin => ipsdksebesegespozicio_plbw_3_speedpwm1_pin,
      ipsdksebesegespozicio_plbw_3_null_x0_pin => ipsdksebesegespozicio_plbw_3_null_x0_pin
    );

end architecture STRUCTURE;

