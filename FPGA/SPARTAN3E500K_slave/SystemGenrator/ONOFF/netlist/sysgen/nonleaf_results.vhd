library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "onOff/JA1"

entity ja1_entity_5c1b3675b2 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    inport: in std_logic_vector(7 downto 0); 
    convert_x0: out std_logic_vector(7 downto 0)
  );
end ja1_entity_5c1b3675b2;

architecture structural of ja1_entity_5c1b3675b2 is
  signal anyapmod_a_net_x0: std_logic_vector(7 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal convert_dout_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  anyapmod_a_net_x0 <= inport;
  convert_x0 <= convert_dout_net_x0;

  convert: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 1,
      din_bin_pt => 0,
      din_width => 8,
      dout_arith => 1,
      dout_bin_pt => 0,
      dout_width => 8,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      din => reinterpret_output_port_net,
      en => "1",
      dout => convert_dout_net_x0
    );

  reinterpret: entity work.reinterpret_f21e7f2ddf
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      input_port => anyapmod_a_net_x0,
      output_port => reinterpret_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "onOff/ONOFF"

entity onoff_entity_5ff5682403 is
  port (
    aktval: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    refval: in std_logic_vector(15 downto 0); 
    u: out std_logic_vector(16 downto 0)
  );
end onoff_entity_5ff5682403;

architecture structural of onoff_entity_5ff5682403 is
  signal addsub1_s_net: std_logic_vector(16 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub_s_net: std_logic_vector(16 downto 0);
  signal bitbasher_a_net: std_logic_vector(1 downto 0);
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal ct0_op_net: std_logic_vector(16 downto 0);
  signal ct1_op_net: std_logic_vector(16 downto 0);
  signal ct2_op_net: std_logic_vector(16 downto 0);
  signal ct4_op_net: std_logic_vector(16 downto 0);
  signal delay_q_net: std_logic_vector(15 downto 0);
  signal emaxpoz_op_net: std_logic_vector(16 downto 0);
  signal eminpoz_op_net: std_logic_vector(16 downto 0);
  signal erroreqzero_op_net: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter2_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical1_y_net: std_logic;
  signal logical_y_net: std_logic;
  signal mult_p_net: std_logic_vector(16 downto 0);
  signal mux1_y_net: std_logic_vector(16 downto 0);
  signal mux2_y_net: std_logic_vector(16 downto 0);
  signal mux_y_net_x0: std_logic_vector(16 downto 0);
  signal recerencia_net_x0: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic;
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal u0_op_net: std_logic_vector(16 downto 0);
  signal umaxneg_op_net: std_logic_vector(16 downto 0);
  signal umaxpoz_op_net: std_logic_vector(16 downto 0);

begin
  addsub2_s_net_x0 <= aktval;
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  recerencia_net_x0 <= refval;
  u <= mux_y_net_x0;

  addsub: entity work.xladdsub_onOff
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
      core_name0 => "addsb_11_0_80bded47015320ce",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 17
    )
    port map (
      a => recerencia_net_x0,
      b => addsub2_s_net_x0,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  addsub1: entity work.xladdsub_onOff
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
      core_name0 => "addsb_11_0_80bded47015320ce",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 17
    )
    port map (
      a => recerencia_net_x0,
      b => delay_q_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  bitbasher: entity work.bitbasher_b142b1358a
    port map (
      b(0) => logical1_y_net,
      c(0) => logical_y_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a => bitbasher_a_net
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
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      din(0) => relational1_op_net,
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
      din(0) => relational_op_net,
      en => "1",
      dout(0) => convert1_dout_net
    );

  ct0: entity work.constant_a803a2dbbb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => ct0_op_net
    );

  ct1: entity work.constant_f2a2d93eac
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => ct1_op_net
    );

  ct2: entity work.constant_a803a2dbbb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => ct2_op_net
    );

  ct4: entity work.constant_a803a2dbbb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => ct4_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d => recerencia_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  emaxpoz: entity work.constant_7044437b9b
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => emaxpoz_op_net
    );

  eminpoz: entity work.constant_017d9de1ab
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => eminpoz_op_net
    );

  erroreqzero: entity work.relational_5153393142
    port map (
      a => addsub_s_net,
      b => ct0_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => erroreqzero_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => convert_dout_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => convert1_dout_net,
      op(0) => inverter1_op_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      ip(0) => relational3_op_net,
      op(0) => inverter2_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => inverter1_op_net,
      d1(0) => convert_dout_net,
      y(0) => logical_y_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert1_dout_net,
      d1(0) => inverter_op_net,
      y(0) => logical1_y_net
    );

  mult: entity work.xlmult_onOff
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 17,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 17,
      c_a_type => 0,
      c_a_width => 17,
      c_b_type => 0,
      c_b_width => 17,
      c_baat => 17,
      c_output_width => 34,
      c_type => 0,
      core_name0 => "mult_11_2_b9a510f8f49a69d2",
      extra_registers => 1,
      multsign => 2,
      overflow => 2,
      p_arith => xlSigned,
      p_bin_pt => 0,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => addsub_s_net,
      b => addsub_s_net,
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      core_ce => ce_1_sg_x1,
      core_clk => clk_1_sg_x1,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mux: entity work.mux_65a0e0a5b3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => u0_op_net,
      d1 => umaxneg_op_net,
      d2 => umaxpoz_op_net,
      d3 => u0_op_net,
      sel => bitbasher_a_net,
      y => mux_y_net_x0
    );

  mux1: entity work.mux_a161f3a75c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => ct2_op_net,
      d1 => addsub_s_net,
      sel(0) => relational2_op_net,
      y => mux1_y_net
    );

  mux2: entity work.mux_a161f3a75c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addsub_s_net,
      d1 => mux1_y_net,
      sel(0) => register1_q_net,
      y => mux2_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      d(0) => erroreqzero_op_net,
      en(0) => erroreqzero_op_net,
      rst(0) => inverter2_op_net,
      q(0) => register1_q_net
    );

  relational: entity work.relational_5568c80e3e
    port map (
      a => mux2_y_net,
      b => eminpoz_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_5ef1f4e573
    port map (
      a => mux2_y_net,
      b => emaxpoz_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  relational2: entity work.relational_5568c80e3e
    port map (
      a => mult_p_net,
      b => ct1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_5153393142
    port map (
      a => addsub1_s_net,
      b => ct4_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  u0: entity work.constant_a803a2dbbb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => u0_op_net
    );

  umaxneg: entity work.constant_95270e073f
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => umaxneg_op_net
    );

  umaxpoz: entity work.constant_58b5743dd8
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => umaxpoz_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "onOff/PWM+REG2/PWM8"

entity pwm8_entity_808ac00709 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    frek: in std_logic_vector(15 downto 0); 
    pwm: out std_logic
  );
end pwm8_entity_808ac00709;

architecture structural of pwm8_entity_808ac00709 is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal constant10_op_net_x0: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal enapwm_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  convert3_dout_net_x0 <= duty;
  enapwm_net_x0 <= en;
  constant10_op_net_x0 <= frek;
  pwm <= logical_y_net_x0;

  counter: entity work.xlcounter_free_onOff
    generic map (
      core_name0 => "cntr_11_0_e7c6fab986d296a4",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      en(0) => enapwm_net_x0,
      rst(0) => relational1_op_net,
      op => counter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => enapwm_net_x0,
      y(0) => logical_y_net_x0
    );

  relational: entity work.relational_7a2906d528
    port map (
      a => convert3_dout_net_x0,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_7a7af7b80d
    port map (
      a => counter_op_net,
      b => constant10_op_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "onOff/PWM+REG2"

entity pwm_reg2_entity_081d2a8bce is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    frek: in std_logic_vector(15 downto 0); 
    pwm: out std_logic
  );
end pwm_reg2_entity_081d2a8bce;

architecture structural of pwm_reg2_entity_081d2a8bce is
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal constant10_op_net_x1: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x1: std_logic_vector(15 downto 0);
  signal enapwm_net_x1: std_logic;
  signal logical_y_net_x1: std_logic;

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  convert3_dout_net_x1 <= duty;
  enapwm_net_x1 <= en;
  constant10_op_net_x1 <= frek;
  pwm <= logical_y_net_x1;

  pwm8_808ac00709: entity work.pwm8_entity_808ac00709
    port map (
      ce_1 => ce_1_sg_x3,
      clk_1 => clk_1_sg_x3,
      duty => convert3_dout_net_x1,
      en => enapwm_net_x1,
      frek => constant10_op_net_x1,
      pwm => logical_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "onOff/SignToUSign"

entity signtousign_entity_1ca98ae371 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    valin: in std_logic_vector(15 downto 0); 
    val: out std_logic_vector(15 downto 0)
  );
end signtousign_entity_1ca98ae371;

architecture structural of signtousign_entity_1ca98ae371 is
  signal bitbasher6_dir_net_x0: std_logic;
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  bitbasher6_dir_net_x0 <= dir;
  convert7_dout_net_x0 <= valin;
  val <= mux_y_net_x0;

  inverter: entity work.inverter_1ca63a13a1
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
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

-- Generated from Simulink block "onOff/counter"

entity counter_entity_85906b2cda is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    impulse: in std_logic; 
    reset: in std_logic; 
    tsvalue: in std_logic_vector(23 downto 0); 
    speed: out std_logic_vector(15 downto 0); 
    tsimpulse: out std_logic_vector(15 downto 0); 
    value_counter: out std_logic_vector(15 downto 0)
  );
end counter_entity_85906b2cda;

architecture structural of counter_entity_85906b2cda is
  signal addsub1_s_net: std_logic_vector(16 downto 0);
  signal addsub2_s_net_x1: std_logic_vector(15 downto 0);
  signal addsub3_s_net: std_logic_vector(15 downto 0);
  signal addsub_s_net: std_logic_vector(16 downto 0);
  signal black_box_dir_net_x0: std_logic;
  signal black_box_imp_net_x0: std_logic;
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal constant1_op_net: std_logic_vector(15 downto 0);
  signal constant2_op_net: std_logic_vector(15 downto 0);
  signal constant3_op_net: std_logic_vector(15 downto 0);
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal convert1_dout_net_x0: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal counter1_op_net: std_logic_vector(23 downto 0);
  signal counter_op_net: std_logic_vector(23 downto 0);
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal mult_p_net: std_logic_vector(39 downto 0);
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic_vector(15 downto 0);
  signal register2_q_net_x0: std_logic_vector(15 downto 0);
  signal register3_q_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(15 downto 0);
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal tsvalue_net_x0: std_logic_vector(23 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  black_box_dir_net_x0 <= dir;
  black_box_imp_net_x0 <= impulse;
  convert1_dout_net_x1 <= reset;
  tsvalue_net_x0 <= tsvalue;
  speed <= register2_q_net_x0;
  tsimpulse <= register3_q_net_x0;
  value_counter <= addsub2_s_net_x1;

  addsub: entity work.xladdsub_onOff
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 17,
      core_name0 => "addsb_11_0_d2b0e63c2ff9bf9d",
      extra_registers => 0,
      full_s_arith => 1,
      full_s_width => 17,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlUnsigned,
      s_bin_pt => 0,
      s_width => 17
    )
    port map (
      a => register_q_net,
      b => constant_op_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  addsub1: entity work.xladdsub_onOff
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 17,
      core_name0 => "addsb_11_0_80bded47015320ce",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 17
    )
    port map (
      a => register_q_net,
      b => constant_op_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  addsub2: entity work.xladdsub_onOff
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 17,
      core_name0 => "addsb_11_0_80bded47015320ce",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => register_q_net,
      b => constant1_op_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub2_s_net_x1
    );

  addsub3: entity work.xladdsub_onOff
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 16,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 17,
      core_name0 => "addsb_11_0_80bded47015320ce",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 17,
      latency => 0,
      overflow => 1,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => register_q_net,
      b => register1_q_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub3_s_net
    );

  constant1: entity work.constant_31026a6611
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant2: entity work.constant_515f6b5526
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_6c8e1bed76
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
    );

  constant_x0: entity work.constant_190a6d2a1a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
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
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
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
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din(0) => convert1_dout_net_x1,
      en => "1",
      dout(0) => convert1_dout_net_x0
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
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din(0) => relational_op_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  counter: entity work.xlcounter_free_onOff
    generic map (
      core_name0 => "cntr_11_0_74252206ec4646ae",
      op_arith => xlUnsigned,
      op_width => 24
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      rst(0) => relational_op_net,
      op => counter_op_net
    );

  counter1: entity work.xlcounter_free_onOff
    generic map (
      core_name0 => "cntr_11_0_74252206ec4646ae",
      op_arith => xlUnsigned,
      op_width => 24
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      rst(0) => relational1_op_net,
      op => counter1_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => inverter_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      ip(0) => black_box_imp_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_938d99ac11
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => black_box_imp_net_x0,
      d1(0) => delay_q_net,
      y(0) => logical_y_net
    );

  mult: entity work.xlmult_onOff
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 24,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_a_type => 1,
      c_a_width => 24,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 24,
      c_output_width => 40,
      c_type => 0,
      core_name0 => "mult_11_2_b39611ba5425a680",
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 14,
      p_width => 40,
      quantization => 1
    )
    port map (
      a => tsvalue_net_x0,
      b => constant3_op_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      core_ce => ce_1_sg_x5,
      core_clk => clk_1_sg_x5,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mux: entity work.mux_20197168a0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addsub_s_net,
      d1 => addsub1_s_net,
      sel(0) => black_box_dir_net_x0,
      y => mux_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0111111111111111"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => register_q_net,
      en(0) => convert2_dout_net,
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0111111111111111"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => addsub3_s_net,
      en(0) => convert2_dout_net,
      rst => "0",
      q => register2_q_net_x0
    );

  register3: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => constant2_op_net,
      en(0) => convert2_dout_net,
      rst(0) => relational1_op_net,
      q => register3_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0111111111111111"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => mux_y_net,
      en(0) => convert_dout_net,
      rst(0) => convert1_dout_net_x0,
      q => register_q_net
    );

  relational: entity work.relational_2a22b4eabc
    port map (
      a => counter_op_net,
      b => tsvalue_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_adf9a370cd
    port map (
      a => counter1_op_net,
      b => mult_p_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "onOff"

entity onoff is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end onoff;

architecture structural of onoff is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "onOff,sysgen_core,{black_box_isim_used=1,clock_period=20.00000000,clocking=Clock_Enables,sample_periods=1.00000000000,testbench=0,total_blocks=132,xilinx_adder_subtracter_block=6,xilinx_arithmetic_relational_operator_block=9,xilinx_bitbasher_block=5,xilinx_black_box_block=1,xilinx_bus_multiplexer_block=5,xilinx_constant_block_block=15,xilinx_counter_block=3,xilinx_delay_block=2,xilinx_gateway_in_block=6,xilinx_gateway_out_block=6,xilinx_inverter_block=6,xilinx_logical_block_block=5,xilinx_multiplier_block=2,xilinx_register_block=6,xilinx_system_generator_block=1,xilinx_type_converter_block=14,xilinx_type_reinterpreter_block=1,}";

  signal anyapmod_a_net_x0: std_logic_vector(7 downto 0);
  signal bitbasher1_ar_net: std_logic;
  signal bitbasher6_dir_net_x0: std_logic;
  signal bitbasher6_val_net: std_logic_vector(15 downto 0);
  signal bitbasher_a_net: std_logic;
  signal bitbasher_b_net: std_logic;
  signal black_box_dir2_net: std_logic;
  signal black_box_dir3_net: std_logic;
  signal black_box_dir4_net: std_logic;
  signal black_box_dir_net_x0: std_logic;
  signal black_box_imp2_net: std_logic;
  signal black_box_imp3_net: std_logic;
  signal black_box_imp4_net: std_logic;
  signal black_box_imp_net_x0: std_logic;
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal constant10_op_net_x1: std_logic_vector(15 downto 0);
  signal constant1_op_net: std_logic;
  signal convert2_dout_net: std_logic_vector(16 downto 0);
  signal convert3_dout_net_x1: std_logic_vector(15 downto 0);
  signal convert4_dout_net: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert8_dout_net: std_logic_vector(16 downto 0);
  signal enapwm_net: std_logic;
  signal ennulreset_net: std_logic;
  signal inverter_op_net: std_logic;
  signal ja1_net: std_logic_vector(7 downto 0);
  signal jb1_net: std_logic_vector(7 downto 0);
  signal jc1_net: std_logic_vector(7 downto 0);
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux_y_net_x1: std_logic_vector(15 downto 0);
  signal nullimp_net: std_logic;
  signal position_net: std_logic_vector(15 downto 0);
  signal recerencia_net: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(16 downto 0);
  signal speed_net: std_logic_vector(15 downto 0);
  signal tsimp_net: std_logic_vector(15 downto 0);
  signal tsvalue_net: std_logic_vector(23 downto 0);
  signal u_net: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  enapwm_net <= enapwm;
  ennulreset_net <= ennulreset;
  jb1_net <= jb1;
  jc1_net <= jc1;
  recerencia_net <= recerencia;
  tsvalue_net <= tsvalue;
  ja1 <= ja1_net;
  nullimp <= nullimp_net;
  position <= position_net;
  speed <= speed_net;
  tsimp <= tsimp_net;
  u <= u_net;

  anyapmod: entity work.bitbasher_bb81282914
    port map (
      a1(0) => constant1_op_net,
      a2(0) => constant1_op_net,
      a3(0) => constant1_op_net,
      a4(0) => inverter_op_net,
      a5(0) => constant1_op_net,
      a6(0) => constant1_op_net,
      a7(0) => constant1_op_net,
      a8(0) => convert4_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a => anyapmod_a_net_x0
    );

  bitbasher: entity work.bitbasher_1b08270ac9
    port map (
      a_x0 => jc1_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a(0) => bitbasher_a_net,
      b(0) => bitbasher_b_net
    );

  bitbasher1: entity work.bitbasher_d33821db41
    port map (
      ar_x0 => jb1_net,
      ce => '0',
      clk => '0',
      clr => '0',
      ar(0) => bitbasher1_ar_net
    );

  bitbasher6: entity work.bitbasher_75b6572827
    port map (
      a => convert8_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      dir(0) => bitbasher6_dir_net_x0,
      val => bitbasher6_val_net
    );

  black_box: entity work.top_level
    port map (
      quada => bitbasher_a_net,
      quada2 => bitbasher_a_net,
      quada3 => bitbasher_a_net,
      quada4 => bitbasher_a_net,
      quadb => bitbasher_b_net,
      quadb2 => bitbasher_b_net,
      quadb3 => bitbasher_b_net,
      quadb4 => bitbasher_b_net,
      dir => black_box_dir_net_x0,
      dir2 => black_box_dir2_net,
      dir3 => black_box_dir3_net,
      dir4 => black_box_dir4_net,
      imp => black_box_imp_net_x0,
      imp2 => black_box_imp2_net,
      imp3 => black_box_imp3_net,
      imp4 => black_box_imp4_net
    );

  constant1: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant1_op_net
    );

  constant10: entity work.constant_32150454cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net_x1
    );

  convert1: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => logical_y_net,
      en => "1",
      dout(0) => nullimp_net
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 17,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 17,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => u_net,
      en => "1",
      dout => convert2_dout_net
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => mux_y_net_x1,
      en => "1",
      dout => convert3_dout_net_x1
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => bitbasher6_dir_net_x0,
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => logical_y_net_x1,
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => bitbasher1_ar_net,
      en => "1",
      dout(0) => convert6_dout_net
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => bitbasher6_val_net,
      en => "1",
      dout => convert7_dout_net_x0
    );

  convert8: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 17,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 17,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => register_q_net,
      en => "1",
      dout => convert8_dout_net
    );

  counter_85906b2cda: entity work.counter_entity_85906b2cda
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      dir => black_box_dir_net_x0,
      impulse => black_box_imp_net_x0,
      reset => nullimp_net,
      tsvalue => tsvalue_net,
      speed => speed_net,
      tsimpulse => tsimp_net,
      value_counter => position_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      ip(0) => convert5_dout_net,
      op(0) => inverter_op_net
    );

  ja1_5c1b3675b2: entity work.ja1_entity_5c1b3675b2
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      inport => anyapmod_a_net_x0,
      convert_x0 => ja1_net
    );

  logical: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => ennulreset_net,
      d1(0) => convert6_dout_net,
      y(0) => logical_y_net
    );

  onoff_5ff5682403: entity work.onoff_entity_5ff5682403
    port map (
      aktval => position_net,
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      refval => recerencia_net,
      u => u_net
    );

  pwm_reg2_081d2a8bce: entity work.pwm_reg2_entity_081d2a8bce
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      duty => convert3_dout_net_x1,
      en => enapwm_net,
      frek => constant10_op_net_x1,
      pwm => logical_y_net_x1
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => convert2_dout_net,
      en => "1",
      rst => "0",
      q => register_q_net
    );

  signtousign_1ca98ae371: entity work.signtousign_entity_1ca98ae371
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      dir => bitbasher6_dir_net_x0,
      valin => convert7_dout_net_x0,
      val => mux_y_net_x1
    );

end structural;
