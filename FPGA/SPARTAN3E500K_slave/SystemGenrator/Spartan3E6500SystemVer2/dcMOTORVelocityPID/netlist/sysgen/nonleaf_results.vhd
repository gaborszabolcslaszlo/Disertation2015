library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MotorSpeed/PIDrek"

entity pidrek_entity_2de86a3eda is
  port (
    a: in std_logic_vector(15 downto 0); 
    b: in std_logic_vector(15 downto 0); 
    c: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    error: in std_logic_vector(16 downto 0); 
    tsimpulse: in std_logic; 
    upid: out std_logic_vector(16 downto 0)
  );
end pidrek_entity_2de86a3eda;

architecture structural of pidrek_entity_2de86a3eda is
  signal aa_net_x0: std_logic_vector(15 downto 0);
  signal addsub8_s_net: std_logic_vector(15 downto 0);
  signal addsub_s_net_x0: std_logic_vector(16 downto 0);
  signal addsub_s_net_x1: std_logic_vector(16 downto 0);
  signal bb_net_x0: std_logic_vector(15 downto 0);
  signal cc_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant1_op_net: std_logic_vector(15 downto 0);
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal counter_op_net: std_logic_vector(1 downto 0);
  signal delay1_q_net: std_logic;
  signal delay2_q_net: std_logic_vector(1 downto 0);
  signal delay_q_net: std_logic;
  signal ek_2ek_1: std_logic_vector(15 downto 0);
  signal ek_ek_1: std_logic_vector(15 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mult_p_net: std_logic_vector(16 downto 0);
  signal mux1_y_net: std_logic_vector(15 downto 0);
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic_vector(16 downto 0);
  signal register2_q_net: std_logic_vector(16 downto 0);
  signal register3_q_net: std_logic;
  signal register6_q_net_x0: std_logic_vector(16 downto 0);
  signal register7_q_net: std_logic;
  signal register_q_net: std_logic_vector(16 downto 0);

begin
  aa_net_x0 <= a;
  bb_net_x0 <= b;
  cc_net_x0 <= c;
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  addsub_s_net_x1 <= error;
  logical_y_net_x0 <= tsimpulse;
  upid <= register6_q_net_x0;

  addsub: entity work.xladdsub_MotorSpeed
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 17,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 17,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 18,
      core_name0 => "addsb_11_0_40c59820e74e5c61",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 18,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 17
    )
    port map (
      a => register6_q_net_x0,
      b => mult_p_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addsub_s_net_x0
    );

  addsub5: entity work.xladdsub_MotorSpeed
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 17,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 17,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 18,
      core_name0 => "addsb_11_0_69d6875ac191df7d",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 18,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => register_q_net,
      b => register1_q_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => ek_ek_1
    );

  addsub7: entity work.xladdsub_MotorSpeed
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 17,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 18,
      core_name0 => "addsb_11_0_69d6875ac191df7d",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 18,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => ek_ek_1,
      b => register1_q_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => ek_2ek_1
    );

  addsub8: entity work.xladdsub_MotorSpeed
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 17,
      c_has_c_out => 0,
      c_latency => 0,
      c_output_width => 18,
      core_name0 => "addsb_11_0_40c59820e74e5c61",
      extra_registers => 0,
      full_s_arith => 2,
      full_s_width => 18,
      latency => 0,
      overflow => 2,
      quantization => 1,
      s_arith => xlSigned,
      s_bin_pt => 0,
      s_width => 16
    )
    port map (
      a => ek_2ek_1,
      b => register2_q_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en => "1",
      s => addsub8_s_net
    );

  constant1: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant_x0: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant_op_net
    );

  counter: entity work.xlcounter_limit_MotorSpeed
    generic map (
      cnt_15_0 => 3,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_cee71699703bac4e",
      count_limited => 0,
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      en(0) => register7_q_net,
      rst => "0",
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => logical_y_net_x0,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  delay1: entity work.xldelay
    generic map (
      latency => 2,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => register7_q_net,
      en => '1',
      rst => '1',
      q(0) => delay1_q_net
    );

  delay2: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 2
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => counter_op_net,
      en => '1',
      rst => '1',
      q => delay2_q_net
    );

  mult: entity work.xlmult_MotorSpeed
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 16,
      c_a_type => 1,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_782d0d00b37904bd",
      extra_registers => 1,
      multsign => 2,
      overflow => 2,
      p_arith => xlSigned,
      p_bin_pt => 0,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => mux_y_net,
      b => mux1_y_net,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      core_ce => ce_1_sg_x0,
      core_clk => clk_1_sg_x0,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mux: entity work.mux_32f647f217
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => aa_net_x0,
      d1 => bb_net_x0,
      d2 => cc_net_x0,
      d3 => constant1_op_net,
      sel => delay2_q_net,
      y => mux_y_net
    );

  mux1: entity work.mux_ba4efe1019
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => ek_ek_1,
      d1 => addsub8_s_net,
      d2 => register_q_net,
      d3 => constant_op_net,
      sel => delay2_q_net,
      y => mux1_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => register_q_net,
      en(0) => register3_q_net,
      rst => "0",
      q => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => register1_q_net,
      en(0) => register3_q_net,
      rst => "0",
      q => register2_q_net
    );

  register3: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => logical_y_net_x0,
      en => "1",
      rst(0) => register3_q_net,
      q(0) => register3_q_net
    );

  register6: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => addsub_s_net_x0,
      en(0) => delay1_q_net,
      rst => "0",
      q => register6_q_net_x0
    );

  register7: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d(0) => logical_y_net_x0,
      en(0) => logical_y_net_x0,
      rst(0) => delay_q_net,
      q(0) => register7_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      d => addsub_s_net_x1,
      en(0) => register3_q_net,
      rst => "0",
      q => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MotorSpeed/PWM+REG2/PWM8"

entity pwm8_entity_b382bc4709 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    frek: in std_logic_vector(15 downto 0); 
    pwm: out std_logic
  );
end pwm8_entity_b382bc4709;

architecture structural of pwm8_entity_b382bc4709 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal constant10_op_net_x0: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal enapwm_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  convert3_dout_net_x0 <= duty;
  enapwm_net_x0 <= en;
  constant10_op_net_x0 <= frek;
  pwm <= logical_y_net_x0;

  counter: entity work.xlcounter_free_MotorSpeed
    generic map (
      core_name0 => "cntr_11_0_d7c176806556610b",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
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

-- Generated from Simulink block "MotorSpeed/PWM+REG2"

entity pwm_reg2_entity_e6c05b507a is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    frek: in std_logic_vector(15 downto 0); 
    pwm: out std_logic
  );
end pwm_reg2_entity_e6c05b507a;

architecture structural of pwm_reg2_entity_e6c05b507a is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal constant10_op_net_x1: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x1: std_logic_vector(15 downto 0);
  signal enapwm_net_x1: std_logic;
  signal logical_y_net_x1: std_logic;

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  convert3_dout_net_x1 <= duty;
  enapwm_net_x1 <= en;
  constant10_op_net_x1 <= frek;
  pwm <= logical_y_net_x1;

  pwm8_b382bc4709: entity work.pwm8_entity_b382bc4709
    port map (
      ce_1 => ce_1_sg_x2,
      clk_1 => clk_1_sg_x2,
      duty => convert3_dout_net_x1,
      en => enapwm_net_x1,
      frek => constant10_op_net_x1,
      pwm => logical_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MotorSpeed/Pmod2"

entity pmod2_entity_b34edec396 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    inport: in std_logic_vector(7 downto 0); 
    convert_x0: out std_logic_vector(7 downto 0)
  );
end pmod2_entity_b34edec396;

architecture structural of pmod2_entity_b34edec396 is
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal convert_dout_net_x0: std_logic_vector(7 downto 0);
  signal l2_a_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  l2_a_net_x0 <= inport;
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
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
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
      input_port => l2_a_net_x0,
      output_port => reinterpret_output_port_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MotorSpeed/SampleTime Generator"

entity sampletime_generator_entity_8479939182 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    stop: in std_logic; 
    ts: in std_logic_vector(31 downto 0); 
    tick: out std_logic
  );
end sampletime_generator_entity_8479939182;

architecture structural of sampletime_generator_entity_8479939182 is
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal constant4_op_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(31 downto 0);
  signal inverter_op_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal relational_op_net: std_logic;
  signal ts_net_x0: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  constant4_op_net_x0 <= stop;
  ts_net_x0 <= ts;
  tick <= logical_y_net_x1;

  counter: entity work.xlcounter_free_MotorSpeed
    generic map (
      core_name0 => "cntr_11_0_5baa608aaa6fc4cf",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      rst(0) => relational_op_net,
      op => counter_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip(0) => constant4_op_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net_x1
    );

  relational: entity work.relational_3ffd1d0a40
    port map (
      a => counter_op_net,
      b => ts_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MotorSpeed/SignToUSign"

entity signtousign_entity_ce8f7fe695 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    valin: in std_logic_vector(15 downto 0); 
    val: out std_logic_vector(15 downto 0)
  );
end signtousign_entity_ce8f7fe695;

architecture structural of signtousign_entity_ce8f7fe695 is
  signal bitbasher6_dir_net_x0: std_logic;
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  bitbasher6_dir_net_x0 <= dir;
  convert7_dout_net_x0 <= valin;
  val <= mux_y_net_x0;

  inverter: entity work.inverter_1ca63a13a1
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
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

-- Generated from Simulink block "MotorSpeed/counter"

entity counter_entity_2f53ec633c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    impulse: in std_logic; 
    reset: in std_logic; 
    value_counter: out std_logic_vector(15 downto 0)
  );
end counter_entity_2f53ec633c;

architecture structural of counter_entity_2f53ec633c is
  signal addsub1_s_net: std_logic_vector(16 downto 0);
  signal addsub2_s_net: std_logic_vector(15 downto 0);
  signal addsub_s_net: std_logic_vector(16 downto 0);
  signal black_box_dir_net_x0: std_logic;
  signal black_box_imp_net_x0: std_logic;
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal constant1_op_net: std_logic_vector(15 downto 0);
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal convert_dout_net: std_logic;
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x2: std_logic;
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal register1_q_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x6 <= ce_1;
  clk_1_sg_x6 <= clk_1;
  black_box_dir_net_x0 <= dir;
  black_box_imp_net_x0 <= impulse;
  logical_y_net_x2 <= reset;
  value_counter <= register1_q_net_x0;

  addsub: entity work.xladdsub_MotorSpeed
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
      core_name0 => "addsb_11_0_ed61fefe391dafb3",
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  addsub1: entity work.xladdsub_MotorSpeed
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
      core_name0 => "addsb_11_0_09a98e96b9130e03",
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  addsub2: entity work.xladdsub_MotorSpeed
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
      core_name0 => "addsb_11_0_09a98e96b9130e03",
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      en => "1",
      s => addsub2_s_net
    );

  constant1: entity work.constant_e48c5a6fd1
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => logical_y_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d(0) => inverter_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e2b989a05e
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => addsub2_s_net,
      en(0) => logical_y_net_x2,
      rst => "0",
      q => register1_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0111111111111111"
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => mux_y_net,
      en(0) => convert_dout_net,
      rst(0) => logical_y_net_x2,
      q => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MotorSpeed"

entity motorspeed is
  port (
    aa: in std_logic_vector(15 downto 0); 
    bb: in std_logic_vector(15 downto 0); 
    cc: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    enapwm: in std_logic; 
    gateway_in: in std_logic_vector(16 downto 0); 
    recerencia: in std_logic_vector(15 downto 0); 
    ts: in std_logic_vector(31 downto 0); 
    counterval: out std_logic_vector(15 downto 0); 
    e: out std_logic_vector(16 downto 0); 
    pmod2: out std_logic_vector(7 downto 0); 
    u: out std_logic_vector(16 downto 0)
  );
end motorspeed;

architecture structural of motorspeed is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "MotorSpeed,sysgen_core,{black_box_isim_used=1,clock_period=20.00000000,clocking=Clock_Enables,sample_periods=1.00000000000,testbench=0,total_blocks=108,xilinx_adder_subtracter_block=8,xilinx_arithmetic_relational_operator_block=3,xilinx_bitbasher_block=2,xilinx_black_box_block=1,xilinx_bus_multiplexer_block=4,xilinx_constant_block_block=6,xilinx_counter_block=3,xilinx_delay_block=4,xilinx_gateway_in_block=7,xilinx_gateway_out_block=4,xilinx_inverter_block=4,xilinx_logical_block_block=3,xilinx_multiplier_block=1,xilinx_register_block=9,xilinx_system_generator_block=1,xilinx_type_converter_block=10,xilinx_type_reinterpreter_block=1,}";

  signal aa_net: std_logic_vector(15 downto 0);
  signal bb_net: std_logic_vector(15 downto 0);
  signal bitbasher6_dir_net_x0: std_logic;
  signal bitbasher6_val_net: std_logic_vector(15 downto 0);
  signal black_box_dir2_net: std_logic;
  signal black_box_dir3_net: std_logic;
  signal black_box_dir4_net: std_logic;
  signal black_box_dir_net_x0: std_logic;
  signal black_box_imp2_net: std_logic;
  signal black_box_imp3_net: std_logic;
  signal black_box_imp4_net: std_logic;
  signal black_box_imp_net_x0: std_logic;
  signal cc_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal constant10_op_net_x1: std_logic_vector(15 downto 0);
  signal constant4_op_net_x0: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert2_dout_net: std_logic_vector(16 downto 0);
  signal convert3_dout_net_x1: std_logic_vector(15 downto 0);
  signal convert4_dout_net: std_logic;
  signal convert5_dout_net: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert8_dout_net: std_logic_vector(16 downto 0);
  signal convert_dout_net: std_logic;
  signal counterval_net: std_logic_vector(15 downto 0);
  signal e_net: std_logic_vector(16 downto 0);
  signal enapwm_net: std_logic;
  signal gateway_in_net: std_logic_vector(16 downto 0);
  signal inverter_op_net: std_logic;
  signal l2_a_net_x0: std_logic_vector(7 downto 0);
  signal logical_y_net_x1: std_logic;
  signal logical_y_net_x2: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal pmod2_net: std_logic_vector(7 downto 0);
  signal recerencia_net: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(16 downto 0);
  signal ts_net: std_logic_vector(31 downto 0);
  signal u_net: std_logic_vector(16 downto 0);

begin
  aa_net <= aa;
  bb_net <= bb;
  cc_net <= cc;
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  enapwm_net <= enapwm;
  gateway_in_net <= gateway_in;
  recerencia_net <= recerencia;
  ts_net <= ts;
  counterval <= counterval_net;
  e <= e_net;
  pmod2 <= pmod2_net;
  u <= u_net;

  addsub: entity work.xladdsub_MotorSpeed
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
      core_name0 => "addsb_11_0_09a98e96b9130e03",
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
      a => recerencia_net,
      b => counterval_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      en => "1",
      s => e_net
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
      quada => convert_dout_net,
      quada2 => convert_dout_net,
      quada3 => convert_dout_net,
      quada4 => convert_dout_net,
      quadb => convert1_dout_net,
      quadb2 => convert_dout_net,
      quadb3 => convert_dout_net,
      quadb4 => convert_dout_net,
      dir => black_box_dir_net_x0,
      dir2 => black_box_dir2_net,
      dir3 => black_box_dir3_net,
      dir4 => black_box_dir4_net,
      imp => black_box_imp_net_x0,
      imp2 => black_box_imp2_net,
      imp3 => black_box_imp3_net,
      imp4 => black_box_imp4_net
    );

  constant10: entity work.constant_32150454cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net_x1
    );

  constant4: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant4_op_net_x0
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => constant4_op_net_x0,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => constant4_op_net_x0,
      en => "1",
      dout(0) => convert1_dout_net
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => gateway_in_net,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => mux_y_net_x0,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din(0) => logical_y_net_x1,
      en => "1",
      dout(0) => convert5_dout_net
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      din => register_q_net,
      en => "1",
      dout => convert8_dout_net
    );

  counter_2f53ec633c: entity work.counter_entity_2f53ec633c
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      dir => black_box_dir_net_x0,
      impulse => black_box_imp_net_x0,
      reset => logical_y_net_x2,
      value_counter => counterval_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip(0) => convert5_dout_net,
      op(0) => inverter_op_net
    );

  l2: entity work.bitbasher_bb81282914
    port map (
      a1(0) => inverter_op_net,
      a2(0) => inverter_op_net,
      a3(0) => inverter_op_net,
      a4(0) => inverter_op_net,
      a5(0) => convert4_dout_net,
      a6(0) => convert4_dout_net,
      a7(0) => convert4_dout_net,
      a8(0) => convert4_dout_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a => l2_a_net_x0
    );

  pidrek_2de86a3eda: entity work.pidrek_entity_2de86a3eda
    port map (
      a => aa_net,
      b => bb_net,
      c => cc_net,
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      error => e_net,
      tsimpulse => logical_y_net_x2,
      upid => u_net
    );

  pmod2_b34edec396: entity work.pmod2_entity_b34edec396
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      inport => l2_a_net_x0,
      convert_x0 => pmod2_net
    );

  pwm_reg2_e6c05b507a: entity work.pwm_reg2_entity_e6c05b507a
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
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
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => convert2_dout_net,
      en => "1",
      rst => "0",
      q => register_q_net
    );

  sampletime_generator_8479939182: entity work.sampletime_generator_entity_8479939182
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      stop => constant4_op_net_x0,
      ts => ts_net,
      tick => logical_y_net_x2
    );

  signtousign_ce8f7fe695: entity work.signtousign_entity_ce8f7fe695
    port map (
      ce_1 => ce_1_sg_x7,
      clk_1 => clk_1_sg_x7,
      dir => bitbasher6_dir_net_x0,
      valin => convert7_dout_net_x0,
      val => mux_y_net_x0
    );

end structural;
