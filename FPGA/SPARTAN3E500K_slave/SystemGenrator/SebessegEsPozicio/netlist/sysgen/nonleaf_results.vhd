library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/H-hid ileszto1"

entity h_hid_ileszto1_entity_b3eaabbb0d is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    pwm: in std_logic; 
    toltesiido: in std_logic_vector(15 downto 0); 
    pwmdir0: out std_logic; 
    pwmdir1: out std_logic
  );
end h_hid_ileszto1_entity_b3eaabbb0d;

architecture structural of h_hid_ileszto1_entity_b3eaabbb0d is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant1_op_net_x0: std_logic_vector(15 downto 0);
  signal convert1_dout_net: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert4_dout_net_x1: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert5_dout_net_x1: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal periodus_v_ge_op_net: std_logic;
  signal register_q_net: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  convert4_dout_net_x1 <= dir;
  convert5_dout_net_x1 <= pwm;
  constant1_op_net_x0 <= toltesiido;
  pwmdir0 <= logical4_y_net_x0;
  pwmdir1 <= logical3_y_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => convert5_dout_net_x1,
      en => "1",
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => register_q_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => logical2_y_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => convert4_dout_net_x1,
      en => "1",
      dout(0) => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => logical_y_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => logical1_y_net,
      en => "1",
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => logical5_y_net,
      en => "1",
      dout(0) => convert6_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din(0) => logical6_y_net,
      en => "1",
      dout(0) => convert7_dout_net
    );

  counter: entity work.xlcounter_free_MeresHoltidoMotrok
    generic map (
      core_name0 => "cntr_11_0_d7c176806556610b",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en(0) => convert1_dout_net,
      rst(0) => periodus_v_ge_op_net,
      op => counter_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => convert3_dout_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      ip(0) => convert5_dout_net_x1,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert_dout_net,
      d1(0) => convert3_dout_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert_dout_net,
      d1(0) => inverter_op_net,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter1_op_net,
      d1(0) => convert5_dout_net_x1,
      y(0) => logical2_y_net
    );

  logical3: entity work.logical_a670ce0bc3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert5_dout_net,
      d1(0) => convert6_dout_net,
      y(0) => logical3_y_net_x0
    );

  logical4: entity work.logical_a670ce0bc3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert4_dout_net,
      d1(0) => convert7_dout_net,
      y(0) => logical4_y_net_x0
    );

  logical5: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert3_dout_net,
      d1(0) => convert1_dout_net,
      y(0) => logical5_y_net
    );

  logical6: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => convert1_dout_net,
      y(0) => logical6_y_net
    );

  periodus_v_ge: entity work.relational_7a7af7b80d
    port map (
      a => counter_op_net,
      b => constant1_op_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => periodus_v_ge_op_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => convert2_dout_net,
      en(0) => convert2_dout_net,
      rst(0) => periodus_v_ge_op_net,
      q(0) => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/H-hid ileszto2"

entity h_hid_ileszto2_entity_e490f1750e is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    pwm: in std_logic; 
    toltesiido: in std_logic_vector(15 downto 0); 
    pwmdir0: out std_logic; 
    pwmdir1: out std_logic
  );
end h_hid_ileszto2_entity_e490f1750e;

architecture structural of h_hid_ileszto2_entity_e490f1750e is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal constant1_op_net_x1: std_logic_vector(15 downto 0);
  signal convert1_dout_net: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic;
  signal convert4_dout_net: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical2_y_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical5_y_net: std_logic;
  signal logical6_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal periodus_v_ge_op_net: std_logic;
  signal register_q_net: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  convert1_dout_net_x1 <= dir;
  logical_y_net_x1 <= pwm;
  constant1_op_net_x1 <= toltesiido;
  pwmdir0 <= logical4_y_net_x0;
  pwmdir1 <= logical3_y_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => logical_y_net_x1,
      en => "1",
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => register_q_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => logical2_y_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => convert1_dout_net_x1,
      en => "1",
      dout(0) => convert3_dout_net
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => logical_y_net,
      en => "1",
      dout(0) => convert4_dout_net
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => logical1_y_net,
      en => "1",
      dout(0) => convert5_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => logical5_y_net,
      en => "1",
      dout(0) => convert6_dout_net
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => logical6_y_net,
      en => "1",
      dout(0) => convert7_dout_net
    );

  counter: entity work.xlcounter_free_MeresHoltidoMotrok
    generic map (
      core_name0 => "cntr_11_0_d7c176806556610b",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => convert1_dout_net,
      rst(0) => periodus_v_ge_op_net,
      op => counter_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => convert3_dout_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e4a281cf78
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => logical_y_net_x1,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert_dout_net,
      d1(0) => convert3_dout_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert_dout_net,
      d1(0) => inverter_op_net,
      y(0) => logical1_y_net
    );

  logical2: entity work.logical_938d99ac11
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter1_op_net,
      d1(0) => logical_y_net_x1,
      y(0) => logical2_y_net
    );

  logical3: entity work.logical_a670ce0bc3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert5_dout_net,
      d1(0) => convert6_dout_net,
      y(0) => logical3_y_net_x0
    );

  logical4: entity work.logical_a670ce0bc3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert4_dout_net,
      d1(0) => convert7_dout_net,
      y(0) => logical4_y_net_x0
    );

  logical5: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert3_dout_net,
      d1(0) => convert1_dout_net,
      y(0) => logical5_y_net
    );

  logical6: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter_op_net,
      d1(0) => convert1_dout_net,
      y(0) => logical6_y_net
    );

  periodus_v_ge: entity work.relational_7a7af7b80d
    port map (
      a => counter_op_net,
      b => constant1_op_net_x1,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => periodus_v_ge_op_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d(0) => convert2_dout_net,
      en(0) => convert2_dout_net,
      rst(0) => periodus_v_ge_op_net,
      q(0) => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/PWMpos"

entity pwmpos_entity_eaf10e3dc0 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    inport: in std_logic_vector(1 downto 0); 
    convert_x0: out std_logic_vector(1 downto 0)
  );
end pwmpos_entity_eaf10e3dc0;

architecture structural of pwmpos_entity_eaf10e3dc0 is
  signal bitbasher3_a_net_x0: std_logic_vector(1 downto 0);
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal convert_dout_net_x0: std_logic_vector(1 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(1 downto 0);

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  bitbasher3_a_net_x0 <= inport;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 2,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 2,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      din => reinterpret_output_port_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  reinterpret: entity work.reinterpret_9a54e08c7c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => bitbasher3_a_net_x0,
      output_port => reinterpret_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/Pozició Szab/PWM"

entity pwm_entity_165936bdb6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    pwm: out std_logic
  );
end pwm_entity_165936bdb6;

architecture structural of pwm_entity_165936bdb6 is
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert6_dout_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal kit_lt_s_korlátozása_op_net: std_logic;
  signal kit_lt_s_v_ge_op_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal periodus_reg_op_net: std_logic_vector(16 downto 0);
  signal periodus_v_ge_op_net: std_logic;
  signal shift_op_net: std_logic_vector(15 downto 0);
  signal x96_maxkit_lt_s_op_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  convert3_dout_net_x0 <= duty;
  convert6_dout_net_x0 <= en;
  pwm <= logical_y_net_x0;

  counter: entity work.xlcounter_free_MeresHoltidoMotrok
    generic map (
      core_name0 => "cntr_11_0_d7c176806556610b",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en(0) => convert6_dout_net_x0,
      rst(0) => periodus_v_ge_op_net,
      op => counter_op_net
    );

  kit_lt_s_korlátozása: entity work.relational_8059411daf
    port map (
      a => x96_maxkit_lt_s_op_net,
      b => shift_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => kit_lt_s_korlátozása_op_net
    );

  kit_lt_s_v_ge: entity work.relational_7a2906d528
    port map (
      a => mux_y_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => kit_lt_s_v_ge_op_net
    );

  logical: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => kit_lt_s_v_ge_op_net,
      d1(0) => convert6_dout_net_x0,
      y(0) => logical_y_net_x0
    );

  mux: entity work.mux_2a57cddffb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => x96_maxkit_lt_s_op_net,
      d1 => shift_op_net,
      sel(0) => kit_lt_s_korlátozása_op_net,
      y => mux_y_net
    );

  periodus_reg: entity work.constant_b789b9ed67
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => periodus_reg_op_net
    );

  periodus_v_ge: entity work.relational_9fe1fd91dc
    port map (
      a => counter_op_net,
      b => periodus_reg_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => periodus_v_ge_op_net
    );

  shift: entity work.shift_dacab189fc
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip => convert3_dout_net_x0,
      op => shift_op_net
    );

  x96_maxkit_lt_s: entity work.constant_60b1e3cf3c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => x96_maxkit_lt_s_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/Pozició Szab/Pozicíó"

entity pozic_entity_eb514ec999 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    enanulsig: in std_logic; 
    nullsignal: in std_logic; 
    ts_impulse: in std_logic; 
    valuect: in std_logic; 
    pozici: out std_logic_vector(15 downto 0)
  );
end pozic_entity_eb514ec999;

architecture structural of pozic_entity_eb514ec999 is
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert_dout_net_x0: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal csereposdir_net_x0: std_logic;
  signal dir_mux_y_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_dir2_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_imp2_net: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal l_p_s_mux_y_net: std_logic_vector(15 downto 0);
  signal logical_y_net: std_logic;
  signal neg_l_p_s_op_net: std_logic_vector(15 downto 0);
  signal null_tmnet_engedélyez_y_net: std_logic;
  signal poz_l_p_s_op_net: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic;
  signal register2_q_net: std_logic;
  signal regiszeter_q_net_x0: std_logic_vector(15 downto 0);
  signal sszead_s_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  inkremnt_lis_jelfeldolgoz_2_dir2_net <= dir;
  convert1_dout_net_x0 <= enanulsig;
  convert_dout_net_x1 <= nullsignal;
  inkremnt_lis_jelfeldolgoz_2_imp2_net <= ts_impulse;
  csereposdir_net_x0 <= valuect;
  pozici <= regiszeter_q_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din(0) => logical_y_net,
      en => "1",
      dout(0) => convert_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      din(0) => null_tmnet_engedélyez_y_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      din(0) => convert_dout_net_x1,
      en => "1",
      dout(0) => convert3_dout_net
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      din(0) => convert1_dout_net_x0,
      en => "1",
      dout(0) => convert6_dout_net
    );

  dir_mux: entity work.mux_cde5f13da6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register2_q_net,
      d1(0) => inverter1_op_net,
      sel(0) => csereposdir_net_x0,
      y(0) => dir_mux_y_net
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      ip(0) => register1_q_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      ip(0) => register2_q_net,
      op(0) => inverter1_op_net
    );

  l_p_s_mux: entity work.mux_2c45f290ed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => neg_l_p_s_op_net,
      d1 => poz_l_p_s_op_net,
      sel(0) => dir_mux_y_net,
      y => l_p_s_mux_y_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register1_q_net,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  neg_l_p_s: entity work.constant_32150454cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => neg_l_p_s_op_net
    );

  null_tmnet_engedélyez: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert3_dout_net,
      d1(0) => convert6_dout_net,
      y(0) => null_tmnet_engedélyez_y_net
    );

  poz_l_p_s: entity work.constant_190a6d2a1a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => poz_l_p_s_op_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => inkremnt_lis_jelfeldolgoz_2_imp2_net,
      en => "1",
      rst => "0",
      q(0) => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => inkremnt_lis_jelfeldolgoz_2_dir2_net,
      en => "1",
      rst => "0",
      q(0) => register2_q_net
    );

  regiszeter: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => sszead_s_net,
      en(0) => convert_dout_net_x0,
      rst(0) => convert2_dout_net,
      q => regiszeter_q_net_x0
    );

  sszead: entity work.xladdsub_MeresHoltidoMotrok
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 17,
      core_name0 => "addsb_11_0_178ba6eaed72af2d",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => regiszeter_q_net_x0,
      b => l_p_s_mux_y_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => sszead_s_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/Pozició Szab/SignToUSign"

entity signtousign_entity_82abfe96fd is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    valin: in std_logic_vector(15 downto 0); 
    val: out std_logic_vector(15 downto 0)
  );
end signtousign_entity_82abfe96fd;

architecture structural of signtousign_entity_82abfe96fd is
  signal bitbasher6_dir_net_x0: std_logic;
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  bitbasher6_dir_net_x0 <= dir;
  convert7_dout_net_x0 <= valin;
  val <= mux_y_net_x0;

  inverter: entity work.inverter_1ca63a13a1
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip => convert7_dout_net_x0,
      op => inverter_op_net
    );

  mux: entity work.mux_2c45f290ed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => convert7_dout_net_x0,
      d1 => inverter_op_net,
      sel(0) => bitbasher6_dir_net_x0,
      y => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/Pozició Szab"

entity pozici_szab_entity_ee4c55f8e6 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cseredir: in std_logic; 
    dir: in std_logic; 
    imp: in std_logic; 
    nullsignal: in std_logic; 
    pwmensig: in std_logic; 
    pwmpos: in std_logic_vector(16 downto 0); 
    dirposition: out std_logic; 
    pozic: out std_logic_vector(15 downto 0); 
    pwmsigout: out std_logic
  );
end pozici_szab_entity_ee4c55f8e6;

architecture structural of pozici_szab_entity_ee4c55f8e6 is
  signal bitbasher6_dir_net_x0: std_logic;
  signal bitbasher6_val_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert4_dout_net_x2: std_logic;
  signal convert5_dout_net_x2: std_logic;
  signal convert6_dout_net_x0: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_dout_net_x1: std_logic;
  signal csereposdir_net_x1: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_dir2_net_x0: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_imp2_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal pos_en_net_x0: std_logic;
  signal pos_net_x0: std_logic_vector(16 downto 0);
  signal register_q_net: std_logic_vector(16 downto 0);
  signal regiszeter_q_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  csereposdir_net_x1 <= cseredir;
  inkremnt_lis_jelfeldolgoz_2_dir2_net_x0 <= dir;
  inkremnt_lis_jelfeldolgoz_2_imp2_net_x0 <= imp;
  constant_op_net_x0 <= nullsignal;
  pos_en_net_x0 <= pwmensig;
  pos_net_x0 <= pwmpos;
  dirposition <= convert4_dout_net_x2;
  pozic <= regiszeter_q_net_x1;
  pwmsigout <= convert5_dout_net_x2;

  bitbasher6: entity work.bitbasher_7e62e7628d
    port map (
      a => register_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      dir(0) => bitbasher6_dir_net_x0,
      val => bitbasher6_val_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      din(0) => constant_op_net_x0,
      en => "1",
      dout(0) => convert_dout_net_x1
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      din(0) => constant_op_net_x0,
      en => "1",
      dout(0) => convert1_dout_net_x0
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert3_dout_net_x0
    );

  convert4: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => bitbasher6_dir_net_x0,
      en => "1",
      dout(0) => convert4_dout_net_x2
    );

  convert5: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => logical_y_net_x0,
      en => "1",
      dout(0) => convert5_dout_net_x2
    );

  convert6: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => pos_en_net_x0,
      en => "1",
      dout(0) => convert6_dout_net_x0
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => bitbasher6_val_net,
      en => "1",
      dout => convert7_dout_net_x0
    );

  pozic_eb514ec999: entity work.pozic_entity_eb514ec999
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      dir => inkremnt_lis_jelfeldolgoz_2_dir2_net_x0,
      enanulsig => convert1_dout_net_x0,
      nullsignal => convert_dout_net_x1,
      ts_impulse => inkremnt_lis_jelfeldolgoz_2_imp2_net_x0,
      valuect => csereposdir_net_x1,
      pozici => regiszeter_q_net_x1
    );

  pwm_165936bdb6: entity work.pwm_entity_165936bdb6
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      duty => convert3_dout_net_x0,
      en => convert6_dout_net_x0,
      pwm => logical_y_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => pos_net_x0,
      en => "1",
      rst => "0",
      q => register_q_net
    );

  signtousign_82abfe96fd: entity work.signtousign_entity_82abfe96fd
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      dir => bitbasher6_dir_net_x0,
      valin => convert7_dout_net_x0,
      val => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/Sebesség Szab/Mintavételi Jel Generator"

entity mintav_teli_jel_generator_entity_ba372a1d93 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    stop: in std_logic; 
    ts: in std_logic_vector(31 downto 0); 
    tick: out std_logic
  );
end mintav_teli_jel_generator_entity_ba372a1d93;

architecture structural of mintav_teli_jel_generator_entity_ba372a1d93 is
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert_dout_net: std_logic;
  signal delay_q_net: std_logic_vector(31 downto 0);
  signal inverter_op_net: std_logic;
  signal kimenet_ha_stop_0_y_net_x0: std_logic;
  signal periodus_v_ge_vagy_uj_ts_rték_y_net: std_logic;
  signal periodusv_ge_op_net: std_logic;
  signal sz_ml_l_op_net: std_logic_vector(31 downto 0);
  signal ts_v_ltozott_op_net: std_logic;
  signal tsreg_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  constant_op_net_x0 <= stop;
  tsreg_net_x0 <= ts;
  tick <= kimenet_ha_stop_0_y_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      din(0) => periodus_v_ge_vagy_uj_ts_rték_y_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 32
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => tsreg_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      ip(0) => constant_op_net_x0,
      op(0) => inverter_op_net
    );

  kimenet_ha_stop_0: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => periodusv_ge_op_net,
      d1(0) => inverter_op_net,
      y(0) => kimenet_ha_stop_0_y_net_x0
    );

  periodus_v_ge_vagy_uj_ts_rték: entity work.logical_a670ce0bc3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => periodusv_ge_op_net,
      d1(0) => ts_v_ltozott_op_net,
      y(0) => periodus_v_ge_vagy_uj_ts_rték_y_net
    );

  periodusv_ge: entity work.relational_3ffd1d0a40
    port map (
      a => sz_ml_l_op_net,
      b => tsreg_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => periodusv_ge_op_net
    );

  sz_ml_l: entity work.xlcounter_free_MeresHoltidoMotrok
    generic map (
      core_name0 => "cntr_11_0_5baa608aaa6fc4cf",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      en => "1",
      rst(0) => convert_dout_net,
      op => sz_ml_l_op_net
    );

  ts_v_ltozott: entity work.relational_14f77d7b05
    port map (
      a => tsreg_net_x0,
      b => delay_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => ts_v_ltozott_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/Sebesség Szab/Sebesseg Mér"

entity sebesseg_m_r_entity_ab62890fbd is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    csereldir: in std_logic; 
    dir: in std_logic; 
    impulse: in std_logic; 
    speedtsimp: in std_logic; 
    value_counter: out std_logic_vector(15 downto 0)
  );
end sebesseg_m_r_entity_ab62890fbd;

architecture structural of sebesseg_m_r_entity_ab62890fbd is
  signal addsub_s_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x10: std_logic;
  signal clk_1_sg_x10: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal cseresebdir_net_x0: std_logic;
  signal dir_reg_q_net: std_logic;
  signal imp_reg_q_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_dir_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_imp_net: std_logic;
  signal inverter_op_net: std_logic;
  signal kimenet_ha_stop_0_y_net_x1: std_logic;
  signal kimeneti_reg_q_net_x0: std_logic_vector(15 downto 0);
  signal l_p_s_neg_op_net: std_logic_vector(15 downto 0);
  signal l_p_s_poz_op_net: std_logic_vector(15 downto 0);
  signal logical_y_net: std_logic;
  signal mux1_y_net: std_logic;
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal op_net: std_logic;
  signal sebess_g_reg_q_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x10 <= ce_1;
  clk_1_sg_x10 <= clk_1;
  cseresebdir_net_x0 <= csereldir;
  inkremnt_lis_jelfeldolgoz_2_dir_net <= dir;
  inkremnt_lis_jelfeldolgoz_2_imp_net <= impulse;
  kimenet_ha_stop_0_y_net_x1 <= speedtsimp;
  value_counter <= kimeneti_reg_q_net_x0;

  addsub: entity work.xladdsub_MeresHoltidoMotrok
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 17,
      core_name0 => "addsb_11_0_178ba6eaed72af2d",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => sebess_g_reg_q_net,
      b => mux_y_net,
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din(0) => logical_y_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      din(0) => kimenet_ha_stop_0_y_net_x1,
      en => "1",
      dout(0) => convert1_dout_net
    );

  dir_reg: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => inkremnt_lis_jelfeldolgoz_2_dir_net,
      en => "1",
      rst => "0",
      q(0) => dir_reg_q_net
    );

  imp_reg: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d(0) => inkremnt_lis_jelfeldolgoz_2_imp_net,
      en => "1",
      rst => "0",
      q(0) => imp_reg_q_net
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip(0) => imp_reg_q_net,
      op(0) => inverter_op_net
    );

  kimeneti_reg: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d => sebess_g_reg_q_net,
      en(0) => convert1_dout_net,
      rst => "0",
      q => kimeneti_reg_q_net_x0
    );

  l_p_s_neg: entity work.constant_32150454cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => l_p_s_neg_op_net
    );

  l_p_s_poz: entity work.constant_190a6d2a1a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => l_p_s_poz_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => imp_reg_q_net,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_2c45f290ed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => l_p_s_neg_op_net,
      d1 => l_p_s_poz_op_net,
      sel(0) => mux1_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_cde5f13da6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => dir_reg_q_net,
      d1(0) => op_net,
      sel(0) => cseresebdir_net_x0,
      y(0) => mux1_y_net
    );

  sebess_g_reg: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      d => addsub_s_net,
      en(0) => convert_dout_net,
      rst(0) => convert1_dout_net,
      q => sebess_g_reg_q_net
    );

  x: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x10,
      clk => clk_1_sg_x10,
      clr => '0',
      ip(0) => dir_reg_q_net,
      op(0) => op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/Sebesség Szab"

entity sebess_g_szab_entity_c964557ce9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cseredir: in std_logic; 
    dir: in std_logic; 
    imp: in std_logic; 
    pidts32bitsig: in std_logic_vector(31 downto 0); 
    pwm_seb: in std_logic_vector(16 downto 0); 
    pwm_seben: in std_logic; 
    dirspeed: out std_logic; 
    pwmsigout: out std_logic; 
    sebesseg_m_r: out std_logic_vector(15 downto 0)
  );
end sebess_g_szab_entity_c964557ce9;

architecture structural of sebess_g_szab_entity_c964557ce9 is
  signal bitbasher6_dir_net_x0: std_logic;
  signal bitbasher6_val_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert1_dout_net_x2: std_logic;
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal cseresebdir_net_x1: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_dir_net_x0: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_imp_net_x0: std_logic;
  signal kimenet_ha_stop_0_y_net_x1: std_logic;
  signal kimeneti_reg_q_net_x1: std_logic_vector(15 downto 0);
  signal logical_y_net_x3: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(16 downto 0);
  signal seb_net_x0: std_logic_vector(16 downto 0);
  signal seben_net_x1: std_logic;
  signal tsreg_net_x1: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  cseresebdir_net_x1 <= cseredir;
  inkremnt_lis_jelfeldolgoz_2_dir_net_x0 <= dir;
  inkremnt_lis_jelfeldolgoz_2_imp_net_x0 <= imp;
  tsreg_net_x1 <= pidts32bitsig;
  seb_net_x0 <= pwm_seb;
  seben_net_x1 <= pwm_seben;
  dirspeed <= convert1_dout_net_x2;
  pwmsigout <= logical_y_net_x3;
  sebesseg_m_r <= kimeneti_reg_q_net_x1;

  bitbasher6: entity work.bitbasher_75b6572827
    port map (
      a => register_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      dir(0) => bitbasher6_dir_net_x0,
      val => bitbasher6_val_net
    );

  constant_x0: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 1,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 1,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 1,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      din(0) => bitbasher6_dir_net_x0,
      en => "1",
      dout(0) => convert1_dout_net_x2
    );

  convert3: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert3_dout_net_x0
    );

  convert7: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 16,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 16,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      din => bitbasher6_val_net,
      en => "1",
      dout => convert7_dout_net_x0
    );

  mintav_teli_jel_generator_ba372a1d93: entity work.mintav_teli_jel_generator_entity_ba372a1d93
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      stop => constant_op_net_x0,
      ts => tsreg_net_x1,
      tick => kimenet_ha_stop_0_y_net_x1
    );

  pwm_c47c4260dc: entity work.pwm_entity_165936bdb6
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      duty => convert3_dout_net_x0,
      en => seben_net_x1,
      pwm => logical_y_net_x3
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => seb_net_x0,
      en => "1",
      rst => "0",
      q => register_q_net
    );

  sebesseg_m_r_ab62890fbd: entity work.sebesseg_m_r_entity_ab62890fbd
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      csereldir => cseresebdir_net_x1,
      dir => inkremnt_lis_jelfeldolgoz_2_dir_net_x0,
      impulse => inkremnt_lis_jelfeldolgoz_2_imp_net_x0,
      speedtsimp => kimenet_ha_stop_0_y_net_x1,
      value_counter => kimeneti_reg_q_net_x1
    );

  signtousign_f6f95e44b6: entity work.signtousign_entity_82abfe96fd
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      dir => bitbasher6_dir_net_x0,
      valin => convert7_dout_net_x0,
      val => mux_y_net_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok/tobbi"

entity tobbi_entity_b548292082 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    inport: in std_logic_vector(11 downto 0); 
    convert_x0: out std_logic_vector(11 downto 0)
  );
end tobbi_entity_b548292082;

architecture structural of tobbi_entity_b548292082 is
  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal constant2_op_net_x0: std_logic_vector(11 downto 0);
  signal convert_dout_net_x0: std_logic_vector(11 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(11 downto 0);

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  constant2_op_net_x0 <= inport;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 12,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 12,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din => reinterpret_output_port_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  reinterpret: entity work.reinterpret_75275f6c4a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => constant2_op_net_x0,
      output_port => reinterpret_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeresHoltidoMotrok"

entity meresholtidomotrok is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end meresholtidomotrok;

architecture structural of meresholtidomotrok is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "MeresHoltidoMotrok,sysgen_core,{black_box_isim_used=1,clock_period=20.00000000,clocking=Clock_Enables,sample_periods=1.00000000000,testbench=0,total_blocks=231,xilinx_adder_subtracter_block=2,xilinx_arithmetic_relational_operator_block=10,xilinx_binary_shift_operator_block=2,xilinx_bitbasher_block=6,xilinx_black_box_block=1,xilinx_bus_multiplexer_block=8,xilinx_constant_block_block=12,xilinx_counter_block=5,xilinx_delay_block=1,xilinx_gateway_in_block=9,xilinx_gateway_out_block=5,xilinx_inverter_block=15,xilinx_logical_block_block=21,xilinx_register_block=11,xilinx_system_generator_block=1,xilinx_type_converter_block=36,xilinx_type_reinterpreter_block=3,}";

  signal bitbasher1_a_net: std_logic;
  signal bitbasher1_c_net: std_logic;
  signal bitbasher2_a_net: std_logic;
  signal bitbasher2_c_net: std_logic;
  signal bitbasher3_a_net_x0: std_logic_vector(1 downto 0);
  signal bitbasher_a_net_x0: std_logic_vector(1 downto 0);
  signal ce_1_sg_x14: std_logic;
  signal clk_1_sg_x14: std_logic;
  signal constant1_op_net_x1: std_logic_vector(15 downto 0);
  signal constant2_op_net_x0: std_logic_vector(11 downto 0);
  signal constant_op_net_x0: std_logic;
  signal convert1_dout_net_x2: std_logic;
  signal convert4_dout_net_x2: std_logic;
  signal convert5_dout_net_x2: std_logic;
  signal csereposdir_net: std_logic;
  signal cseresebdir_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_dir2_net_x0: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_dir_net_x0: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_imp2_net_x0: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_imp_net_x0: std_logic;
  signal inverter2_op_net: std_logic;
  signal inverter3_op_net: std_logic;
  signal inverter4_op_net: std_logic;
  signal inverter5_op_net: std_logic;
  signal logical3_y_net_x0: std_logic;
  signal logical3_y_net_x1: std_logic;
  signal logical4_y_net_x0: std_logic;
  signal logical4_y_net_x1: std_logic;
  signal logical_y_net_x3: std_logic;
  signal pos_en_net: std_logic;
  signal pos_net: std_logic_vector(16 downto 0);
  signal posistionsens_net: std_logic_vector(1 downto 0);
  signal position_net: std_logic_vector(15 downto 0);
  signal pwmpos_net: std_logic_vector(1 downto 0);
  signal pwmseb_net: std_logic_vector(1 downto 0);
  signal seb_net: std_logic_vector(16 downto 0);
  signal seben_net: std_logic;
  signal sebesseg_net: std_logic_vector(15 downto 0);
  signal sebsensor_net: std_logic_vector(1 downto 0);
  signal tobbi_net: std_logic_vector(11 downto 0);
  signal tsreg_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x14 <= ce_1;
  clk_1_sg_x14 <= clk_1;
  csereposdir_net <= csereposdir;
  cseresebdir_net <= cseresebdir;
  pos_net <= pos;
  pos_en_net <= pos_en;
  posistionsens_net <= posistionsens;
  seb_net <= seb;
  seben_net <= seben;
  sebsensor_net <= sebsensor;
  tsreg_net <= tsreg;
  position <= position_net;
  pwmpos <= pwmpos_net;
  pwmseb <= pwmseb_net;
  sebesseg <= sebesseg_net;
  tobbi <= tobbi_net;

  bitbasher: entity work.bitbasher_2014c2b795
    port map (
      b(0) => inverter3_op_net,
      c(0) => inverter2_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a => bitbasher_a_net_x0
    );

  bitbasher1: entity work.bitbasher_44c78d706b
    port map (
      b => sebsensor_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a(0) => bitbasher1_a_net,
      c(0) => bitbasher1_c_net
    );

  bitbasher2: entity work.bitbasher_44c78d706b
    port map (
      b => posistionsens_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a(0) => bitbasher2_a_net,
      c(0) => bitbasher2_c_net
    );

  bitbasher3: entity work.bitbasher_2014c2b795
    port map (
      b(0) => inverter4_op_net,
      c(0) => inverter5_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a => bitbasher3_a_net_x0
    );

  constant1: entity work.constant_f49489e83b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net_x1
    );

  constant2: entity work.constant_52ed67d34a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net_x0
    );

  constant_x0: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
    );

  h_hid_ileszto1_b3eaabbb0d: entity work.h_hid_ileszto1_entity_b3eaabbb0d
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      dir => convert4_dout_net_x2,
      pwm => convert5_dout_net_x2,
      toltesiido => constant1_op_net_x1,
      pwmdir0 => logical4_y_net_x0,
      pwmdir1 => logical3_y_net_x0
    );

  h_hid_ileszto2_e490f1750e: entity work.h_hid_ileszto2_entity_e490f1750e
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      dir => convert1_dout_net_x2,
      pwm => logical_y_net_x3,
      toltesiido => constant1_op_net_x1,
      pwmdir0 => logical4_y_net_x1,
      pwmdir1 => logical3_y_net_x1
    );

  inkremnt_lis_jelfeldolgozó_2: entity work.SensorIncModul
    port map (
      quada => bitbasher1_a_net,
      quada2 => bitbasher1_c_net,
      quadb => bitbasher2_a_net,
      quadb2 => bitbasher2_c_net,
      dir => inkremnt_lis_jelfeldolgoz_2_dir_net_x0,
      dir2 => inkremnt_lis_jelfeldolgoz_2_dir2_net_x0,
      imp => inkremnt_lis_jelfeldolgoz_2_imp_net_x0,
      imp2 => inkremnt_lis_jelfeldolgoz_2_imp2_net_x0
    );

  inverter2: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      ip(0) => logical3_y_net_x1,
      op(0) => inverter2_op_net
    );

  inverter3: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      ip(0) => logical4_y_net_x1,
      op(0) => inverter3_op_net
    );

  inverter4: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      ip(0) => logical4_y_net_x0,
      op(0) => inverter4_op_net
    );

  inverter5: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x14,
      clk => clk_1_sg_x14,
      clr => '0',
      ip(0) => logical3_y_net_x0,
      op(0) => inverter5_op_net
    );

  pozici_szab_ee4c55f8e6: entity work.pozici_szab_entity_ee4c55f8e6
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      cseredir => csereposdir_net,
      dir => inkremnt_lis_jelfeldolgoz_2_dir2_net_x0,
      imp => inkremnt_lis_jelfeldolgoz_2_imp2_net_x0,
      nullsignal => constant_op_net_x0,
      pwmensig => pos_en_net,
      pwmpos => pos_net,
      dirposition => convert4_dout_net_x2,
      pozic => position_net,
      pwmsigout => convert5_dout_net_x2
    );

  pwmpos_eaf10e3dc0: entity work.pwmpos_entity_eaf10e3dc0
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      inport => bitbasher3_a_net_x0,
      convert_x0 => pwmpos_net
    );

  pwmseb_179e605a99: entity work.pwmpos_entity_eaf10e3dc0
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      inport => bitbasher_a_net_x0,
      convert_x0 => pwmseb_net
    );

  sebess_g_szab_c964557ce9: entity work.sebess_g_szab_entity_c964557ce9
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      cseredir => cseresebdir_net,
      dir => inkremnt_lis_jelfeldolgoz_2_dir_net_x0,
      imp => inkremnt_lis_jelfeldolgoz_2_imp_net_x0,
      pidts32bitsig => tsreg_net,
      pwm_seb => seb_net,
      pwm_seben => seben_net,
      dirspeed => convert1_dout_net_x2,
      pwmsigout => logical_y_net_x3,
      sebesseg_m_r => sebesseg_net
    );

  tobbi_b548292082: entity work.tobbi_entity_b548292082
    port map (
      ce_1 => ce_1_sg_x14,
      clk_1 => clk_1_sg_x14,
      inport => constant2_op_net_x0,
      convert_x0 => tobbi_net
    );

end structural;
