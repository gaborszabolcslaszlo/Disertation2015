library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeroModul/PWM+REG2/PWM8"

entity pwm8_entity_83c17a2340 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    frek: in std_logic_vector(15 downto 0); 
    pwm: out std_logic
  );
end pwm8_entity_83c17a2340;

architecture structural of pwm8_entity_83c17a2340 is
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal constant10_op_net_x0: std_logic_vector(15 downto 0);
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal enapwm_net_x0: std_logic;
  signal logical_y_net_x0: std_logic;
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  mux_y_net_x0 <= duty;
  enapwm_net_x0 <= en;
  constant10_op_net_x0 <= frek;
  pwm <= logical_y_net_x0;

  counter: entity work.xlcounter_free_MeroModul
    generic map (
      core_name0 => "cntr_11_0_d7c176806556610b",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
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
      a => mux_y_net_x0,
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

-- Generated from Simulink block "MeroModul/PWM+REG2"

entity pwm_reg2_entity_7329ad0149 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    frek: in std_logic_vector(15 downto 0); 
    pwm: out std_logic
  );
end pwm_reg2_entity_7329ad0149;

architecture structural of pwm_reg2_entity_7329ad0149 is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal constant10_op_net_x1: std_logic_vector(15 downto 0);
  signal enapwm_net_x1: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux_y_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  mux_y_net_x1 <= duty;
  enapwm_net_x1 <= en;
  constant10_op_net_x1 <= frek;
  pwm <= logical_y_net_x1;

  pwm8_83c17a2340: entity work.pwm8_entity_83c17a2340
    port map (
      ce_1 => ce_1_sg_x1,
      clk_1 => clk_1_sg_x1,
      duty => mux_y_net_x1,
      en => enapwm_net_x1,
      frek => constant10_op_net_x1,
      pwm => logical_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeroModul/Pmod5"

entity pmod5_entity_43ae6a3a11 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    inport: in std_logic_vector(7 downto 0); 
    convert_x0: out std_logic_vector(7 downto 0)
  );
end pmod5_entity_43ae6a3a11;

architecture structural of pmod5_entity_43ae6a3a11 is
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal convert_dout_net_x0: std_logic_vector(7 downto 0);
  signal l2_a_net_x0: std_logic_vector(7 downto 0);
  signal reinterpret_output_port_net: std_logic_vector(7 downto 0);

begin
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
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
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
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

-- Generated from Simulink block "MeroModul/SignToUSign"

entity signtousign_entity_50b44cac57 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    valin: in std_logic_vector(15 downto 0); 
    val: out std_logic_vector(15 downto 0)
  );
end signtousign_entity_50b44cac57;

architecture structural of signtousign_entity_50b44cac57 is
  signal bitbasher6_dir_net_x0: std_logic;
  signal bitbasher6_val_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal inverter_op_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x2: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  bitbasher6_dir_net_x0 <= dir;
  bitbasher6_val_net_x0 <= valin;
  val <= mux_y_net_x2;

  inverter: entity work.inverter_1ca63a13a1
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
      clr => '0',
      ip => bitbasher6_val_net_x0,
      op => inverter_op_net
    );

  mux: entity work.mux_2c45f290ed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => bitbasher6_val_net_x0,
      d1 => inverter_op_net,
      sel(0) => bitbasher6_dir_net_x0,
      y => mux_y_net_x2
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeroModul/counter"

entity counter_entity_cdc26d97ec is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    impulse: in std_logic; 
    reset: in std_logic; 
    tsvalue: in std_logic_vector(23 downto 0); 
    speed: out std_logic_vector(15 downto 0); 
    value_counter: out std_logic_vector(15 downto 0)
  );
end counter_entity_cdc26d97ec;

architecture structural of counter_entity_cdc26d97ec is
  signal addsub1_s_net: std_logic_vector(16 downto 0);
  signal addsub2_s_net_x0: std_logic_vector(15 downto 0);
  signal addsub3_s_net: std_logic_vector(15 downto 0);
  signal addsub_s_net: std_logic_vector(16 downto 0);
  signal bitbasher1_ar_net_x0: std_logic;
  signal black_box_dir_net_x0: std_logic;
  signal black_box_imp_net_x0: std_logic;
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal constant1_op_net: std_logic_vector(15 downto 0);
  signal constant_op_net: std_logic_vector(15 downto 0);
  signal convert1_dout_net: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal counter_op_net: std_logic_vector(23 downto 0);
  signal delay_q_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic_vector(15 downto 0);
  signal register2_q_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(15 downto 0);
  signal relational_op_net: std_logic;
  signal tsvalue_net_x0: std_logic_vector(23 downto 0);

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  black_box_dir_net_x0 <= dir;
  black_box_imp_net_x0 <= impulse;
  bitbasher1_ar_net_x0 <= reset;
  tsvalue_net_x0 <= tsvalue;
  speed <= register2_q_net_x0;
  value_counter <= addsub2_s_net_x0;

  addsub: entity work.xladdsub_MeroModul
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  addsub1: entity work.xladdsub_MeroModul
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  addsub2: entity work.xladdsub_MeroModul
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      s => addsub2_s_net_x0
    );

  addsub3: entity work.xladdsub_MeroModul
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
      b => register1_q_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      s => addsub3_s_net
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      din(0) => bitbasher1_ar_net_x0,
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      din(0) => relational_op_net,
      en => "1",
      dout(0) => convert2_dout_net
    );

  counter: entity work.xlcounter_free_MeroModul
    generic map (
      core_name0 => "cntr_11_0_28e149bfe48923b9",
      op_arith => xlUnsigned,
      op_width => 24
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      rst(0) => relational_op_net,
      op => counter_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => inverter_op_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip(0) => black_box_imp_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => black_box_imp_net_x0,
      d1(0) => delay_q_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_d366f6886a
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => addsub3_s_net,
      en(0) => convert2_dout_net,
      rst => "0",
      q => register2_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0111111111111111"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => mux_y_net,
      en(0) => convert_dout_net,
      rst(0) => convert1_dout_net,
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

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "MeroModul"

entity meromodul is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
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
end meromodul;

architecture structural of meromodul is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "MeroModul,sysgen_core,{black_box_isim_used=1,clock_period=20.00000000,clocking=Clock_Enables,sample_periods=1.00000000000,testbench=0,total_blocks=78,xilinx_adder_subtracter_block=4,xilinx_arithmetic_relational_operator_block=3,xilinx_bitbasher_block=4,xilinx_black_box_block=1,xilinx_bus_multiplexer_block=2,xilinx_constant_block_block=3,xilinx_counter_block=2,xilinx_delay_block=1,xilinx_gateway_in_block=5,xilinx_gateway_out_block=4,xilinx_inverter_block=3,xilinx_logical_block_block=2,xilinx_register_block=3,xilinx_system_generator_block=1,xilinx_type_converter_block=5,xilinx_type_reinterpreter_block=1,}";

  signal bitbasher1_ar_net_x0: std_logic;
  signal bitbasher6_dir_net_x0: std_logic;
  signal bitbasher6_val_net_x0: std_logic_vector(15 downto 0);
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
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal constant10_op_net_x1: std_logic_vector(15 downto 0);
  signal convert4_dout_net: std_logic;
  signal enapwm_net: std_logic;
  signal inverter_op_net: std_logic;
  signal l2_a_net_x0: std_logic_vector(7 downto 0);
  signal logical_y_net_x1: std_logic;
  signal pmod1_net: std_logic_vector(7 downto 0);
  signal pmod2_net: std_logic_vector(7 downto 0);
  signal pmod3_net: std_logic_vector(7 downto 0);
  signal position_net: std_logic_vector(15 downto 0);
  signal speed_net: std_logic_vector(15 downto 0);
  signal step_net: std_logic_vector(16 downto 0);
  signal tsvalue_net: std_logic_vector(23 downto 0);
  signal uout_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  enapwm_net <= enapwm;
  pmod1_net <= pmod1;
  pmod3_net <= pmod3;
  step_net <= step;
  tsvalue_net <= tsvalue;
  pmod2 <= pmod2_net;
  position <= position_net;
  speed <= speed_net;
  uout <= uout_net;

  bitbasher: entity work.bitbasher_1b08270ac9
    port map (
      a_x0 => pmod1_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a(0) => bitbasher_a_net,
      b(0) => bitbasher_b_net
    );

  bitbasher1: entity work.bitbasher_d33821db41
    port map (
      ar_x0 => pmod3_net,
      ce => '0',
      clk => '0',
      clr => '0',
      ar(0) => bitbasher1_ar_net_x0
    );

  bitbasher6: entity work.bitbasher_75b6572827
    port map (
      a => step_net,
      ce => '0',
      clk => '0',
      clr => '0',
      dir(0) => bitbasher6_dir_net_x0,
      val => bitbasher6_val_net_x0
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

  constant10: entity work.constant_32150454cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant10_op_net_x1
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
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      din(0) => bitbasher6_dir_net_x0,
      en => "1",
      dout(0) => convert4_dout_net
    );

  counter_cdc26d97ec: entity work.counter_entity_cdc26d97ec
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      dir => black_box_dir_net_x0,
      impulse => black_box_imp_net_x0,
      reset => bitbasher1_ar_net_x0,
      tsvalue => tsvalue_net,
      speed => speed_net,
      value_counter => position_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      ip(0) => logical_y_net_x1,
      op(0) => inverter_op_net
    );

  l2: entity work.bitbasher_61c1ae3094
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

  pmod5_43ae6a3a11: entity work.pmod5_entity_43ae6a3a11
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      inport => l2_a_net_x0,
      convert_x0 => pmod2_net
    );

  pwm_reg2_7329ad0149: entity work.pwm_reg2_entity_7329ad0149
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      duty => uout_net,
      en => enapwm_net,
      frek => constant10_op_net_x1,
      pwm => logical_y_net_x1
    );

  signtousign_50b44cac57: entity work.signtousign_entity_50b44cac57
    port map (
      ce_1 => ce_1_sg_x5,
      clk_1 => clk_1_sg_x5,
      dir => bitbasher6_dir_net_x0,
      valin => bitbasher6_val_net_x0,
      val => uout_net
    );

end structural;
