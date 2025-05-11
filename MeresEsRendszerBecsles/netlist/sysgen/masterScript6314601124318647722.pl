
open(PIDFILE, '> pidfile.txt') || die 'Couldn\'t write process ID to file.';
print PIDFILE "$$\n";
close(PIDFILE);

eval {
  # Call script(s).
  my $instrs;
  my $results = [];
$ENV{'SYSGEN'} = 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen';
  use Sg;
  $instrs = {
    'HDLCodeGenStatus' => 0.0,
    'HDL_PATH' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles',
    'Impl_file' => 'ISE Defaults',
    'Impl_file_sgadvanced' => '',
    'Synth_file' => 'XST Defaults',
    'Synth_file_sgadvanced' => '',
    'TEMP' => 'C:/Users/laca/AppData/Local/Temp',
    'TMP' => 'C:/Users/laca/AppData/Local/Temp',
    'Temp' => 'C:/Users/laca/AppData/Local/Temp',
    'Tmp' => 'C:/Users/laca/AppData/Local/Temp',
    'base_system_period_hardware' => 20.0,
    'base_system_period_simulink' => 1.0,
    'block_icon_display' => 'Default',
    'block_type' => 'sysgen',
    'block_version' => '',
    'ce_clr' => 0.0,
    'clock_domain' => 'default',
    'clock_loc' => 'Fixed',
    'clock_wrapper' => 'Clock Enables',
    'clock_wrapper_sgadvanced' => '',
    'compilation' => 'Sparten3e500kpq208c4',
    'compilation_lut' => {
      'keys' => [
        'HDL Netlist',
        'Sparten3e500kpq208c4',
        '<New compilation target>',
      ],
      'values' => [
        'target1',
        'target2',
        'target3',
      ],
    },
    'compilation_target' => 'Sparten3e500kpq208c4',
    'core_generation' => 1.0,
    'core_generation_sgadvanced' => '',
    'core_is_deployed' => 0.0,
    'coregen_core_generation_tmpdir' => 'C:/Users/laca/AppData/Local/Temp/sysgentmp-laca/cg_wk/c077e6eb3b43642c5',
    'coregen_part_family' => 'spartan3e',
    'createTestbench' => 0,
    'create_interface_document' => 'off',
    'dbl_ovrd' => -1.0,
    'dbl_ovrd_sgadvanced' => '',
    'dcm_input_clock_period' => 10.0,
    'deprecated_control' => 'off',
    'deprecated_control_sgadvanced' => '',
    'design' => 'MeroModul',
    'design_full_path' => 'C:\\Users\\laca\\Desktop\\iRoobo2014Ver3\\Fpga\\SPARTAN3E\\Spartan3E6500SystemVer2\\MeresEsRendszerBecsles\\MeroModul.slx',
    'device' => 'xc3s500e-4pq208',
    'device_speed' => '-4',
    'directory' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist',
    'dsp_cache_root_path' => 'C:/Users/laca/AppData/Local/Temp/sysgentmp-laca',
    'eval_field' => '0',
    'fileDeliveryDefaults' => [
      [
        '(?i)\\.vhd$',
        { 'fileName' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen/perl_results.vhd', },
      ],
      [
        '(?i)\\.v$',
        { 'fileName' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen/perl_results.v', },
      ],
    ],
    'fxdptinstalled' => 1.0,
    'generateUsing71FrontEnd' => 1,
    'generating_island_subsystem_handle' => 2079.00048828125,
    'generating_subsystem_handle' => 2079.00048828125,
    'generation_directory' => './netlist',
    'getimportblock_fcn' => 'xlGetHwcosimBlockName',
    'has_advanced_control' => '0',
    'hdlDir' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl',
    'hdlKind' => 'vhdl',
    'hdl_path' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles',
    'impl_file' => 'ISE Defaults*',
    'incr_netlist' => 'off',
    'incr_netlist_sgadvanced' => '',
    'infoedit' => ' System Generator',
    'isdeployed' => 0,
    'ise_version' => '14.7i',
    'master_sysgen_token_handle' => 2080.0003662109375,
    'matlab' => 'C:/Program Files/MATLAB/R2013b',
    'matlab_fixedpoint' => 1.0,
    'mdlHandle' => 2079.00048828125,
    'mdlPath' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/MeroModul.mdl',
    'modelDiagnostics' => [
      {
        'count' => 78.0,
        'isMask' => 0.0,
        'type' => 'MeroModul Total blocks',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'Constant',
      },
      {
        'count' => 2.0,
        'isMask' => 0.0,
        'type' => 'DiscretePulseGenerator',
      },
      {
        'count' => 13.0,
        'isMask' => 0.0,
        'type' => 'Inport',
      },
      {
        'count' => 7.0,
        'isMask' => 0.0,
        'type' => 'Outport',
      },
      {
        'count' => 43.0,
        'isMask' => 0.0,
        'type' => 'S-Function',
      },
      {
        'count' => 8.0,
        'isMask' => 0.0,
        'type' => 'SubSystem',
      },
      {
        'count' => 3.0,
        'isMask' => 0.0,
        'type' => 'Terminator',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Non-Memory-Mapped Input Port',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Non-Memory-Mapped Output Port',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Adder/Subtracter Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Arithmetic Relational Operator Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx BitBasher Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Black Box Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Bus Multiplexer Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Constant Block Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Counter Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Delay Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway In Block',
      },
      {
        'count' => 4.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Gateway Out Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Inverter Block',
      },
      {
        'count' => 2.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Logical Block Block',
      },
      {
        'count' => 3.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Register Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx System Generator Block',
      },
      {
        'count' => 5.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Converter Block',
      },
      {
        'count' => 1.0,
        'isMask' => 1.0,
        'type' => 'Xilinx Type Reinterpreter Block',
      },
    ],
    'model_globals_initialized' => 1.0,
    'model_path' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/MeroModul.mdl',
    'myxilinx' => 'C:/Xilinx/14.7/ISE_DS/ISE',
    'ngc_files' => [ 'xlpersistentdff.ngc', ],
    'num_sim_cycles' => '10',
    'package' => 'pq208',
    'part' => 'xc3s500e',
    'partFamily' => 'spartan3e',
    'port_data_types_enabled' => 0.0,
    'postgeneration_fcn' => 'sparten3e500kpq208c4_postgeneration',
    'precompile_fcn' => 'xlJTAGPreCompile',
    'preserve_hierarchy' => 0.0,
    'proj_type' => 'Project Navigator',
    'proj_type_sgadvanced' => '',
    'run_coregen' => 'off',
    'run_coregen_sgadvanced' => '',
    'sample_time_colors_enabled' => 0.0,
    'sampletimecolors' => 0.0,
    'settings_fcn' => 'xlJTAGXFlowSettings',
    'sg_blockgui_xml' => '',
    'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
    'sg_list_contents' => '',
    'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');',
    'sg_version' => '',
    'sggui_pos' => '-1,-1,-1,-1',
    'simulation_island_subsystem_handle' => 2079.00048828125,
    'simulink_accelerator_running' => 0.0,
    'simulink_debugger_running' => 0.0,
    'simulink_period' => 1.0,
    'speed' => '-4',
    'synth_file' => 'XST Defaults*',
    'synthesisTool' => 'XST',
    'synthesis_language' => 'vhdl',
    'synthesis_tool' => 'XST',
    'synthesis_tool_sgadvanced' => '',
    'sysclk_period' => 20.0,
    'sysgen' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'sysgenRoot' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'sysgenTokenSettings' => {
      'Impl_file' => 'ISE Defaults',
      'Impl_file_sgadvanced' => '',
      'Synth_file' => 'XST Defaults',
      'Synth_file_sgadvanced' => '',
      'base_system_period_hardware' => 20.0,
      'base_system_period_simulink' => 1.0,
      'block_icon_display' => 'Default',
      'block_type' => 'sysgen',
      'block_version' => '',
      'ce_clr' => 0.0,
      'clock_loc' => 'Fixed',
      'clock_wrapper' => 'Clock Enables',
      'clock_wrapper_sgadvanced' => '',
      'compilation' => 'Sparten3e500kpq208c4',
      'compilation_lut' => {
        'keys' => [
          'HDL Netlist',
          'Sparten3e500kpq208c4',
          '<New compilation target>',
        ],
        'values' => [
          'target1',
          'target2',
          'target3',
        ],
      },
      'core_generation' => 1.0,
      'core_generation_sgadvanced' => '',
      'coregen_part_family' => 'spartan3e',
      'create_interface_document' => 'off',
      'dbl_ovrd' => -1.0,
      'dbl_ovrd_sgadvanced' => '',
      'dcm_input_clock_period' => 10.0,
      'deprecated_control' => 'off',
      'deprecated_control_sgadvanced' => '',
      'directory' => './netlist',
      'eval_field' => '0',
      'getimportblock_fcn' => 'xlGetHwcosimBlockName',
      'has_advanced_control' => '0',
      'impl_file' => 'ISE Defaults*',
      'incr_netlist' => 'off',
      'incr_netlist_sgadvanced' => '',
      'infoedit' => ' System Generator',
      'master_sysgen_token_handle' => 2080.0003662109375,
      'package' => 'pq208',
      'part' => 'xc3s500e',
      'postgeneration_fcn' => 'sparten3e500kpq208c4_postgeneration',
      'precompile_fcn' => 'xlJTAGPreCompile',
      'preserve_hierarchy' => 0.0,
      'proj_type' => 'Project Navigator',
      'proj_type_sgadvanced' => '',
      'run_coregen' => 'off',
      'run_coregen_sgadvanced' => '',
      'settings_fcn' => 'xlJTAGXFlowSettings',
      'sg_blockgui_xml' => '',
      'sg_icon_stat' => '50,50,-1,-1,token,white,0,07734,right,,[ ],[ ]',
      'sg_list_contents' => '',
      'sg_mask_display' => 'fprintf(\'\',\'COMMENT: begin icon graphics\');
patch([0 50 50 0 0 ],[0 0 50 50 0 ],[1 1 1 ]);
patch([1.6375 16.81 27.31 37.81 48.31 27.31 12.1375 1.6375 ],[36.655 36.655 47.155 36.655 47.155 47.155 47.155 36.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 27.31 16.81 1.6375 12.1375 ],[26.155 26.155 36.655 36.655 26.155 ],[0.698039 0.0313725 0.219608 ]);
patch([1.6375 16.81 27.31 12.1375 1.6375 ],[15.655 15.655 26.155 26.155 15.655 ],[0.933333 0.203922 0.141176 ]);
patch([12.1375 48.31 37.81 27.31 16.81 1.6375 12.1375 ],[5.155 5.155 15.655 5.155 15.655 15.655 5.155 ],[0.698039 0.0313725 0.219608 ]);
fprintf(\'\',\'COMMENT: end icon graphics\');
fprintf(\'\',\'COMMENT: begin icon text\');
fprintf(\'\',\'COMMENT: end icon text\');',
      'sggui_pos' => '-1,-1,-1,-1',
      'simulation_island_subsystem_handle' => 2079.00048828125,
      'simulink_period' => 1.0,
      'speed' => '-4',
      'synth_file' => 'XST Defaults*',
      'synthesis_language' => 'vhdl',
      'synthesis_tool' => 'XST',
      'synthesis_tool_sgadvanced' => '',
      'sysclk_period' => 20.0,
      'testbench' => 0,
      'testbench_sgadvanced' => '',
      'trim_vbits' => 1.0,
      'trim_vbits_sgadvanced' => '',
      'xilinx_device' => 'xc3s500e-4pq208',
      'xilinxfamily' => 'spartan3e',
    },
    'sysgen_Root' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen',
    'systemClockPeriod' => 20.0,
    'tempdir' => 'C:/Users/laca/AppData/Local/Temp',
    'testbench' => 0,
    'testbench_sgadvanced' => '',
    'tmpDir' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen',
    'trim_vbits' => 1.0,
    'trim_vbits_sgadvanced' => '',
    'use_strict_names' => 1,
    'user_tips_enabled' => 0.0,
    'usertemp' => 'C:/Users/laca/AppData/Local/Temp/sysgentmp-laca',
    'using71Netlister' => 1,
    'verilog_files' => [
      'conv_pkg.v',
      'synth_reg.v',
      'synth_reg_w_init.v',
      'convert_type.v',
    ],
    'version' => '',
    'vhdl_files' => [
      'conv_pkg.vhd',
      'synth_reg.vhd',
      'synth_reg_w_init.vhd',
    ],
    'vsimtime' => '495.000000 ns',
    'xilinx' => 'C:/Xilinx/14.7/ISE_DS/ISE',
    'xilinx_device' => 'xc3s500e-4pq208',
    'xilinx_family' => 'spartan3e',
    'xilinx_package' => 'pq208',
    'xilinx_part' => 'xc3s500e',
    'xilinxdevice' => 'xc3s500e-4pq208',
    'xilinxfamily' => 'spartan3e',
    'xilinxpart' => 'xc3s500e',
  };
  push(@$results, &Sg::setAttributes($instrs));
  use SgDeliverFile;
  $instrs = {
    'collaborationName' => 'conv_pkg.vhd',
    'sourceFile' => 'hdl/conv_pkg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg.vhd',
    'sourceFile' => 'hdl/synth_reg.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'synth_reg_w_init.vhd',
    'sourceFile' => 'hdl/synth_reg_w_init.vhd',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'collaborationName' => 'xlpersistentdff.ngc',
    'sourceFile' => 'hdl/xlpersistentdff.ngc',
    'templateKeyValues' => {},
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  use SgGenerateCores;
  $instrs = [
    'SELECT Binary_Counter spartan3e Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan3e',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 16',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_d7c176806556610b',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '9db2fbd91d0600784ce6afaea4403b7f',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_d7c176806556610b',
      'entityName' => 'xlcounter_free_MeroModul',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '298203483c3de52896eed04fd75246a4',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end',
      'crippled_entity' => 'is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'logical_80f90b97d0',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '9898cde75e83dcc758932a4ff313722e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_18_3_rel <= a_1_31 > b_1_34;
  op <= boolean_to_vector(result_18_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_7a2906d528',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '864714010089aaafe563a870810fd3ca',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_7a7af7b80d',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f0b7d1fe49aa3b3dba7ed9bcf211fa65',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '40a1a945129e58bf0eb6a88f152f50ce',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal input_port_1_40: unsigned((8 - 1) downto 0);
begin
  input_port_1_40 <= std_logic_vector_to_unsigned(input_port);
  output_port <= unsigned_to_std_logic_vector(input_port_1_40);
end',
      'crippled_entity' => 'is
  port (
    input_port : in std_logic_vector((8 - 1) downto 0);
    output_port : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'reinterpret_f21e7f2ddf',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '004f5f2510fb7ff4f4d90301f582182c',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: unsigned((16 - 1) downto 0);
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of unsigned((16 - 1) downto 0);
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => "0000000000000000");
  signal op_mem_22_20_front_din: unsigned((16 - 1) downto 0);
  signal op_mem_22_20_back: unsigned((16 - 1) downto 0);
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: unsigned((16 - 1) downto 0);
begin
  ip_1_26 <= std_logic_vector_to_unsigned(ip);
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_1ca63a13a1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '03b25ca63a0844df00de9411c6ae44e9',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic_vector((1 - 1) downto 0);
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_2c45f290ed',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = [
    'SELECT Adder_Subtracter spartan3e Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan3e',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Unsigned',
    'CSET A_Width = 17',
    'CSET Add_Mode = Add',
    'CSET B_Constant = false',
    'CSET B_Type = Unsigned',
    'CSET B_Value = 0',
    'CSET B_Width = 17',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = false',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 0',
    'CSET Out_Width = 17',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_ed61fefe391dafb3',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '6bc338b80b2f67e41603ee87fbe48fcc',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(17 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_ed61fefe391dafb3',
      'entityName' => 'xladdsub_MeroModul',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Adder_Subtracter spartan3e Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan3e',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 17',
    'CSET Add_Mode = Subtract',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 17',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = false',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 0',
    'CSET Out_Width = 17',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_09a98e96b9130e03',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '4ba4159f736e925b4bb0e5562719a72e',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(17 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_09a98e96b9130e03',
      'entityName' => 'xladdsub_MeroModul',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Adder_Subtracter spartan3e Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan3e',
    '# VHDL',
    'CSET AINIT_Value = 0',
    'CSET A_Type = Signed',
    'CSET A_Width = 17',
    'CSET Add_Mode = Subtract',
    'CSET B_Constant = false',
    'CSET B_Type = Signed',
    'CSET B_Value = 0',
    'CSET B_Width = 17',
    'CSET Borrow_Sense = Active_Low',
    'CSET Bypass = false',
    'CSET Bypass_CE_Priority = Bypass_Overrides_CE',
    'CSET Bypass_Sense = Active_Low',
    'CSET CE = false',
    'CSET C_In = false',
    'CSET C_Out = false',
    'CSET Implementation = Fabric',
    'CSET Latency = 0',
    'CSET Out_Width = 17',
    'CSET SCLR = false',
    'CSET SINIT = false',
    'CSET SINIT_Value = 0',
    'CSET SSET = false',
    'CSET Sync_CE_Priority = Sync_Overrides_CE',
    'CSET Sync_Ctrl_Priority = Reset_Overrides_Set',
    'CSET component_name = addsb_11_0_09a98e96b9130e03',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b0532f6ec19e6342663e2f14a99b66d9',
    'sourceFile' => 'hdl/xladdsub.vhd',
    'templateKeyValues' => {
      'core_component_def' => '    a: in std_logic_vector(17 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0)',
      'core_instance_text' => '         a => full_a,
         s => core_s,
         b => full_b',
      'core_name0' => 'addsb_11_0_09a98e96b9130e03',
      'entityName' => 'xladdsub_MeroModul',
      'entity_name.0' => 'xladdsub',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '22eac0818c4a2e4370c8a507b581ca97',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0000000000000001";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_190a6d2a1a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3c18efc37d6817a90c10d3d37c91996e',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "0111111111111111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_e48c5a6fd1',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '3cffcf159d6329be94f4509cfbce1cb7',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlconvert.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = [
    'SELECT Binary_Counter spartan3e Xilinx,_Inc. 11.0',
    '# 14.7_P.79',
    '# DEVICE spartan3e',
    '# VHDL',
    'CSET ainit_value = 0',
    'CSET ce = true',
    'CSET count_mode = UP',
    'CSET fb_latency = 0',
    'CSET final_count_value = 1',
    'CSET implementation = Fabric',
    'CSET increment_value = 1',
    'CSET latency = 1',
    'CSET load = false',
    'CSET output_width = 24',
    'CSET restrict_count = false',
    'CSET sclr = false',
    'CSET sinit = true',
    'CSET sinit_value = 0',
    'CSET sset = false',
    'CSET sync_ce_priority = Sync_Overrides_CE',
    'CSET sync_threshold_output = false',
    'CSET syncctrlpriority = Reset_Overrides_Set',
    'CSET component_name = cntr_11_0_28e149bfe48923b9',
    'GENERATE',
  ];
  push(@$results, &SgGenerateCores::saveXcoSequence($instrs));
  $instrs = {
    'entity_declaration_hash' => '87aa2c6337adeb8b1b52f59c6eda4fc5',
    'sourceFile' => 'hdl/xlcounter_free.vhd',
    'templateKeyValues' => {
      'core_component_def' => '      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)',
      'core_instance_text' => '        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net',
      'core_name0' => 'cntr_11_0_28e149bfe48923b9',
      'entityName' => 'xlcounter_free_MeroModul',
      'entity_name.0' => 'xlcounter_free',
      'needs_core' => 1,
      'vivado_flow' => 0,
    },
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '310a4a0533be9e8b7d5d989ef53978a3',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xldelay.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => 'b32a0080f8f47e0be7ec44c6ad81b20b',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ip_1_26: boolean;
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of boolean;
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => false);
  signal op_mem_22_20_front_din: boolean;
  signal op_mem_22_20_back: boolean;
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: boolean;
begin
  ip_1_26 <= ((ip) = "1");
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk\'event and (clk = \'1\')) then
      if ((ce = \'1\') and (op_mem_22_20_push_front_pop_back_en = \'1\')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= \'0\';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end',
      'crippled_entity' => 'is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'inverter_e5b38cca3b',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'd5ac411618cd7565d56df688686ac64a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((17 - 1) downto 0);
  signal d1_1_27: std_logic_vector((17 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((18 - 1) downto 0);
  signal cast_unregy_13_5_convert: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= cast(d0_1_24, 0, 18, 0, xlUnsigned);
      when others =>
        unregy_join_6_1 <= cast(d1_1_27, 0, 18, 0, xlSigned);
    end case;
  end process proc_switch_6_1;
  cast_unregy_13_5_convert <= cast(unregy_join_6_1, 0, 16, 0, xlSigned);
  y <= cast_unregy_13_5_convert;
end',
      'crippled_entity' => 'is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((17 - 1) downto 0);
    d1 : in std_logic_vector((17 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'mux_d366f6886a',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '492425baa281656d2254dbaedbfa5ca8',
    'sourceFile' => 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen/hdl/xlregister.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '0b36a99234287b0042b799b0c12ff760',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_31: unsigned((24 - 1) downto 0);
  signal b_1_34: unsigned((24 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((24 - 1) downto 0);
    b : in std_logic_vector((24 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'relational_2a22b4eabc',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'f4ad3106b5d5c5e118b93ca5ae089b2a',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_x0_1_28: unsigned((8 - 1) downto 0);
  signal slice_5_38: unsigned((1 - 1) downto 0);
  signal concat_5_29: unsigned((1 - 1) downto 0);
  signal fulla_5_1_concat: unsigned((1 - 1) downto 0);
  signal slice_6_38: unsigned((1 - 1) downto 0);
  signal concat_6_29: unsigned((1 - 1) downto 0);
  signal fullb_6_1_concat: unsigned((1 - 1) downto 0);
begin
  a_x0_1_28 <= std_logic_vector_to_unsigned(a_x0);
  slice_5_38 <= u2u_slice(a_x0_1_28, 0, 0);
  concat_5_29 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_38));
  fulla_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_5_29));
  slice_6_38 <= u2u_slice(a_x0_1_28, 1, 1);
  concat_6_29 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_38));
  fullb_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_6_29));
  a <= unsigned_to_std_logic_vector(fulla_5_1_concat);
  b <= unsigned_to_std_logic_vector(fullb_6_1_concat);
end',
      'crippled_entity' => 'is
  port (
    a_x0 : in std_logic_vector((8 - 1) downto 0);
    a : out std_logic_vector((1 - 1) downto 0);
    b : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'bitbasher_1b08270ac9',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'ee17535c0db85579baf9ac65249a5850',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a_1_32: signed((17 - 1) downto 0);
  signal slice_5_40: unsigned((1 - 1) downto 0);
  signal concat_5_31: unsigned((1 - 1) downto 0);
  signal fulldir_5_1_concat: unsigned((1 - 1) downto 0);
  signal slice_6_30: unsigned((16 - 1) downto 0);
  signal fullval_6_1_concat: unsigned((16 - 1) downto 0);
begin
  a_1_32 <= std_logic_vector_to_signed(a);
  slice_5_40 <= s2u_slice(a_1_32, 16, 16);
  concat_5_31 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_40));
  fulldir_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_5_31));
  slice_6_30 <= s2u_slice(a_1_32, 15, 0);
  fullval_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_30));
  dir <= unsigned_to_std_logic_vector(fulldir_5_1_concat);
  val <= unsigned_to_std_logic_vector(fullval_6_1_concat);
end',
      'crippled_entity' => 'is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    dir : out std_logic_vector((1 - 1) downto 0);
    val : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'bitbasher_75b6572827',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '4216350095bf0084f9dee332bd89852c',
    'sourceFile' => 'C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/top_level.vhd',
  };
  push(@$results, &SgDeliverFile::saveCollaborationInfo($instrs));
  $instrs = {
    'entity_declaration_hash' => '29ad378505cd002919a29d289d12b1fa',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
begin
  op <= "1111111111111111";
end',
      'crippled_entity' => 'is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'constant_32150454cb',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => 'faceb76225f1622a9b454baa4f7b9c27',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal a1_1_26: boolean;
  signal a2_1_30: boolean;
  signal a3_1_34: boolean;
  signal a4_1_38: boolean;
  signal a5_1_42: boolean;
  signal a6_1_46: boolean;
  signal a7_1_50: boolean;
  signal a8_1_54: boolean;
  signal fulla_5_1_concat: unsigned((8 - 1) downto 0);
begin
  a1_1_26 <= ((a1) = "1");
  a2_1_30 <= ((a2) = "1");
  a3_1_34 <= ((a3) = "1");
  a4_1_38 <= ((a4) = "1");
  a5_1_42 <= ((a5) = "1");
  a6_1_46 <= ((a6) = "1");
  a7_1_50 <= ((a7) = "1");
  a8_1_54 <= ((a8) = "1");
  fulla_5_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(a1_1_26) & boolean_to_vector(a2_1_30) & boolean_to_vector(a3_1_34) & boolean_to_vector(a4_1_38) & boolean_to_vector(a5_1_42) & boolean_to_vector(a6_1_46) & boolean_to_vector(a7_1_50) & boolean_to_vector(a8_1_54));
  a <= unsigned_to_std_logic_vector(fulla_5_1_concat);
end',
      'crippled_entity' => 'is
  port (
    a1 : in std_logic_vector((1 - 1) downto 0);
    a2 : in std_logic_vector((1 - 1) downto 0);
    a3 : in std_logic_vector((1 - 1) downto 0);
    a4 : in std_logic_vector((1 - 1) downto 0);
    a5 : in std_logic_vector((1 - 1) downto 0);
    a6 : in std_logic_vector((1 - 1) downto 0);
    a7 : in std_logic_vector((1 - 1) downto 0);
    a8 : in std_logic_vector((1 - 1) downto 0);
    a : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'bitbasher_61c1ae3094',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  $instrs = {
    'entity_declaration_hash' => '6131dfaee13897e2039c43ff6bfb9655',
    'sourceFile' => 'hdl/xlmcode.vhd',
    'templateKeyValues' => {
      'crippled_architecture' => 'is
  signal ar_x0_1_27: unsigned((8 - 1) downto 0);
  signal slice_5_39: unsigned((1 - 1) downto 0);
  signal concat_5_30: unsigned((1 - 1) downto 0);
  signal fullar_5_1_concat: unsigned((1 - 1) downto 0);
begin
  ar_x0_1_27 <= std_logic_vector_to_unsigned(ar_x0);
  slice_5_39 <= u2u_slice(ar_x0_1_27, 0, 0);
  concat_5_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_39));
  fullar_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_5_30));
  ar <= unsigned_to_std_logic_vector(fullar_5_1_concat);
end',
      'crippled_entity' => 'is
  port (
    ar_x0 : in std_logic_vector((8 - 1) downto 0);
    ar : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end',
      'entity_name' => 'bitbasher_d33821db41',
    },
  };
  push(@$results, &SgDeliverFile::deliverFile($instrs));
  local *wrapup = $Sg::{'wrapup'};
  push(@$results, &Sg::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgDeliverFile::{'wrapup'};
  push(@$results, &SgDeliverFile::wrapup())   if (defined(&wrapup));
  local *wrapup = $SgGenerateCores::{'wrapup'};
  push(@$results, &SgGenerateCores::wrapup())   if (defined(&wrapup));
  use Carp qw(croak);
  $ENV{'SYSGEN'} = 'C:/Xilinx/14.7/ISE_DS/ISE/sysgen';
  open(RESULTS, '> C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen/script_results8275672001499421442') || 
    croak 'couldn\'t open C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen/script_results8275672001499421442';
  binmode(RESULTS);
  print RESULTS &Sg::toString($results) . "\n";
  close(RESULTS) || 
    croak 'trouble writing C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen/script_results8275672001499421442';
};

if ($@) {
  open(RESULTS, '> C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen/script_results8275672001499421442') || 
    croak 'couldn\'t open C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen/script_results8275672001499421442';
  binmode(RESULTS);
  print RESULTS $@ . "\n";
  close(RESULTS) || 
    croak 'trouble writing C:/Users/laca/Desktop/iRoobo2014Ver3/Fpga/SPARTAN3E/Spartan3E6500SystemVer2/MeresEsRendszerBecsles/netlist/sysgen/script_results8275672001499421442';
  exit(1);
}

exit(0);
