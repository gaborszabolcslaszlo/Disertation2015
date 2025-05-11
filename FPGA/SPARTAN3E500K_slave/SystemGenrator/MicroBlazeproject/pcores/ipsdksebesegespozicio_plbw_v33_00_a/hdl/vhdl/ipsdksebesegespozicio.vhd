--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_09a98e96b9130e03.vhd when simulating
-- the core, addsb_11_0_09a98e96b9130e03. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_09a98e96b9130e03 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END addsb_11_0_09a98e96b9130e03;

ARCHITECTURE addsb_11_0_09a98e96b9130e03_a OF addsb_11_0_09a98e96b9130e03 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_09a98e96b9130e03
  PORT (
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_09a98e96b9130e03 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 17,
      c_add_mode => 1,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000000000",
      c_b_width => 17,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 17,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_09a98e96b9130e03
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_09a98e96b9130e03_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_178ba6eaed72af2d.vhd when simulating
-- the core, addsb_11_0_178ba6eaed72af2d. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_178ba6eaed72af2d IS
  PORT (
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END addsb_11_0_178ba6eaed72af2d;

ARCHITECTURE addsb_11_0_178ba6eaed72af2d_a OF addsb_11_0_178ba6eaed72af2d IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_178ba6eaed72af2d
  PORT (
    a : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(16 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_178ba6eaed72af2d USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 17,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "00000000000000000",
      c_b_width => 17,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 17,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_178ba6eaed72af2d
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_178ba6eaed72af2d_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file addsb_11_0_40c59820e74e5c61.vhd when simulating
-- the core, addsb_11_0_40c59820e74e5c61. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY addsb_11_0_40c59820e74e5c61 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END addsb_11_0_40c59820e74e5c61;

ARCHITECTURE addsb_11_0_40c59820e74e5c61_a OF addsb_11_0_40c59820e74e5c61 IS
-- synthesis translate_off
COMPONENT wrapped_addsb_11_0_40c59820e74e5c61
  PORT (
    a : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    s : OUT STD_LOGIC_VECTOR(17 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_addsb_11_0_40c59820e74e5c61 USE ENTITY XilinxCoreLib.c_addsub_v11_0(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 18,
      c_add_mode => 0,
      c_ainit_val => "0",
      c_b_constant => 0,
      c_b_type => 0,
      c_b_value => "000000000000000000",
      c_b_width => 18,
      c_borrow_low => 1,
      c_bypass_low => 0,
      c_ce_overrides_bypass => 1,
      c_ce_overrides_sclr => 0,
      c_has_bypass => 0,
      c_has_c_in => 0,
      c_has_c_out => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_sinit => 0,
      c_has_sset => 0,
      c_implementation => 0,
      c_latency => 0,
      c_out_width => 18,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_addsb_11_0_40c59820e74e5c61
  PORT MAP (
    a => a,
    b => b,
    s => s
  );
-- synthesis translate_on

END addsb_11_0_40c59820e74e5c61_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_5baa608aaa6fc4cf.vhd when simulating
-- the core, cntr_11_0_5baa608aaa6fc4cf. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_5baa608aaa6fc4cf IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END cntr_11_0_5baa608aaa6fc4cf;

ARCHITECTURE cntr_11_0_5baa608aaa6fc4cf_a OF cntr_11_0_5baa608aaa6fc4cf IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_5baa608aaa6fc4cf
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_5baa608aaa6fc4cf USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 32,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_5baa608aaa6fc4cf
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_5baa608aaa6fc4cf_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_cee71699703bac4e.vhd when simulating
-- the core, cntr_11_0_cee71699703bac4e. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_cee71699703bac4e IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END cntr_11_0_cee71699703bac4e;

ARCHITECTURE cntr_11_0_cee71699703bac4e_a OF cntr_11_0_cee71699703bac4e IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_cee71699703bac4e
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_cee71699703bac4e USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 2,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_cee71699703bac4e
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_cee71699703bac4e_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file cntr_11_0_d7c176806556610b.vhd when simulating
-- the core, cntr_11_0_d7c176806556610b. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY cntr_11_0_d7c176806556610b IS
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END cntr_11_0_d7c176806556610b;

ARCHITECTURE cntr_11_0_d7c176806556610b_a OF cntr_11_0_d7c176806556610b IS
-- synthesis translate_off
COMPONENT wrapped_cntr_11_0_d7c176806556610b
  PORT (
    clk : IN STD_LOGIC;
    ce : IN STD_LOGIC;
    sinit : IN STD_LOGIC;
    q : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_cntr_11_0_d7c176806556610b USE ENTITY XilinxCoreLib.c_counter_binary_v11_0(behavioral)
    GENERIC MAP (
      c_ainit_val => "0",
      c_ce_overrides_sync => 0,
      c_count_by => "1",
      c_count_mode => 0,
      c_count_to => "1",
      c_fb_latency => 0,
      c_has_ce => 1,
      c_has_load => 0,
      c_has_sclr => 0,
      c_has_sinit => 1,
      c_has_sset => 0,
      c_has_thresh0 => 0,
      c_implementation => 0,
      c_latency => 1,
      c_load_low => 0,
      c_restrict_count => 0,
      c_sclr_overrides_sset => 1,
      c_sinit_val => "0",
      c_thresh0_value => "1",
      c_verbosity => 0,
      c_width => 16,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_cntr_11_0_d7c176806556610b
  PORT MAP (
    clk => clk,
    ce => ce,
    sinit => sinit,
    q => q
  );
-- synthesis translate_on

END cntr_11_0_d7c176806556610b_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_2b546dfd19043fff.vhd when simulating
-- the core, mult_11_2_2b546dfd19043fff. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_2b546dfd19043fff IS
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END mult_11_2_2b546dfd19043fff;

ARCHITECTURE mult_11_2_2b546dfd19043fff_a OF mult_11_2_2b546dfd19043fff IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_2b546dfd19043fff
  PORT (
    a : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_2b546dfd19043fff USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 32,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 32,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_zero_detect => 0,
      c_latency => 0,
      c_model_type => 0,
      c_mult_type => 0,
      c_optimize_goal => 1,
      c_out_high => 63,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_2b546dfd19043fff
  PORT MAP (
    a => a,
    b => b,
    p => p
  );
-- synthesis translate_on

END mult_11_2_2b546dfd19043fff_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_357304dcca1625c6.vhd when simulating
-- the core, mult_11_2_357304dcca1625c6. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_357304dcca1625c6 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_357304dcca1625c6;

ARCHITECTURE mult_11_2_357304dcca1625c6_a OF mult_11_2_357304dcca1625c6 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_357304dcca1625c6
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_357304dcca1625c6 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 1,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 0,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_357304dcca1625c6
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_357304dcca1625c6_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_6f06a19cb1633eca.vhd when simulating
-- the core, mult_11_2_6f06a19cb1633eca. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_6f06a19cb1633eca IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_6f06a19cb1633eca;

ARCHITECTURE mult_11_2_6f06a19cb1633eca_a OF mult_11_2_6f06a19cb1633eca IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_6f06a19cb1633eca
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_6f06a19cb1633eca USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 16,
      c_b_type => 1,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 1,
      c_model_type => 0,
      c_mult_type => 0,
      c_optimize_goal => 1,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_6f06a19cb1633eca
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_6f06a19cb1633eca_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_8d94dfdd489cb4d4.vhd when simulating
-- the core, mult_11_2_8d94dfdd489cb4d4. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_8d94dfdd489cb4d4 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_8d94dfdd489cb4d4;

ARCHITECTURE mult_11_2_8d94dfdd489cb4d4_a OF mult_11_2_8d94dfdd489cb4d4 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_8d94dfdd489cb4d4
  PORT (
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_8d94dfdd489cb4d4 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 16,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_zero_detect => 0,
      c_latency => 0,
      c_model_type => 0,
      c_mult_type => 0,
      c_optimize_goal => 1,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_8d94dfdd489cb4d4
  PORT MAP (
    a => a,
    b => b,
    p => p
  );
-- synthesis translate_on

END mult_11_2_8d94dfdd489cb4d4_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_99ead271b49e8ec3.vhd when simulating
-- the core, mult_11_2_99ead271b49e8ec3. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_99ead271b49e8ec3 IS
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END mult_11_2_99ead271b49e8ec3;

ARCHITECTURE mult_11_2_99ead271b49e8ec3_a OF mult_11_2_99ead271b49e8ec3 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_99ead271b49e8ec3
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    sclr : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_99ead271b49e8ec3 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_value => "10000001",
      c_b_width => 16,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 1,
      c_has_ce => 1,
      c_has_sclr => 1,
      c_has_zero_detect => 0,
      c_latency => 2,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 0,
      c_out_high => 31,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_99ead271b49e8ec3
  PORT MAP (
    clk => clk,
    a => a,
    b => b,
    ce => ce,
    sclr => sclr,
    p => p
  );
-- synthesis translate_on

END mult_11_2_99ead271b49e8ec3_a;
--------------------------------------------------------------------------------
--    This file is owned and controlled by Xilinx and must be used solely     --
--    for design, simulation, implementation and creation of design files     --
--    limited to Xilinx devices or technologies. Use with non-Xilinx          --
--    devices or technologies is expressly prohibited and immediately         --
--    terminates your license.                                                --
--                                                                            --
--    XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" SOLELY    --
--    FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY    --
--    PROVIDING THIS DESIGN, CODE, OR INFORMATION AS ONE POSSIBLE             --
--    IMPLEMENTATION OF THIS FEATURE, APPLICATION OR STANDARD, XILINX IS      --
--    MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION IS FREE FROM ANY      --
--    CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE FOR OBTAINING ANY       --
--    RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY       --
--    DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE   --
--    IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR          --
--    REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF         --
--    INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A   --
--    PARTICULAR PURPOSE.                                                     --
--                                                                            --
--    Xilinx products are not intended for use in life support appliances,    --
--    devices, or systems.  Use in such applications are expressly            --
--    prohibited.                                                             --
--                                                                            --
--    (c) Copyright 1995-2015 Xilinx, Inc.                                    --
--    All rights reserved.                                                    --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- You must compile the wrapper file mult_11_2_f059f4dd57a63694.vhd when simulating
-- the core, mult_11_2_f059f4dd57a63694. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
LIBRARY XilinxCoreLib;
-- synthesis translate_on
ENTITY mult_11_2_f059f4dd57a63694 IS
  PORT (
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END mult_11_2_f059f4dd57a63694;

ARCHITECTURE mult_11_2_f059f4dd57a63694_a OF mult_11_2_f059f4dd57a63694 IS
-- synthesis translate_off
COMPONENT wrapped_mult_11_2_f059f4dd57a63694
  PORT (
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    p : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
  );
END COMPONENT;

-- Configuration specification
  FOR ALL : wrapped_mult_11_2_f059f4dd57a63694 USE ENTITY XilinxCoreLib.mult_gen_v11_2(behavioral)
    GENERIC MAP (
      c_a_type => 1,
      c_a_width => 16,
      c_b_type => 1,
      c_b_value => "10000001",
      c_b_width => 32,
      c_ccm_imp => 0,
      c_ce_overrides_sclr => 0,
      c_has_ce => 0,
      c_has_sclr => 0,
      c_has_zero_detect => 0,
      c_latency => 0,
      c_model_type => 0,
      c_mult_type => 1,
      c_optimize_goal => 0,
      c_out_high => 47,
      c_out_low => 0,
      c_round_output => 0,
      c_round_pt => 0,
      c_verbosity => 0,
      c_xdevicefamily => "spartan3e"
    );
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_mult_11_2_f059f4dd57a63694
  PORT MAP (
    a => a,
    b => b,
    p => p
  );
-- synthesis translate_on

END mult_11_2_f059f4dd57a63694_a;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
package conv_pkg is
    constant simulating : boolean := false
      -- synopsys translate_off
        or true
      -- synopsys translate_on
    ;
    constant xlUnsigned : integer := 1;
    constant xlSigned : integer := 2;
    constant xlFloat : integer := 3;
    constant xlWrap : integer := 1;
    constant xlSaturate : integer := 2;
    constant xlTruncate : integer := 1;
    constant xlRound : integer := 2;
    constant xlRoundBanker : integer := 3;
    constant xlAddMode : integer := 1;
    constant xlSubMode : integer := 2;
    attribute black_box : boolean;
    attribute syn_black_box : boolean;
    attribute fpga_dont_touch: string;
    attribute box_type :  string;
    attribute keep : string;
    attribute syn_keep : boolean;
    function std_logic_vector_to_unsigned(inp : std_logic_vector) return unsigned;
    function unsigned_to_std_logic_vector(inp : unsigned) return std_logic_vector;
    function std_logic_vector_to_signed(inp : std_logic_vector) return signed;
    function signed_to_std_logic_vector(inp : signed) return std_logic_vector;
    function unsigned_to_signed(inp : unsigned) return signed;
    function signed_to_unsigned(inp : signed) return unsigned;
    function pos(inp : std_logic_vector; arith : INTEGER) return boolean;
    function all_same(inp: std_logic_vector) return boolean;
    function all_zeros(inp: std_logic_vector) return boolean;
    function is_point_five(inp: std_logic_vector) return boolean;
    function all_ones(inp: std_logic_vector) return boolean;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector;
    function cast (inp : std_logic_vector; old_bin_pt,
                   new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
        return std_logic_vector;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
        return unsigned;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
        return unsigned;
    function s2s_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function u2s_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return signed;
    function s2u_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2u_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return unsigned;
    function u2v_cast (inp : unsigned; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function s2v_cast (inp : signed; old_bin_pt,
                   new_width, new_bin_pt : INTEGER)
        return std_logic_vector;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                    new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt,
                                new_arith : INTEGER) return std_logic_vector;
    function max_signed(width : INTEGER) return std_logic_vector;
    function min_signed(width : INTEGER) return std_logic_vector;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER) return std_logic_vector;
    function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                        old_arith, new_width, new_bin_pt, new_arith : INTEGER)
                        return std_logic_vector;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                          new_width: INTEGER)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return std_logic_vector;
    function pad_LSB(inp : std_logic_vector; new_width, arith : integer)
        return std_logic_vector;
    function max(L, R: INTEGER) return INTEGER;
    function min(L, R: INTEGER) return INTEGER;
    function "="(left,right: STRING) return boolean;
    function boolean_to_signed (inp : boolean; width: integer)
        return signed;
    function boolean_to_unsigned (inp : boolean; width: integer)
        return unsigned;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector;
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector;
    function hex_string_to_std_logic_vector (inp : string; width : integer)
        return std_logic_vector;
    function makeZeroBinStr (width : integer) return STRING;
    function and_reduce(inp: std_logic_vector) return std_logic;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean;
    function is_binary_string_undefined (inp : string)
        return boolean;
    function is_XorU(inp : std_logic_vector)
        return boolean;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector;
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector;
    constant display_precision : integer := 20;
    function real_to_string (inp : real) return string;
    function valid_bin_string(inp : string) return boolean;
    function std_logic_vector_to_bin_string(inp : std_logic_vector) return string;
    function std_logic_to_bin_string(inp : std_logic) return string;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string;
    type stdlogic_to_char_t is array(std_logic) of character;
    constant to_char : stdlogic_to_char_t := (
        'U' => 'U',
        'X' => 'X',
        '0' => '0',
        '1' => '1',
        'Z' => 'Z',
        'W' => 'W',
        'L' => 'L',
        'H' => 'H',
        '-' => '-');
    -- synopsys translate_on
end conv_pkg;
package body conv_pkg is
    function std_logic_vector_to_unsigned(inp : std_logic_vector)
        return unsigned
    is
    begin
        return unsigned (inp);
    end;
    function unsigned_to_std_logic_vector(inp : unsigned)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function std_logic_vector_to_signed(inp : std_logic_vector)
        return signed
    is
    begin
        return  signed (inp);
    end;
    function signed_to_std_logic_vector(inp : signed)
        return std_logic_vector
    is
    begin
        return std_logic_vector(inp);
    end;
    function unsigned_to_signed (inp : unsigned)
        return signed
    is
    begin
        return signed(std_logic_vector(inp));
    end;
    function signed_to_unsigned (inp : signed)
        return unsigned
    is
    begin
        return unsigned(std_logic_vector(inp));
    end;
    function pos(inp : std_logic_vector; arith : INTEGER)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            return true;
        else
            if vec(width-1) = '0' then
                return true;
            else
                return false;
            end if;
        end if;
        return true;
    end;
    function max_signed(width : INTEGER)
        return std_logic_vector
    is
        variable ones : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        ones := (others => '1');
        result(width-1) := '0';
        result(width-2 downto 0) := ones;
        return result;
    end;
    function min_signed(width : INTEGER)
        return std_logic_vector
    is
        variable zeros : std_logic_vector(width-2 downto 0);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        zeros := (others => '0');
        result(width-1) := '1';
        result(width-2 downto 0) := zeros;
        return result;
    end;
    function and_reduce(inp: std_logic_vector) return std_logic
    is
        variable result: std_logic;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := vec(0);
        if width > 1 then
            for i in 1 to width-1 loop
                result := result and vec(i);
            end loop;
        end if;
        return result;
    end;
    function all_same(inp: std_logic_vector) return boolean
    is
        variable result: boolean;
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := true;
        if width > 0 then
            for i in 1 to width-1 loop
                if vec(i) /= vec(0) then
                    result := false;
                end if;
            end loop;
        end if;
        return result;
    end;
    function all_zeros(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable zero : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        zero := (others => '0');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(zero)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function is_point_five(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (width > 1) then
           if ((vec(width-1) = '1') and (all_zeros(vec(width-2 downto 0)) = true)) then
               result := true;
           else
               result := false;
           end if;
        else
           if (vec(width-1) = '1') then
               result := true;
           else
               result := false;
           end if;
        end if;
        return result;
    end;
    function all_ones(inp: std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable one : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        one := (others => '1');
        vec := inp;
        -- synopsys translate_off
        if (is_XorU(vec)) then
            return false;
        end if;
         -- synopsys translate_on
        if (std_logic_vector_to_unsigned(vec) = std_logic_vector_to_unsigned(one)) then
            result := true;
        else
            result := false;
        end if;
        return result;
    end;
    function full_precision_num_width(quantization, overflow, old_width,
                                      old_bin_pt, old_arith,
                                      new_width, new_bin_pt, new_arith : INTEGER)
        return integer
    is
        variable result : integer;
    begin
        result := old_width + 2;
        return result;
    end;
    function quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                 old_arith, new_width, new_bin_pt, new_arith
                                 : INTEGER)
        return integer
    is
        variable right_of_dp, left_of_dp, result : integer;
    begin
        right_of_dp := max(new_bin_pt, old_bin_pt);
        left_of_dp := max((new_width - new_bin_pt), (old_width - old_bin_pt));
        result := (old_width + 2) + (new_bin_pt - old_bin_pt);
        return result;
    end;
    function convert_type (inp : std_logic_vector; old_width, old_bin_pt,
                           old_arith, new_width, new_bin_pt, new_arith,
                           quantization, overflow : INTEGER)
        return std_logic_vector
    is
        constant fp_width : integer :=
            full_precision_num_width(quantization, overflow, old_width,
                                     old_bin_pt, old_arith, new_width,
                                     new_bin_pt, new_arith);
        constant fp_bin_pt : integer := old_bin_pt;
        constant fp_arith : integer := old_arith;
        variable full_precision_result : std_logic_vector(fp_width-1 downto 0);
        constant q_width : integer :=
            quantized_num_width(quantization, overflow, old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith);
        constant q_bin_pt : integer := new_bin_pt;
        constant q_arith : integer := old_arith;
        variable quantized_result : std_logic_vector(q_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result := (others => '0');
        full_precision_result := cast(inp, old_bin_pt, fp_width, fp_bin_pt,
                                      fp_arith);
        if (quantization = xlRound) then
            quantized_result := round_towards_inf(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        elsif (quantization = xlRoundBanker) then
            quantized_result := round_towards_even(full_precision_result,
                                                  fp_width, fp_bin_pt,
                                                  fp_arith, q_width, q_bin_pt,
                                                  q_arith);
        else
            quantized_result := trunc(full_precision_result, fp_width, fp_bin_pt,
                                      fp_arith, q_width, q_bin_pt, q_arith);
        end if;
        if (overflow = xlSaturate) then
            result := saturation_arith(quantized_result, q_width, q_bin_pt,
                                       q_arith, new_width, new_bin_pt, new_arith);
        else
             result := wrap_arith(quantized_result, q_width, q_bin_pt, q_arith,
                                  new_width, new_bin_pt, new_arith);
        end if;
        return result;
    end;
    function cast (inp : std_logic_vector; old_bin_pt, new_width,
                   new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        constant left_of_dp : integer := (new_width - new_bin_pt)
                                         - (old_width - old_bin_pt);
        constant right_of_dp : integer := (new_bin_pt - old_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable j   : integer;
    begin
        vec := inp;
        for i in new_width-1 downto 0 loop
            j := i - right_of_dp;
            if ( j > old_width-1) then
                if (new_arith = xlUnsigned) then
                    result(i) := '0';
                else
                    result(i) := vec(old_width-1);
                end if;
            elsif ( j >= 0) then
                result(i) := vec(j);
            else
                result(i) := '0';
            end if;
        end loop;
        return result;
    end;
    function shift_division_result(quotient, fraction: std_logic_vector;
                                   fraction_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant q_width : integer := quotient'length;
        constant f_width : integer := fraction'length;
        constant vec_MSB : integer := q_width+f_width-1;
        constant result_MSB : integer := q_width+fraction_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := ( quotient & fraction );
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function shift_op (inp: std_logic_vector;
                       result_width, shift_value, shift_dir: INTEGER)
        return std_logic_vector
    is
        constant inp_width : integer := inp'length;
        constant vec_MSB : integer := inp_width-1;
        constant result_MSB : integer := result_width-1;
        constant result_LSB : integer := vec_MSB-result_MSB;
        variable vec : std_logic_vector(vec_MSB downto 0);
        variable result : std_logic_vector(result_MSB downto 0);
    begin
        vec := inp;
        if shift_dir = 1 then
            for i in vec_MSB downto 0 loop
                if (i < shift_value) then
                     vec(i) := '0';
                else
                    vec(i) := vec(i-shift_value);
                end if;
            end loop;
        else
            for i in 0 to vec_MSB loop
                if (i > vec_MSB-shift_value) then
                    vec(i) := vec(vec_MSB);
                else
                    vec(i) := vec(i+shift_value);
                end if;
            end loop;
        end if;
        result := vec(vec_MSB downto result_LSB);
        return result;
    end;
    function vec_slice (inp : std_logic_vector; upper, lower : INTEGER)
      return std_logic_vector
    is
    begin
        return inp(upper downto lower);
    end;
    function s2u_slice (inp : signed; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function u2u_slice (inp : unsigned; upper, lower : INTEGER)
      return unsigned
    is
    begin
        return unsigned(vec_slice(std_logic_vector(inp), upper, lower));
    end;
    function s2s_cast (inp : signed; old_bin_pt, new_width, new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function s2u_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned));
    end;
    function u2s_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return signed
    is
    begin
        return signed(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2u_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return unsigned
    is
    begin
        return unsigned(cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned));
    end;
    function u2v_cast (inp : unsigned; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlUnsigned);
    end;
    function s2v_cast (inp : signed; old_bin_pt, new_width,
                   new_bin_pt : INTEGER)
        return std_logic_vector
    is
    begin
        return cast(std_logic_vector(inp), old_bin_pt, new_width, new_bin_pt, xlSigned);
    end;
    function boolean_to_signed (inp : boolean; width : integer)
        return signed
    is
        variable result : signed(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_unsigned (inp : boolean; width : integer)
        return unsigned
    is
        variable result : unsigned(width - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function boolean_to_vector (inp : boolean)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result := (others => '0');
        if inp then
          result(0) := '1';
        else
          result(0) := '0';
        end if;
        return result;
    end;
    function std_logic_to_vector (inp : std_logic)
        return std_logic_vector
    is
        variable result : std_logic_vector(1 - 1 downto 0);
    begin
        result(0) := inp;
        return result;
    end;
    function trunc (inp : std_logic_vector; old_width, old_bin_pt, old_arith,
                                new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                result := zero_ext(vec(old_width-1 downto right_of_dp), new_width);
            else
                result := sign_ext(vec(old_width-1 downto right_of_dp), new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                result := zero_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            else
                result := sign_ext(pad_LSB(vec, old_width +
                                           abs(right_of_dp)), new_width);
            end if;
        end if;
        return result;
    end;
    function round_towards_inf (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (new_arith = xlSigned) then
            if (vec(old_width-1) = '0') then
                one_or_zero(0) := '1';
            end if;
            if (right_of_dp >= 2) and (right_of_dp <= old_width) then
                if (all_zeros(vec(right_of_dp-2 downto 0)) = false) then
                    one_or_zero(0) := '1';
                end if;
            end if;
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                if vec(right_of_dp-1) = '0' then
                    one_or_zero(0) := '0';
                end if;
            else
                one_or_zero(0) := '0';
            end if;
        else
            if (right_of_dp >= 1) and (right_of_dp <= old_width) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function round_towards_even (inp : std_logic_vector; old_width, old_bin_pt,
                                old_arith, new_width, new_bin_pt, new_arith
                                : INTEGER)
        return std_logic_vector
    is
        constant right_of_dp : integer := (old_bin_pt - new_bin_pt);
        constant expected_new_width : integer :=  old_width - right_of_dp  + 1;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable one_or_zero : std_logic_vector(new_width-1 downto 0);
        variable truncated_val : std_logic_vector(new_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if right_of_dp >= 0 then
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            else
                truncated_val := sign_ext(vec(old_width-1 downto right_of_dp),
                                          new_width);
            end if;
        else
            if new_arith = xlUnsigned then
                truncated_val := zero_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            else
                truncated_val := sign_ext(pad_LSB(vec, old_width +
                                                  abs(right_of_dp)), new_width);
            end if;
        end if;
        one_or_zero := (others => '0');
        if (right_of_dp >= 1) and (right_of_dp <= old_width) then
            if (is_point_five(vec(right_of_dp-1 downto 0)) = false) then
                one_or_zero(0) :=  vec(right_of_dp-1);
            else
                one_or_zero(0) :=  vec(right_of_dp);
            end if;
        end if;
        if new_arith = xlSigned then
            result := signed_to_std_logic_vector(std_logic_vector_to_signed(truncated_val) +
                                                 std_logic_vector_to_signed(one_or_zero));
        else
            result := unsigned_to_std_logic_vector(std_logic_vector_to_unsigned(truncated_val) +
                                                  std_logic_vector_to_unsigned(one_or_zero));
        end if;
        return result;
    end;
    function saturation_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                              old_arith, new_width, new_bin_pt, new_arith
                              : INTEGER)
        return std_logic_vector
    is
        constant left_of_dp : integer := (old_width - old_bin_pt) -
                                         (new_width - new_bin_pt);
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable overflow : boolean;
    begin
        vec := inp;
        overflow := true;
        result := (others => '0');
        if (new_width >= old_width) then
            overflow := false;
        end if;
        if ((old_arith = xlSigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if (old_arith = xlSigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    if (vec(new_width-1) = '0') then
                        overflow := false;
                    end if;
                end if;
            end if;
        end if;
        if (old_arith = xlUnsigned and new_arith = xlUnsigned) then
            if (old_width > new_width) then
                if all_zeros(vec(old_width-1 downto new_width)) then
                    overflow := false;
                end if;
            else
                if (old_width = new_width) then
                    overflow := false;
                end if;
            end if;
        end if;
        if ((old_arith = xlUnsigned and new_arith = xlSigned) and (old_width > new_width)) then
            if all_same(vec(old_width-1 downto new_width-1)) then
                overflow := false;
            end if;
        end if;
        if overflow then
            if new_arith = xlSigned then
                if vec(old_width-1) = '0' then
                    result := max_signed(new_width);
                else
                    result := min_signed(new_width);
                end if;
            else
                if ((old_arith = xlSigned) and vec(old_width-1) = '1') then
                    result := (others => '0');
                else
                    result := (others => '1');
                end if;
            end if;
        else
            if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
                if (vec(old_width-1) = '1') then
                    vec := (others => '0');
                end if;
            end if;
            if new_width <= old_width then
                result := vec(new_width-1 downto 0);
            else
                if new_arith = xlUnsigned then
                    result := zero_ext(vec, new_width);
                else
                    result := sign_ext(vec, new_width);
                end if;
            end if;
        end if;
        return result;
    end;
   function wrap_arith(inp:  std_logic_vector;  old_width, old_bin_pt,
                       old_arith, new_width, new_bin_pt, new_arith : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
        variable result_arith : integer;
    begin
        if (old_arith = xlSigned) and (new_arith = xlUnsigned) then
            result_arith := xlSigned;
        end if;
        result := cast(inp, old_bin_pt, new_width, new_bin_pt, result_arith);
        return result;
    end;
    function fractional_bits(a_bin_pt, b_bin_pt: INTEGER) return INTEGER is
    begin
        return max(a_bin_pt, b_bin_pt);
    end;
    function integer_bits(a_width, a_bin_pt, b_width, b_bin_pt: INTEGER)
        return INTEGER is
    begin
        return  max(a_width - a_bin_pt, b_width - b_bin_pt);
    end;
    function pad_LSB(inp : std_logic_vector; new_width: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
        constant pad_pos : integer := new_width - orig_width - 1;
    begin
        vec := inp;
        pos := new_width-1;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pad_pos >= 0 then
                for i in pad_pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function sign_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := vec(old_width-1);
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic_vector; new_width : INTEGER)
        return std_logic_vector
    is
        constant old_width : integer := inp'length;
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if new_width >= old_width then
            result(old_width-1 downto 0) := vec;
            if new_width-1 >= old_width then
                for i in new_width-1 downto old_width loop
                    result(i) := '0';
                end loop;
            end if;
        else
            result(new_width-1 downto 0) := vec(new_width-1 downto 0);
        end if;
        return result;
    end;
    function zero_ext(inp : std_logic; new_width : INTEGER)
        return std_logic_vector
    is
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        result(0) := inp;
        for i in new_width-1 downto 1 loop
            result(i) := '0';
        end loop;
        return result;
    end;
    function extend_MSB(inp : std_logic_vector; new_width, arith : INTEGER)
        return std_logic_vector
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if arith = xlUnsigned then
            result := zero_ext(vec, new_width);
        else
            result := sign_ext(vec, new_width);
        end if;
        return result;
    end;
    function pad_LSB(inp : std_logic_vector; new_width, arith: integer)
        return STD_LOGIC_VECTOR
    is
        constant orig_width : integer := inp'length;
        variable vec : std_logic_vector(orig_width-1 downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
        variable pos : integer;
    begin
        vec := inp;
        pos := new_width-1;
        if (arith = xlUnsigned) then
            result(pos) := '0';
            pos := pos - 1;
        else
            result(pos) := vec(orig_width-1);
            pos := pos - 1;
        end if;
        if (new_width >= orig_width) then
            for i in orig_width-1 downto 0 loop
                result(pos) := vec(i);
                pos := pos - 1;
            end loop;
            if pos >= 0 then
                for i in pos downto 0 loop
                    result(i) := '0';
                end loop;
            end if;
        end if;
        return result;
    end;
    function align_input(inp : std_logic_vector; old_width, delta, new_arith,
                         new_width: INTEGER)
        return std_logic_vector
    is
        variable vec : std_logic_vector(old_width-1 downto 0);
        variable padded_inp : std_logic_vector((old_width + delta)-1  downto 0);
        variable result : std_logic_vector(new_width-1 downto 0);
    begin
        vec := inp;
        if delta > 0 then
            padded_inp := pad_LSB(vec, old_width+delta);
            result := extend_MSB(padded_inp, new_width, new_arith);
        else
            result := extend_MSB(vec, new_width, new_arith);
        end if;
        return result;
    end;
    function max(L, R: INTEGER) return INTEGER is
    begin
        if L > R then
            return L;
        else
            return R;
        end if;
    end;
    function min(L, R: INTEGER) return INTEGER is
    begin
        if L < R then
            return L;
        else
            return R;
        end if;
    end;
    function "="(left,right: STRING) return boolean is
    begin
        if (left'length /= right'length) then
            return false;
        else
            test : for i in 1 to left'length loop
                if left(i) /= right(i) then
                    return false;
                end if;
            end loop test;
            return true;
        end if;
    end;
    -- synopsys translate_off
    function is_binary_string_invalid (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'X' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_binary_string_undefined (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 1 to vec'length loop
            if ( vec(i) = 'U' ) then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function is_XorU(inp : std_logic_vector)
        return boolean
    is
        constant width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable result : boolean;
    begin
        vec := inp;
        result := false;
        for i in 0 to width-1 loop
            if (vec(i) = 'U') or (vec(i) = 'X') then
                result := true;
            end if;
        end loop;
        return result;
    end;
    function to_real(inp : std_logic_vector; bin_pt : integer; arith : integer)
        return real
    is
        variable  vec : std_logic_vector(inp'length-1 downto 0);
        variable result, shift_val, undefined_real : real;
        variable neg_num : boolean;
    begin
        vec := inp;
        result := 0.0;
        neg_num := false;
        if vec(inp'length-1) = '1' then
            neg_num := true;
        end if;
        for i in 0 to inp'length-1 loop
            if  vec(i) = 'U' or vec(i) = 'X' then
                return undefined_real;
            end if;
            if arith = xlSigned then
                if neg_num then
                    if vec(i) = '0' then
                        result := result + 2.0**i;
                    end if;
                else
                    if vec(i) = '1' then
                        result := result + 2.0**i;
                    end if;
                end if;
            else
                if vec(i) = '1' then
                    result := result + 2.0**i;
                end if;
            end if;
        end loop;
        if arith = xlSigned then
            if neg_num then
                result := result + 1.0;
                result := result * (-1.0);
            end if;
        end if;
        shift_val := 2.0**(-1*bin_pt);
        result := result * shift_val;
        return result;
    end;
    function std_logic_to_real(inp : std_logic; bin_pt : integer; arith : integer)
        return real
    is
        variable result : real := 0.0;
    begin
        if inp = '1' then
            result := 1.0;
        end if;
        if arith = xlSigned then
            assert false
                report "It doesn't make sense to convert a 1 bit number to a signed real.";
        end if;
        return result;
    end;
    -- synopsys translate_on
    function integer_to_std_logic_vector (inp : integer;  width, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
    begin
        if (arith = xlSigned) then
            signed_val := to_signed(inp, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(inp, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_vector_to_integer (inp : std_logic_vector;  arith : integer)
        return integer
    is
        constant width : integer := inp'length;
        variable unsigned_val : unsigned(width-1 downto 0);
        variable signed_val : signed(width-1 downto 0);
        variable result : integer;
    begin
        if (arith = xlSigned) then
            signed_val := std_logic_vector_to_signed(inp);
            result := to_integer(signed_val);
        else
            unsigned_val := std_logic_vector_to_unsigned(inp);
            result := to_integer(unsigned_val);
        end if;
        return result;
    end;
    function std_logic_to_integer(constant inp : std_logic := '0')
        return integer
    is
    begin
        if inp = '1' then
            return 1;
        else
            return 0;
        end if;
    end;
    function makeZeroBinStr (width : integer) return STRING is
        variable result : string(1 to width+3);
    begin
        result(1) := '0';
        result(2) := 'b';
        for i in 3 to width+2 loop
            result(i) := '0';
        end loop;
        result(width+3) := '.';
        return result;
    end;
    -- synopsys translate_off
    function real_string_to_std_logic_vector (inp : string;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable result : std_logic_vector(width-1 downto 0);
    begin
        result := (others => '0');
        return result;
    end;
    function real_to_std_logic_vector (inp : real;  width, bin_pt, arith : integer)
        return std_logic_vector
    is
        variable real_val : real;
        variable int_val : integer;
        variable result : std_logic_vector(width-1 downto 0) := (others => '0');
        variable unsigned_val : unsigned(width-1 downto 0) := (others => '0');
        variable signed_val : signed(width-1 downto 0) := (others => '0');
    begin
        real_val := inp;
        int_val := integer(real_val * 2.0**(bin_pt));
        if (arith = xlSigned) then
            signed_val := to_signed(int_val, width);
            result := signed_to_std_logic_vector(signed_val);
        else
            unsigned_val := to_unsigned(int_val, width);
            result := unsigned_to_std_logic_vector(unsigned_val);
        end if;
        return result;
    end;
    -- synopsys translate_on
    function valid_bin_string (inp : string)
        return boolean
    is
        variable vec : string(1 to inp'length);
    begin
        vec := inp;
        if (vec(1) = '0' and vec(2) = 'b') then
            return true;
        else
            return false;
        end if;
    end;
    function hex_string_to_std_logic_vector(inp: string; width : integer)
        return std_logic_vector is
        constant strlen       : integer := inp'LENGTH;
        variable result       : std_logic_vector(width-1 downto 0);
        variable bitval       : std_logic_vector((strlen*4)-1 downto 0);
        variable posn         : integer;
        variable ch           : character;
        variable vec          : string(1 to strlen);
    begin
        vec := inp;
        result := (others => '0');
        posn := (strlen*4)-1;
        for i in 1 to strlen loop
            ch := vec(i);
            case ch is
                when '0' => bitval(posn downto posn-3) := "0000";
                when '1' => bitval(posn downto posn-3) := "0001";
                when '2' => bitval(posn downto posn-3) := "0010";
                when '3' => bitval(posn downto posn-3) := "0011";
                when '4' => bitval(posn downto posn-3) := "0100";
                when '5' => bitval(posn downto posn-3) := "0101";
                when '6' => bitval(posn downto posn-3) := "0110";
                when '7' => bitval(posn downto posn-3) := "0111";
                when '8' => bitval(posn downto posn-3) := "1000";
                when '9' => bitval(posn downto posn-3) := "1001";
                when 'A' | 'a' => bitval(posn downto posn-3) := "1010";
                when 'B' | 'b' => bitval(posn downto posn-3) := "1011";
                when 'C' | 'c' => bitval(posn downto posn-3) := "1100";
                when 'D' | 'd' => bitval(posn downto posn-3) := "1101";
                when 'E' | 'e' => bitval(posn downto posn-3) := "1110";
                when 'F' | 'f' => bitval(posn downto posn-3) := "1111";
                when others => bitval(posn downto posn-3) := "XXXX";
                               -- synopsys translate_off
                               ASSERT false
                                   REPORT "Invalid hex value" SEVERITY ERROR;
                               -- synopsys translate_on
            end case;
            posn := posn - 4;
        end loop;
        if (width <= strlen*4) then
            result :=  bitval(width-1 downto 0);
        else
            result((strlen*4)-1 downto 0) := bitval;
        end if;
        return result;
    end;
    function bin_string_to_std_logic_vector (inp : string)
        return std_logic_vector
    is
        variable pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(inp'length-1 downto 0);
    begin
        vec := inp;
        pos := inp'length-1;
        result := (others => '0');
        for i in 1 to vec'length loop
            -- synopsys translate_off
            if (pos < 0) and (vec(i) = '0' or vec(i) = '1' or vec(i) = 'X' or vec(i) = 'U')  then
                assert false
                    report "Input string is larger than output std_logic_vector. Truncating output.";
                return result;
            end if;
            -- synopsys translate_on
            if vec(i) = '0' then
                result(pos) := '0';
                pos := pos - 1;
            end if;
            if vec(i) = '1' then
                result(pos) := '1';
                pos := pos - 1;
            end if;
            -- synopsys translate_off
            if (vec(i) = 'X' or vec(i) = 'U') then
                result(pos) := 'U';
                pos := pos - 1;
            end if;
            -- synopsys translate_on
        end loop;
        return result;
    end;
    function bin_string_element_to_std_logic_vector (inp : string;  width, index : integer)
        return std_logic_vector
    is
        constant str_width : integer := width + 4;
        constant inp_len : integer := inp'length;
        constant num_elements : integer := (inp_len + 1)/str_width;
        constant reverse_index : integer := (num_elements-1) - index;
        variable left_pos : integer;
        variable right_pos : integer;
        variable vec : string(1 to inp'length);
        variable result : std_logic_vector(width-1 downto 0);
    begin
        vec := inp;
        result := (others => '0');
        if (reverse_index = 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := 1;
            right_pos := width + 3;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        if (reverse_index > 0) and (reverse_index < num_elements) and (inp_len-3 >= width) then
            left_pos := (reverse_index * str_width) + 1;
            right_pos := left_pos + width + 2;
            result := bin_string_to_std_logic_vector(vec(left_pos to right_pos));
        end if;
        return result;
    end;
   -- synopsys translate_off
    function std_logic_vector_to_bin_string(inp : std_logic_vector)
        return string
    is
        variable vec : std_logic_vector(1 to inp'length);
        variable result : string(vec'range);
    begin
        vec := inp;
        for i in vec'range loop
            result(i) := to_char(vec(i));
        end loop;
        return result;
    end;
    function std_logic_to_bin_string(inp : std_logic)
        return string
    is
        variable result : string(1 to 3);
    begin
        result(1) := '0';
        result(2) := 'b';
        result(3) := to_char(inp);
        return result;
    end;
    function std_logic_vector_to_bin_string_w_point(inp : std_logic_vector; bin_pt : integer)
        return string
    is
        variable width : integer := inp'length;
        variable vec : std_logic_vector(width-1 downto 0);
        variable str_pos : integer;
        variable result : string(1 to width+3);
    begin
        vec := inp;
        str_pos := 1;
        result(str_pos) := '0';
        str_pos := 2;
        result(str_pos) := 'b';
        str_pos := 3;
        for i in width-1 downto 0  loop
            if (((width+3) - bin_pt) = str_pos) then
                result(str_pos) := '.';
                str_pos := str_pos + 1;
            end if;
            result(str_pos) := to_char(vec(i));
            str_pos := str_pos + 1;
        end loop;
        if (bin_pt = 0) then
            result(str_pos) := '.';
        end if;
        return result;
    end;
    function real_to_bin_string(inp : real;  width, bin_pt, arith : integer)
        return string
    is
        variable result : string(1 to width);
        variable vec : std_logic_vector(width-1 downto 0);
    begin
        vec := real_to_std_logic_vector(inp, width, bin_pt, arith);
        result := std_logic_vector_to_bin_string(vec);
        return result;
    end;
    function real_to_string (inp : real) return string
    is
        variable result : string(1 to display_precision) := (others => ' ');
    begin
        result(real'image(inp)'range) := real'image(inp);
        return result;
    end;
    -- synopsys translate_on
end conv_pkg;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity srl17e is
    generic (width : integer:=16;
             latency : integer :=8);
    port (clk   : in std_logic;
          ce    : in std_logic;
          d     : in std_logic_vector(width-1 downto 0);
          q     : out std_logic_vector(width-1 downto 0));
end srl17e;
architecture structural of srl17e is
    component SRL16E
        port (D   : in STD_ULOGIC;
              CE  : in STD_ULOGIC;
              CLK : in STD_ULOGIC;
              A0  : in STD_ULOGIC;
              A1  : in STD_ULOGIC;
              A2  : in STD_ULOGIC;
              A3  : in STD_ULOGIC;
              Q   : out STD_ULOGIC);
    end component;
    attribute syn_black_box of SRL16E : component is true;
    attribute fpga_dont_touch of SRL16E : component is "true";
    component FDE
        port(
            Q  :        out   STD_ULOGIC;
            D  :        in    STD_ULOGIC;
            C  :        in    STD_ULOGIC;
            CE :        in    STD_ULOGIC);
    end component;
    attribute syn_black_box of FDE : component is true;
    attribute fpga_dont_touch of FDE : component is "true";
    constant a : std_logic_vector(4 downto 0) :=
        integer_to_std_logic_vector(latency-2,5,xlSigned);
    signal d_delayed : std_logic_vector(width-1 downto 0);
    signal srl16_out : std_logic_vector(width-1 downto 0);
begin
    d_delayed <= d after 200 ps;
    reg_array : for i in 0 to width-1 generate
        srl16_used: if latency > 1 generate
            u1 : srl16e port map(clk => clk,
                                 d => d_delayed(i),
                                 q => srl16_out(i),
                                 ce => ce,
                                 a0 => a(0),
                                 a1 => a(1),
                                 a2 => a(2),
                                 a3 => a(3));
        end generate;
        srl16_not_used: if latency <= 1 generate
            srl16_out(i) <= d_delayed(i);
        end generate;
        fde_used: if latency /= 0  generate
            u2 : fde port map(c => clk,
                              d => srl16_out(i),
                              q => q(i),
                              ce => ce);
        end generate;
        fde_not_used: if latency = 0  generate
            q(i) <= srl16_out(i);
        end generate;
    end generate;
 end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg;
architecture structural of synth_reg is
    component srl17e
        generic (width : integer:=16;
                 latency : integer :=8);
        port (clk : in std_logic;
              ce  : in std_logic;
              d   : in std_logic_vector(width-1 downto 0);
              q   : out std_logic_vector(width-1 downto 0));
    end component;
    function calc_num_srl17es (latency : integer)
        return integer
    is
        variable remaining_latency : integer;
        variable result : integer;
    begin
        result := latency / 17;
        remaining_latency := latency - (result * 17);
        if (remaining_latency /= 0) then
            result := result + 1;
        end if;
        return result;
    end;
    constant complete_num_srl17es : integer := latency / 17;
    constant num_srl17es : integer := calc_num_srl17es(latency);
    constant remaining_latency : integer := latency - (complete_num_srl17es * 17);
    type register_array is array (num_srl17es downto 0) of
        std_logic_vector(width-1 downto 0);
    signal z : register_array;
begin
    z(0) <= i;
    complete_ones : if complete_num_srl17es > 0 generate
        srl17e_array: for i in 0 to complete_num_srl17es-1 generate
            delay_comp : srl17e
                generic map (width => width,
                             latency => 17)
                port map (clk => clk,
                          ce  => ce,
                          d       => z(i),
                          q       => z(i+1));
        end generate;
    end generate;
    partial_one : if remaining_latency > 0 generate
        last_srl17e : srl17e
            generic map (width => width,
                         latency => remaining_latency)
            port map (clk => clk,
                      ce  => ce,
                      d   => z(num_srl17es-1),
                      q   => z(num_srl17es));
    end generate;
    o <= z(num_srl17es);
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_reg is
    generic (width           : integer := 8;
             latency         : integer := 1);
    port (i       : in std_logic_vector(width-1 downto 0);
          ce      : in std_logic;
          clr     : in std_logic;
          clk     : in std_logic;
          o       : out std_logic_vector(width-1 downto 0));
end synth_reg_reg;
architecture behav of synth_reg_reg is
  type reg_array_type is array (latency-1 downto 0) of std_logic_vector(width -1 downto 0);
  signal reg_bank : reg_array_type := (others => (others => '0'));
  signal reg_bank_in : reg_array_type := (others => (others => '0'));
  attribute syn_allow_retiming : boolean;
  attribute syn_srlstyle : string;
  attribute syn_allow_retiming of reg_bank : signal is true;
  attribute syn_allow_retiming of reg_bank_in : signal is true;
  attribute syn_srlstyle of reg_bank : signal is "registers";
  attribute syn_srlstyle of reg_bank_in : signal is "registers";
begin
  latency_eq_0: if latency = 0 generate
    o <= i;
  end generate latency_eq_0;
  latency_gt_0: if latency >= 1 generate
    o <= reg_bank(latency-1);
    reg_bank_in(0) <= i;
    loop_gen: for idx in latency-2 downto 0 generate
      reg_bank_in(idx+1) <= reg_bank(idx);
    end generate loop_gen;
    sync_loop: for sync_idx in latency-1 downto 0 generate
      sync_proc: process (clk)
      begin
        if clk'event and clk = '1' then
          if clr = '1' then
            reg_bank_in <= (others => (others => '0'));
          elsif ce = '1'  then
            reg_bank(sync_idx) <= reg_bank_in(sync_idx);
          end if;
        end if;
      end process sync_proc;
    end generate sync_loop;
  end generate latency_gt_0;
end behav;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity single_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000"
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end single_reg_w_init;
architecture structural of single_reg_w_init is
  function build_init_const(width: integer;
                            init_index: integer;
                            init_value: bit_vector)
    return std_logic_vector
  is
    variable result: std_logic_vector(width - 1 downto 0);
  begin
    if init_index = 0 then
      result := (others => '0');
    elsif init_index = 1 then
      result := (others => '0');
      result(0) := '1';
    else
      result := to_stdlogicvector(init_value);
    end if;
    return result;
  end;
  component fdre
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      r: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdre: component is true;
  attribute fpga_dont_touch of fdre: component is "true";
  component fdse
    port (
      q: out std_ulogic;
      d: in  std_ulogic;
      c: in  std_ulogic;
      ce: in  std_ulogic;
      s: in  std_ulogic
    );
  end component;
  attribute syn_black_box of fdse: component is true;
  attribute fpga_dont_touch of fdse: component is "true";
  constant init_const: std_logic_vector(width - 1 downto 0)
    := build_init_const(width, init_index, init_value);
begin
  fd_prim_array: for index in 0 to width - 1 generate
    bit_is_0: if (init_const(index) = '0') generate
      fdre_comp: fdre
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          r => clr
        );
    end generate;
    bit_is_1: if (init_const(index) = '1') generate
      fdse_comp: fdse
        port map (
          c => clk,
          d => i(index),
          q => o(index),
          ce => ce,
          s => clr
        );
    end generate;
  end generate;
end architecture structural;
-- synopsys translate_off
library unisim;
use unisim.vcomponents.all;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity synth_reg_w_init is
  generic (
    width: integer := 8;
    init_index: integer := 0;
    init_value: bit_vector := b"0000";
    latency: integer := 1
  );
  port (
    i: in std_logic_vector(width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    o: out std_logic_vector(width - 1 downto 0)
  );
end synth_reg_w_init;
architecture structural of synth_reg_w_init is
  component single_reg_w_init
    generic (
      width: integer := 8;
      init_index: integer := 0;
      init_value: bit_vector := b"0000"
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  signal dly_i: std_logic_vector((latency + 1) * width - 1 downto 0);
  signal dly_clr: std_logic;
begin
  latency_eq_0: if (latency = 0) generate
    o <= i;
  end generate;
  latency_gt_0: if (latency >= 1) generate
    dly_i((latency + 1) * width - 1 downto latency * width) <= i
      after 200 ps;
    dly_clr <= clr after 200 ps;
    fd_array: for index in latency downto 1 generate
       reg_comp: single_reg_w_init
          generic map (
            width => width,
            init_index => init_index,
            init_value => init_value
          )
          port map (
            clk => clk,
            i => dly_i((index + 1) * width - 1 downto index * width),
            o => dly_i(index * width - 1 downto (index - 1) * width),
            ce => ce,
            clr => dly_clr
          );
    end generate;
    o <= dly_i(width - 1 downto 0);
  end generate;
end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_963ed6358a is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_963ed6358a;


architecture behavior of constant_963ed6358a is
begin
  op <= "0";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mcode_block_f4d0462e0e is
  port (
    plbrst : in std_logic_vector((1 - 1) downto 0);
    plbabus : in std_logic_vector((32 - 1) downto 0);
    plbpavalid : in std_logic_vector((1 - 1) downto 0);
    plbrnw : in std_logic_vector((1 - 1) downto 0);
    plbwrdbus : in std_logic_vector((32 - 1) downto 0);
    rddata : in std_logic_vector((32 - 1) downto 0);
    addrpref : in std_logic_vector((20 - 1) downto 0);
    wrdbusreg : out std_logic_vector((32 - 1) downto 0);
    addrack : out std_logic_vector((1 - 1) downto 0);
    rdcomp : out std_logic_vector((1 - 1) downto 0);
    wrdack : out std_logic_vector((1 - 1) downto 0);
    bankaddr : out std_logic_vector((2 - 1) downto 0);
    rnwreg : out std_logic_vector((1 - 1) downto 0);
    rddack : out std_logic_vector((1 - 1) downto 0);
    rddbus : out std_logic_vector((32 - 1) downto 0);
    linearaddr : out std_logic_vector((8 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mcode_block_f4d0462e0e;


architecture behavior of mcode_block_f4d0462e0e is
  signal plbrst_1_110: unsigned((1 - 1) downto 0);
  signal plbabus_1_118: unsigned((32 - 1) downto 0);
  signal plbpavalid_1_127: unsigned((1 - 1) downto 0);
  signal plbrnw_1_139: unsigned((1 - 1) downto 0);
  signal plbwrdbus_1_147: unsigned((32 - 1) downto 0);
  signal rddata_1_158: unsigned((32 - 1) downto 0);
  signal addrpref_1_166: unsigned((20 - 1) downto 0);
  signal plbrstreg_12_24_next: boolean;
  signal plbrstreg_12_24: boolean := false;
  signal plbabusreg_13_25_next: unsigned((32 - 1) downto 0);
  signal plbabusreg_13_25: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal plbpavalidreg_14_28_next: boolean;
  signal plbpavalidreg_14_28: boolean := false;
  signal plbrnwreg_15_24_next: unsigned((1 - 1) downto 0);
  signal plbrnwreg_15_24: unsigned((1 - 1) downto 0) := "0";
  signal plbwrdbusreg_16_27_next: unsigned((32 - 1) downto 0);
  signal plbwrdbusreg_16_27: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal avalidreg_28_23_next: boolean;
  signal avalidreg_28_23: boolean := false;
  signal ps1reg_39_20_next: boolean;
  signal ps1reg_39_20: boolean := false;
  signal psreg_47_19_next: boolean;
  signal psreg_47_19: boolean := false;
  type array_type_rdcompdelay_58_25 is array (0 to (3 - 1)) of unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25: array_type_rdcompdelay_58_25 := (
    "0",
    "0",
    "0");
  signal rdcompdelay_58_25_front_din: unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25_back: unsigned((1 - 1) downto 0);
  signal rdcompdelay_58_25_push_front_pop_back_en: std_logic;
  signal rdcompreg_62_23_next: unsigned((1 - 1) downto 0);
  signal rdcompreg_62_23: unsigned((1 - 1) downto 0) := "0";
  signal rddackreg_66_23_next: unsigned((1 - 1) downto 0);
  signal rddackreg_66_23: unsigned((1 - 1) downto 0) := "0";
  signal wrdackreg_70_23_next: unsigned((1 - 1) downto 0);
  signal wrdackreg_70_23: unsigned((1 - 1) downto 0) := "0";
  signal rddbusreg_84_23_next: unsigned((32 - 1) downto 0);
  signal rddbusreg_84_23: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal bankaddr_20_1_slice: unsigned((2 - 1) downto 0);
  signal linearaddr_21_1_slice: unsigned((8 - 1) downto 0);
  signal addrpref_in_32_1_slice: unsigned((20 - 1) downto 0);
  signal rel_33_4: boolean;
  signal ps1_join_33_1: boolean;
  signal ps_42_1_bit: boolean;
  signal bitnot_49_49: boolean;
  signal bitnot_49_73: boolean;
  signal bit_49_49: boolean;
  signal addrack_49_1_convert: unsigned((1 - 1) downto 0);
  signal bit_55_43: unsigned((1 - 1) downto 0);
  signal bitnot_72_35: unsigned((1 - 1) downto 0);
  signal wrdackreg_72_1_bit: unsigned((1 - 1) downto 0);
  signal rdsel_76_1_bit: unsigned((1 - 1) downto 0);
  signal rel_78_4: boolean;
  signal rddbus1_join_78_1: unsigned((32 - 1) downto 0);
  signal plbwrdbusreg_97_1_slice: unsigned((32 - 1) downto 0);
  signal plbrstreg_12_24_next_x_000000: boolean;
  signal plbpavalidreg_14_28_next_x_000000: boolean;
begin
  plbrst_1_110 <= std_logic_vector_to_unsigned(plbrst);
  plbabus_1_118 <= std_logic_vector_to_unsigned(plbabus);
  plbpavalid_1_127 <= std_logic_vector_to_unsigned(plbpavalid);
  plbrnw_1_139 <= std_logic_vector_to_unsigned(plbrnw);
  plbwrdbus_1_147 <= std_logic_vector_to_unsigned(plbwrdbus);
  rddata_1_158 <= std_logic_vector_to_unsigned(rddata);
  addrpref_1_166 <= std_logic_vector_to_unsigned(addrpref);
  proc_plbrstreg_12_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbrstreg_12_24 <= plbrstreg_12_24_next;
      end if;
    end if;
  end process proc_plbrstreg_12_24;
  proc_plbabusreg_13_25: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbabusreg_13_25 <= plbabusreg_13_25_next;
      end if;
    end if;
  end process proc_plbabusreg_13_25;
  proc_plbpavalidreg_14_28: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbpavalidreg_14_28 <= plbpavalidreg_14_28_next;
      end if;
    end if;
  end process proc_plbpavalidreg_14_28;
  proc_plbrnwreg_15_24: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbrnwreg_15_24 <= plbrnwreg_15_24_next;
      end if;
    end if;
  end process proc_plbrnwreg_15_24;
  proc_plbwrdbusreg_16_27: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        plbwrdbusreg_16_27 <= plbwrdbusreg_16_27_next;
      end if;
    end if;
  end process proc_plbwrdbusreg_16_27;
  proc_avalidreg_28_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        avalidreg_28_23 <= avalidreg_28_23_next;
      end if;
    end if;
  end process proc_avalidreg_28_23;
  proc_ps1reg_39_20: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        ps1reg_39_20 <= ps1reg_39_20_next;
      end if;
    end if;
  end process proc_ps1reg_39_20;
  proc_psreg_47_19: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        psreg_47_19 <= psreg_47_19_next;
      end if;
    end if;
  end process proc_psreg_47_19;
  rdcompdelay_58_25_back <= rdcompdelay_58_25(2);
  proc_rdcompdelay_58_25: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (rdcompdelay_58_25_push_front_pop_back_en = '1')) then
        for i in 2 downto 1 loop 
          rdcompdelay_58_25(i) <= rdcompdelay_58_25(i-1);
        end loop;
        rdcompdelay_58_25(0) <= rdcompdelay_58_25_front_din;
      end if;
    end if;
  end process proc_rdcompdelay_58_25;
  proc_rdcompreg_62_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rdcompreg_62_23 <= rdcompreg_62_23_next;
      end if;
    end if;
  end process proc_rdcompreg_62_23;
  proc_rddackreg_66_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rddackreg_66_23 <= rddackreg_66_23_next;
      end if;
    end if;
  end process proc_rddackreg_66_23;
  proc_wrdackreg_70_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        wrdackreg_70_23 <= wrdackreg_70_23_next;
      end if;
    end if;
  end process proc_wrdackreg_70_23;
  proc_rddbusreg_84_23: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        rddbusreg_84_23 <= rddbusreg_84_23_next;
      end if;
    end if;
  end process proc_rddbusreg_84_23;
  bankaddr_20_1_slice <= u2u_slice(plbabusreg_13_25, 11, 10);
  linearaddr_21_1_slice <= u2u_slice(plbabusreg_13_25, 9, 2);
  addrpref_in_32_1_slice <= u2u_slice(plbabusreg_13_25, 31, 12);
  rel_33_4 <= addrpref_in_32_1_slice = addrpref_1_166;
  proc_if_33_1: process (rel_33_4)
  is
  begin
    if rel_33_4 then
      ps1_join_33_1 <= true;
    else 
      ps1_join_33_1 <= false;
    end if;
  end process proc_if_33_1;
  ps_42_1_bit <= ((boolean_to_vector(ps1_join_33_1) and boolean_to_vector(plbpavalidreg_14_28)) = "1");
  bitnot_49_49 <= ((not boolean_to_vector(plbrstreg_12_24)) = "1");
  bitnot_49_73 <= ((not boolean_to_vector(psreg_47_19)) = "1");
  bit_49_49 <= ((boolean_to_vector(bitnot_49_49) and boolean_to_vector(ps_42_1_bit) and boolean_to_vector(bitnot_49_73)) = "1");
  addrack_49_1_convert <= u2u_cast(std_logic_vector_to_unsigned(boolean_to_vector(bit_49_49)), 0, 1, 0);
  bit_55_43 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_49_1_convert) and unsigned_to_std_logic_vector(plbrnwreg_15_24));
  bitnot_72_35 <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(plbrnwreg_15_24));
  wrdackreg_72_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_49_1_convert) and unsigned_to_std_logic_vector(bitnot_72_35));
  rdsel_76_1_bit <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(rdcompdelay_58_25_back) or unsigned_to_std_logic_vector(rdcompreg_62_23));
  rel_78_4 <= rdsel_76_1_bit = std_logic_vector_to_unsigned("1");
  proc_if_78_1: process (rddata_1_158, rel_78_4)
  is
  begin
    if rel_78_4 then
      rddbus1_join_78_1 <= rddata_1_158;
    else 
      rddbus1_join_78_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    end if;
  end process proc_if_78_1;
  plbwrdbusreg_97_1_slice <= u2u_slice(plbwrdbus_1_147, 31, 0);
  plbrstreg_12_24_next_x_000000 <= (plbrst_1_110 /= "0");
  plbrstreg_12_24_next <= plbrstreg_12_24_next_x_000000;
  plbabusreg_13_25_next <= plbabus_1_118;
  plbpavalidreg_14_28_next_x_000000 <= (plbpavalid_1_127 /= "0");
  plbpavalidreg_14_28_next <= plbpavalidreg_14_28_next_x_000000;
  plbrnwreg_15_24_next <= plbrnw_1_139;
  plbwrdbusreg_16_27_next <= plbwrdbusreg_97_1_slice;
  avalidreg_28_23_next <= plbpavalidreg_14_28;
  ps1reg_39_20_next <= ps1_join_33_1;
  psreg_47_19_next <= ps_42_1_bit;
  rdcompdelay_58_25_front_din <= bit_55_43;
  rdcompdelay_58_25_push_front_pop_back_en <= '1';
  rdcompreg_62_23_next <= rdcompdelay_58_25_back;
  rddackreg_66_23_next <= rdcompreg_62_23;
  wrdackreg_70_23_next <= wrdackreg_72_1_bit;
  rddbusreg_84_23_next <= rddbus1_join_78_1;
  wrdbusreg <= unsigned_to_std_logic_vector(plbwrdbusreg_16_27);
  addrack <= unsigned_to_std_logic_vector(addrack_49_1_convert);
  rdcomp <= unsigned_to_std_logic_vector(rdcompreg_62_23);
  wrdack <= unsigned_to_std_logic_vector(wrdackreg_70_23);
  bankaddr <= unsigned_to_std_logic_vector(bankaddr_20_1_slice);
  rnwreg <= unsigned_to_std_logic_vector(plbrnwreg_15_24);
  rddack <= unsigned_to_std_logic_vector(rddackreg_66_23);
  rddbus <= unsigned_to_std_logic_vector(rddbusreg_84_23);
  linearaddr <= unsigned_to_std_logic_vector(linearaddr_21_1_slice);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mcode_block_c8aa002cff is
  port (
    wrdbus : in std_logic_vector((32 - 1) downto 0);
    bankaddr : in std_logic_vector((2 - 1) downto 0);
    linearaddr : in std_logic_vector((8 - 1) downto 0);
    rnwreg : in std_logic_vector((1 - 1) downto 0);
    addrack : in std_logic_vector((1 - 1) downto 0);
    sm_usebesseg : in std_logic_vector((32 - 1) downto 0);
    sm_upozicio : in std_logic_vector((32 - 1) downto 0);
    sm_sebessegpozicio : in std_logic_vector((16 - 1) downto 0);
    sm_aktpozicio : in std_logic_vector((16 - 1) downto 0);
    sm_aktsebesseg : in std_logic_vector((16 - 1) downto 0);
    sm_esebesseg : in std_logic_vector((16 - 1) downto 0);
    read_bank_out : out std_logic_vector((32 - 1) downto 0);
    sm_posref_din : out std_logic_vector((16 - 1) downto 0);
    sm_posref_en : out std_logic_vector((1 - 1) downto 0);
    sm_q1_din : out std_logic_vector((16 - 1) downto 0);
    sm_q1_en : out std_logic_vector((1 - 1) downto 0);
    sm_q2_din : out std_logic_vector((16 - 1) downto 0);
    sm_q2_en : out std_logic_vector((1 - 1) downto 0);
    sm_q0_din : out std_logic_vector((16 - 1) downto 0);
    sm_q0_en : out std_logic_vector((1 - 1) downto 0);
    sm_pidts_din : out std_logic_vector((32 - 1) downto 0);
    sm_pidts_en : out std_logic_vector((1 - 1) downto 0);
    sm_pwmfrek_din : out std_logic_vector((16 - 1) downto 0);
    sm_pwmfrek_en : out std_logic_vector((1 - 1) downto 0);
    sm_refspeed_din : out std_logic_vector((16 - 1) downto 0);
    sm_refspeed_en : out std_logic_vector((1 - 1) downto 0);
    sm_sugarakaranya_din : out std_logic_vector((16 - 1) downto 0);
    sm_sugarakaranya_en : out std_logic_vector((1 - 1) downto 0);
    sm_q_sav_din : out std_logic_vector((16 - 1) downto 0);
    sm_q_sav_en : out std_logic_vector((1 - 1) downto 0);
    sm_config_din : out std_logic_vector((16 - 1) downto 0);
    sm_config_en : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mcode_block_c8aa002cff;


architecture behavior of mcode_block_c8aa002cff is
  signal wrdbus_1_321: unsigned((32 - 1) downto 0);
  signal bankaddr_1_329: unsigned((2 - 1) downto 0);
  signal linearaddr_1_339: unsigned((8 - 1) downto 0);
  signal rnwreg_1_351: unsigned((1 - 1) downto 0);
  signal addrack_1_359: unsigned((1 - 1) downto 0);
  signal sm_usebesseg_1_368: signed((32 - 1) downto 0);
  signal sm_upozicio_1_382: signed((32 - 1) downto 0);
  signal sm_sebessegpozicio_1_395: signed((16 - 1) downto 0);
  signal sm_aktpozicio_1_415: signed((16 - 1) downto 0);
  signal sm_aktsebesseg_1_430: signed((16 - 1) downto 0);
  signal sm_esebesseg_1_446: signed((16 - 1) downto 0);
  signal reg_bank_out_reg_33_30_next: unsigned((32 - 1) downto 0);
  signal reg_bank_out_reg_33_30: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal read_bank_out_reg_180_31_next: unsigned((32 - 1) downto 0);
  signal read_bank_out_reg_180_31: unsigned((32 - 1) downto 0) := "00000000000000000000000000000000";
  signal bankaddr_reg_183_26_next: unsigned((2 - 1) downto 0);
  signal bankaddr_reg_183_26: unsigned((2 - 1) downto 0) := "00";
  signal sm_usebesseg_bus_7_1_force: unsigned((32 - 1) downto 0);
  signal sm_upozicio_bus_10_1_force: unsigned((32 - 1) downto 0);
  signal sm_sebessegpozicio_bus_13_1_force: unsigned((16 - 1) downto 0);
  signal sm_aktpozicio_bus_16_1_force: unsigned((16 - 1) downto 0);
  signal sm_aktsebesseg_bus_19_1_force: unsigned((16 - 1) downto 0);
  signal sm_esebesseg_bus_22_1_force: unsigned((16 - 1) downto 0);
  signal rel_36_4: boolean;
  signal rel_38_8: boolean;
  signal rel_40_8: boolean;
  signal rel_42_8: boolean;
  signal rel_44_8: boolean;
  signal rel_46_8: boolean;
  signal reg_bank_out_reg_join_36_1: unsigned((32 - 1) downto 0);
  signal opcode_58_1_concat: unsigned((12 - 1) downto 0);
  signal rel_79_4: boolean;
  signal sm_posref_en_join_79_1: boolean;
  signal rel_85_4: boolean;
  signal sm_q1_en_join_85_1: boolean;
  signal rel_91_4: boolean;
  signal sm_q2_en_join_91_1: boolean;
  signal rel_97_4: boolean;
  signal sm_q0_en_join_97_1: boolean;
  signal rel_103_4: boolean;
  signal sm_pidts_en_join_103_1: boolean;
  signal rel_109_4: boolean;
  signal sm_pwmfrek_en_join_109_1: boolean;
  signal rel_115_4: boolean;
  signal sm_refspeed_en_join_115_1: boolean;
  signal rel_121_4: boolean;
  signal sm_sugarakaranya_en_join_121_1: boolean;
  signal rel_127_4: boolean;
  signal sm_q_sav_en_join_127_1: boolean;
  signal rel_133_4: boolean;
  signal sm_config_en_join_133_1: boolean;
  signal slice_148_34: unsigned((16 - 1) downto 0);
  signal sm_posref_din_148_1_force: signed((16 - 1) downto 0);
  signal slice_151_30: unsigned((16 - 1) downto 0);
  signal sm_q1_din_151_1_force: signed((16 - 1) downto 0);
  signal slice_154_30: unsigned((16 - 1) downto 0);
  signal slice_157_30: unsigned((16 - 1) downto 0);
  signal sm_q0_din_157_1_force: signed((16 - 1) downto 0);
  signal slice_160_33: unsigned((32 - 1) downto 0);
  signal slice_163_35: unsigned((16 - 1) downto 0);
  signal slice_166_36: unsigned((16 - 1) downto 0);
  signal sm_refspeed_din_166_1_force: signed((16 - 1) downto 0);
  signal slice_169_41: unsigned((16 - 1) downto 0);
  signal sm_sugarakaranya_din_169_1_force: signed((16 - 1) downto 0);
  signal slice_172_33: unsigned((16 - 1) downto 0);
  signal slice_175_34: unsigned((16 - 1) downto 0);
  signal rel_185_4: boolean;
  signal rel_188_8: boolean;
  signal rel_191_8: boolean;
  signal rel_194_8: boolean;
  signal read_bank_out_reg_join_185_1: unsigned((32 - 1) downto 0);
begin
  wrdbus_1_321 <= std_logic_vector_to_unsigned(wrdbus);
  bankaddr_1_329 <= std_logic_vector_to_unsigned(bankaddr);
  linearaddr_1_339 <= std_logic_vector_to_unsigned(linearaddr);
  rnwreg_1_351 <= std_logic_vector_to_unsigned(rnwreg);
  addrack_1_359 <= std_logic_vector_to_unsigned(addrack);
  sm_usebesseg_1_368 <= std_logic_vector_to_signed(sm_usebesseg);
  sm_upozicio_1_382 <= std_logic_vector_to_signed(sm_upozicio);
  sm_sebessegpozicio_1_395 <= std_logic_vector_to_signed(sm_sebessegpozicio);
  sm_aktpozicio_1_415 <= std_logic_vector_to_signed(sm_aktpozicio);
  sm_aktsebesseg_1_430 <= std_logic_vector_to_signed(sm_aktsebesseg);
  sm_esebesseg_1_446 <= std_logic_vector_to_signed(sm_esebesseg);
  proc_reg_bank_out_reg_33_30: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        reg_bank_out_reg_33_30 <= reg_bank_out_reg_33_30_next;
      end if;
    end if;
  end process proc_reg_bank_out_reg_33_30;
  proc_read_bank_out_reg_180_31: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        read_bank_out_reg_180_31 <= read_bank_out_reg_180_31_next;
      end if;
    end if;
  end process proc_read_bank_out_reg_180_31;
  proc_bankaddr_reg_183_26: process (clk)
  is
  begin
    if (clk'event and (clk = '1')) then
      if (ce = '1') then
        bankaddr_reg_183_26 <= bankaddr_reg_183_26_next;
      end if;
    end if;
  end process proc_bankaddr_reg_183_26;
  sm_usebesseg_bus_7_1_force <= signed_to_unsigned(sm_usebesseg_1_368);
  sm_upozicio_bus_10_1_force <= signed_to_unsigned(sm_upozicio_1_382);
  sm_sebessegpozicio_bus_13_1_force <= signed_to_unsigned(sm_sebessegpozicio_1_395);
  sm_aktpozicio_bus_16_1_force <= signed_to_unsigned(sm_aktpozicio_1_415);
  sm_aktsebesseg_bus_19_1_force <= signed_to_unsigned(sm_aktsebesseg_1_430);
  sm_esebesseg_bus_22_1_force <= signed_to_unsigned(sm_esebesseg_1_446);
  rel_36_4 <= linearaddr_1_339 = std_logic_vector_to_unsigned("00000000");
  rel_38_8 <= linearaddr_1_339 = std_logic_vector_to_unsigned("00000001");
  rel_40_8 <= linearaddr_1_339 = std_logic_vector_to_unsigned("00000010");
  rel_42_8 <= linearaddr_1_339 = std_logic_vector_to_unsigned("00000011");
  rel_44_8 <= linearaddr_1_339 = std_logic_vector_to_unsigned("00000100");
  rel_46_8 <= linearaddr_1_339 = std_logic_vector_to_unsigned("00000101");
  proc_if_36_1: process (reg_bank_out_reg_33_30, rel_36_4, rel_38_8, rel_40_8, rel_42_8, rel_44_8, rel_46_8, sm_aktpozicio_bus_16_1_force, sm_aktsebesseg_bus_19_1_force, sm_esebesseg_bus_22_1_force, sm_sebessegpozicio_bus_13_1_force, sm_upozicio_bus_10_1_force, sm_usebesseg_bus_7_1_force)
  is
  begin
    if rel_36_4 then
      reg_bank_out_reg_join_36_1 <= sm_usebesseg_bus_7_1_force;
    elsif rel_38_8 then
      reg_bank_out_reg_join_36_1 <= sm_upozicio_bus_10_1_force;
    elsif rel_40_8 then
      reg_bank_out_reg_join_36_1 <= u2u_cast(sm_sebessegpozicio_bus_13_1_force, 0, 32, 0);
    elsif rel_42_8 then
      reg_bank_out_reg_join_36_1 <= u2u_cast(sm_aktpozicio_bus_16_1_force, 0, 32, 0);
    elsif rel_44_8 then
      reg_bank_out_reg_join_36_1 <= u2u_cast(sm_aktsebesseg_bus_19_1_force, 0, 32, 0);
    elsif rel_46_8 then
      reg_bank_out_reg_join_36_1 <= u2u_cast(sm_esebesseg_bus_22_1_force, 0, 32, 0);
    else 
      reg_bank_out_reg_join_36_1 <= reg_bank_out_reg_33_30;
    end if;
  end process proc_if_36_1;
  opcode_58_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(addrack_1_359) & unsigned_to_std_logic_vector(rnwreg_1_351) & unsigned_to_std_logic_vector(bankaddr_1_329) & unsigned_to_std_logic_vector(linearaddr_1_339));
  rel_79_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000000000");
  proc_if_79_1: process (rel_79_4)
  is
  begin
    if rel_79_4 then
      sm_posref_en_join_79_1 <= true;
    else 
      sm_posref_en_join_79_1 <= false;
    end if;
  end process proc_if_79_1;
  rel_85_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000000001");
  proc_if_85_1: process (rel_85_4)
  is
  begin
    if rel_85_4 then
      sm_q1_en_join_85_1 <= true;
    else 
      sm_q1_en_join_85_1 <= false;
    end if;
  end process proc_if_85_1;
  rel_91_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000000010");
  proc_if_91_1: process (rel_91_4)
  is
  begin
    if rel_91_4 then
      sm_q2_en_join_91_1 <= true;
    else 
      sm_q2_en_join_91_1 <= false;
    end if;
  end process proc_if_91_1;
  rel_97_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000000011");
  proc_if_97_1: process (rel_97_4)
  is
  begin
    if rel_97_4 then
      sm_q0_en_join_97_1 <= true;
    else 
      sm_q0_en_join_97_1 <= false;
    end if;
  end process proc_if_97_1;
  rel_103_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000000100");
  proc_if_103_1: process (rel_103_4)
  is
  begin
    if rel_103_4 then
      sm_pidts_en_join_103_1 <= true;
    else 
      sm_pidts_en_join_103_1 <= false;
    end if;
  end process proc_if_103_1;
  rel_109_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000000101");
  proc_if_109_1: process (rel_109_4)
  is
  begin
    if rel_109_4 then
      sm_pwmfrek_en_join_109_1 <= true;
    else 
      sm_pwmfrek_en_join_109_1 <= false;
    end if;
  end process proc_if_109_1;
  rel_115_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000000110");
  proc_if_115_1: process (rel_115_4)
  is
  begin
    if rel_115_4 then
      sm_refspeed_en_join_115_1 <= true;
    else 
      sm_refspeed_en_join_115_1 <= false;
    end if;
  end process proc_if_115_1;
  rel_121_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000000111");
  proc_if_121_1: process (rel_121_4)
  is
  begin
    if rel_121_4 then
      sm_sugarakaranya_en_join_121_1 <= true;
    else 
      sm_sugarakaranya_en_join_121_1 <= false;
    end if;
  end process proc_if_121_1;
  rel_127_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000001000");
  proc_if_127_1: process (rel_127_4)
  is
  begin
    if rel_127_4 then
      sm_q_sav_en_join_127_1 <= true;
    else 
      sm_q_sav_en_join_127_1 <= false;
    end if;
  end process proc_if_127_1;
  rel_133_4 <= opcode_58_1_concat = std_logic_vector_to_unsigned("101000001001");
  proc_if_133_1: process (rel_133_4)
  is
  begin
    if rel_133_4 then
      sm_config_en_join_133_1 <= true;
    else 
      sm_config_en_join_133_1 <= false;
    end if;
  end process proc_if_133_1;
  slice_148_34 <= u2u_slice(wrdbus_1_321, 15, 0);
  sm_posref_din_148_1_force <= unsigned_to_signed(slice_148_34);
  slice_151_30 <= u2u_slice(wrdbus_1_321, 15, 0);
  sm_q1_din_151_1_force <= unsigned_to_signed(slice_151_30);
  slice_154_30 <= u2u_slice(wrdbus_1_321, 15, 0);
  slice_157_30 <= u2u_slice(wrdbus_1_321, 15, 0);
  sm_q0_din_157_1_force <= unsigned_to_signed(slice_157_30);
  slice_160_33 <= u2u_slice(wrdbus_1_321, 31, 0);
  slice_163_35 <= u2u_slice(wrdbus_1_321, 15, 0);
  slice_166_36 <= u2u_slice(wrdbus_1_321, 15, 0);
  sm_refspeed_din_166_1_force <= unsigned_to_signed(slice_166_36);
  slice_169_41 <= u2u_slice(wrdbus_1_321, 15, 0);
  sm_sugarakaranya_din_169_1_force <= unsigned_to_signed(slice_169_41);
  slice_172_33 <= u2u_slice(wrdbus_1_321, 15, 0);
  slice_175_34 <= u2u_slice(wrdbus_1_321, 15, 0);
  rel_185_4 <= bankaddr_reg_183_26 = std_logic_vector_to_unsigned("00");
  rel_188_8 <= bankaddr_reg_183_26 = std_logic_vector_to_unsigned("01");
  rel_191_8 <= bankaddr_reg_183_26 = std_logic_vector_to_unsigned("10");
  rel_194_8 <= bankaddr_reg_183_26 = std_logic_vector_to_unsigned("11");
  proc_if_185_1: process (read_bank_out_reg_180_31, reg_bank_out_reg_33_30, rel_185_4, rel_188_8, rel_191_8, rel_194_8)
  is
  begin
    if rel_185_4 then
      read_bank_out_reg_join_185_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    elsif rel_188_8 then
      read_bank_out_reg_join_185_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    elsif rel_191_8 then
      read_bank_out_reg_join_185_1 <= reg_bank_out_reg_33_30;
    elsif rel_194_8 then
      read_bank_out_reg_join_185_1 <= std_logic_vector_to_unsigned("00000000000000000000000000000000");
    else 
      read_bank_out_reg_join_185_1 <= read_bank_out_reg_180_31;
    end if;
  end process proc_if_185_1;
  reg_bank_out_reg_33_30_next <= reg_bank_out_reg_join_36_1;
  read_bank_out_reg_180_31_next <= read_bank_out_reg_join_185_1;
  bankaddr_reg_183_26_next <= bankaddr_1_329;
  read_bank_out <= unsigned_to_std_logic_vector(read_bank_out_reg_180_31);
  sm_posref_din <= signed_to_std_logic_vector(sm_posref_din_148_1_force);
  sm_posref_en <= boolean_to_vector(sm_posref_en_join_79_1);
  sm_q1_din <= signed_to_std_logic_vector(sm_q1_din_151_1_force);
  sm_q1_en <= boolean_to_vector(sm_q1_en_join_85_1);
  sm_q2_din <= unsigned_to_std_logic_vector(slice_154_30);
  sm_q2_en <= boolean_to_vector(sm_q2_en_join_91_1);
  sm_q0_din <= signed_to_std_logic_vector(sm_q0_din_157_1_force);
  sm_q0_en <= boolean_to_vector(sm_q0_en_join_97_1);
  sm_pidts_din <= unsigned_to_std_logic_vector(slice_160_33);
  sm_pidts_en <= boolean_to_vector(sm_pidts_en_join_103_1);
  sm_pwmfrek_din <= unsigned_to_std_logic_vector(slice_163_35);
  sm_pwmfrek_en <= boolean_to_vector(sm_pwmfrek_en_join_109_1);
  sm_refspeed_din <= signed_to_std_logic_vector(sm_refspeed_din_166_1_force);
  sm_refspeed_en <= boolean_to_vector(sm_refspeed_en_join_115_1);
  sm_sugarakaranya_din <= signed_to_std_logic_vector(sm_sugarakaranya_din_169_1_force);
  sm_sugarakaranya_en <= boolean_to_vector(sm_sugarakaranya_en_join_121_1);
  sm_q_sav_din <= unsigned_to_std_logic_vector(slice_172_33);
  sm_q_sav_en <= boolean_to_vector(sm_q_sav_en_join_127_1);
  sm_config_din <= unsigned_to_std_logic_vector(slice_175_34);
  sm_config_en <= boolean_to_vector(sm_config_en_join_133_1);
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlcounter_free_IpSDKSebesegEsPozicio is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    load: in std_logic_vector(0 downto 0) := (others => '0');
    din: in std_logic_vector(op_width - 1 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_free_IpSDKSebesegEsPozicio ;
architecture behavior of xlcounter_free_IpSDKSebesegEsPozicio is
  component cntr_11_0_d7c176806556610b
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_d7c176806556610b:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_d7c176806556610b:
    component is "true";
  attribute box_type of cntr_11_0_d7c176806556610b:
    component  is "black_box";
  component cntr_11_0_5baa608aaa6fc4cf
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_5baa608aaa6fc4cf:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_5baa608aaa6fc4cf:
    component is "true";
  attribute box_type of cntr_11_0_5baa608aaa6fc4cf:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec: std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec: std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr: string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
  signal core_sinit: std_logic;
  signal core_ce: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
begin
  core_ce <= ce and en(0);
  core_sinit <= (clr or rst(0)) and ce;
  op <= op_net;
  comp0: if ((core_name0 = "cntr_11_0_d7c176806556610b")) generate
    core_instance0: cntr_11_0_d7c176806556610b
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
  comp1: if ((core_name0 = "cntr_11_0_5baa608aaa6fc4cf")) generate
    core_instance1: cntr_11_0_5baa608aaa6fc4cf
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_49a7e4b36d is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_49a7e4b36d;


architecture behavior of logical_49a7e4b36d is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
  signal unregy_3_1_convert: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  unregy_3_1_convert <= cast(std_logic_to_vector(fully_2_1_bit), 0, 1, 0, xlUnsigned);
  y <= unregy_3_1_convert;
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xlmult_IpSDKSebesegEsPozicio is
  generic (
    core_name0: string := "";
    a_width: integer := 4;
    a_bin_pt: integer := 2;
    a_arith: integer := xlSigned;
    b_width: integer := 4;
    b_bin_pt: integer := 1;
    b_arith: integer := xlSigned;
    p_width: integer := 8;
    p_bin_pt: integer := 2;
    p_arith: integer := xlSigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    extra_registers: integer := 0;
    c_a_width: integer := 7;
    c_b_width: integer := 7;
    c_type: integer := 0;
    c_a_type: integer := 0;
    c_b_type: integer := 0;
    c_pipelined: integer := 1;
    c_baat: integer := 4;
    multsign: integer := xlSigned;
    c_output_width: integer := 16
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    core_ce: in std_logic := '0';
    core_clr: in std_logic := '0';
    core_clk: in std_logic := '0';
    rst: in std_logic_vector(rst_width - 1 downto 0);
    en: in std_logic_vector(en_width - 1 downto 0);
    p: out std_logic_vector(p_width - 1 downto 0)
  );
end xlmult_IpSDKSebesegEsPozicio;
architecture behavior of xlmult_IpSDKSebesegEsPozicio is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  component mult_11_2_f059f4dd57a63694
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_f059f4dd57a63694:
    component is true;
  attribute fpga_dont_touch of mult_11_2_f059f4dd57a63694:
    component is "true";
  attribute box_type of mult_11_2_f059f4dd57a63694:
    component  is "black_box";
  component mult_11_2_357304dcca1625c6
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_357304dcca1625c6:
    component is true;
  attribute fpga_dont_touch of mult_11_2_357304dcca1625c6:
    component is "true";
  attribute box_type of mult_11_2_357304dcca1625c6:
    component  is "black_box";
  component mult_11_2_2b546dfd19043fff
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_2b546dfd19043fff:
    component is true;
  attribute fpga_dont_touch of mult_11_2_2b546dfd19043fff:
    component is "true";
  attribute box_type of mult_11_2_2b546dfd19043fff:
    component  is "black_box";
  component mult_11_2_6f06a19cb1633eca
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_6f06a19cb1633eca:
    component is true;
  attribute fpga_dont_touch of mult_11_2_6f06a19cb1633eca:
    component is "true";
  attribute box_type of mult_11_2_6f06a19cb1633eca:
    component  is "black_box";
  component mult_11_2_8d94dfdd489cb4d4
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_8d94dfdd489cb4d4:
    component is true;
  attribute fpga_dont_touch of mult_11_2_8d94dfdd489cb4d4:
    component is "true";
  attribute box_type of mult_11_2_8d94dfdd489cb4d4:
    component  is "black_box";
  component mult_11_2_99ead271b49e8ec3
    port (
      b: in std_logic_vector(c_b_width - 1 downto 0);
      p: out std_logic_vector(c_output_width - 1 downto 0);
      clk: in std_logic;
      ce: in std_logic;
      sclr: in std_logic;
      a: in std_logic_vector(c_a_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of mult_11_2_99ead271b49e8ec3:
    component is true;
  attribute fpga_dont_touch of mult_11_2_99ead271b49e8ec3:
    component is "true";
  attribute box_type of mult_11_2_99ead271b49e8ec3:
    component  is "black_box";
  signal tmp_a: std_logic_vector(c_a_width - 1 downto 0);
  signal conv_a: std_logic_vector(c_a_width - 1 downto 0);
  signal tmp_b: std_logic_vector(c_b_width - 1 downto 0);
  signal conv_b: std_logic_vector(c_b_width - 1 downto 0);
  signal tmp_p: std_logic_vector(c_output_width - 1 downto 0);
  signal conv_p: std_logic_vector(p_width - 1 downto 0);
  -- synopsys translate_off
  signal real_a, real_b, real_p: real;
  -- synopsys translate_on
  signal rfd: std_logic;
  signal rdy: std_logic;
  signal nd: std_logic;
  signal internal_ce: std_logic;
  signal internal_clr: std_logic;
  signal internal_core_ce: std_logic;
begin
-- synopsys translate_off
-- synopsys translate_on
  internal_ce <= ce and en(0);
  internal_core_ce <= core_ce and en(0);
  internal_clr <= (clr or rst(0)) and ce;
  nd <= internal_ce;
  input_process:  process (a,b)
  begin
    tmp_a <= zero_ext(a, c_a_width);
    tmp_b <= zero_ext(b, c_b_width);
  end process;
  output_process: process (tmp_p)
  begin
    conv_p <= convert_type(tmp_p, c_output_width, a_bin_pt+b_bin_pt, multsign,
                           p_width, p_bin_pt, p_arith, quantization, overflow);
  end process;
  comp0: if ((core_name0 = "mult_11_2_f059f4dd57a63694")) generate
    core_instance0: mult_11_2_f059f4dd57a63694
      port map (
        a => tmp_a,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp1: if ((core_name0 = "mult_11_2_357304dcca1625c6")) generate
    core_instance1: mult_11_2_357304dcca1625c6
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp2: if ((core_name0 = "mult_11_2_2b546dfd19043fff")) generate
    core_instance2: mult_11_2_2b546dfd19043fff
      port map (
        a => tmp_a,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp3: if ((core_name0 = "mult_11_2_6f06a19cb1633eca")) generate
    core_instance3: mult_11_2_6f06a19cb1633eca
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp4: if ((core_name0 = "mult_11_2_8d94dfdd489cb4d4")) generate
    core_instance4: mult_11_2_8d94dfdd489cb4d4
      port map (
        a => tmp_a,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  comp5: if ((core_name0 = "mult_11_2_99ead271b49e8ec3")) generate
    core_instance5: mult_11_2_99ead271b49e8ec3
      port map (
        a => tmp_a,
        clk => clk,
        ce => internal_ce,
        sclr => internal_clr,
        p => tmp_p,
        b => tmp_b
      );
  end generate;
  latency_gt_0: if (extra_registers > 0) generate
    reg: synth_reg
      generic map (
        width => p_width,
        latency => extra_registers
      )
      port map (
        i => conv_p,
        ce => internal_ce,
        clr => internal_clr,
        clk => clk,
        o => p
      );
  end generate;
  latency_eq_0: if (extra_registers = 0) generate
    p <= conv_p;
  end generate;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_7a2906d528 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_7a2906d528;


architecture behavior of relational_7a2906d528 is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal result_18_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_18_3_rel <= a_1_31 > b_1_34;
  op <= boolean_to_vector(result_18_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_7a7af7b80d is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_7a7af7b80d;


architecture behavior of relational_7a7af7b80d is
  signal a_1_31: unsigned((16 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_d5afcb9866 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_d5afcb9866;


architecture behavior of constant_d5afcb9866 is
begin
  op <= "00000000000011110011001100110011";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_32150454cb is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_32150454cb;


architecture behavior of constant_32150454cb is
begin
  op <= "1111111111111111";
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use work.conv_pkg.all;
entity xladdsub_IpSDKSebesegEsPozicio is
  generic (
    core_name0: string := "";
    a_width: integer := 16;
    a_bin_pt: integer := 4;
    a_arith: integer := xlUnsigned;
    c_in_width: integer := 16;
    c_in_bin_pt: integer := 4;
    c_in_arith: integer := xlUnsigned;
    c_out_width: integer := 16;
    c_out_bin_pt: integer := 4;
    c_out_arith: integer := xlUnsigned;
    b_width: integer := 8;
    b_bin_pt: integer := 2;
    b_arith: integer := xlUnsigned;
    s_width: integer := 17;
    s_bin_pt: integer := 4;
    s_arith: integer := xlUnsigned;
    rst_width: integer := 1;
    rst_bin_pt: integer := 0;
    rst_arith: integer := xlUnsigned;
    en_width: integer := 1;
    en_bin_pt: integer := 0;
    en_arith: integer := xlUnsigned;
    full_s_width: integer := 17;
    full_s_arith: integer := xlUnsigned;
    mode: integer := xlAddMode;
    extra_registers: integer := 0;
    latency: integer := 0;
    quantization: integer := xlTruncate;
    overflow: integer := xlWrap;
    c_latency: integer := 0;
    c_output_width: integer := 17;
    c_has_c_in : integer := 0;
    c_has_c_out : integer := 0
  );
  port (
    a: in std_logic_vector(a_width - 1 downto 0);
    b: in std_logic_vector(b_width - 1 downto 0);
    c_in : in std_logic_vector (0 downto 0) := "0";
    ce: in std_logic;
    clr: in std_logic := '0';
    clk: in std_logic;
    rst: in std_logic_vector(rst_width - 1 downto 0) := "0";
    en: in std_logic_vector(en_width - 1 downto 0) := "1";
    c_out : out std_logic_vector (0 downto 0);
    s: out std_logic_vector(s_width - 1 downto 0)
  );
end xladdsub_IpSDKSebesegEsPozicio;
architecture behavior of xladdsub_IpSDKSebesegEsPozicio is
  component synth_reg
    generic (
      width: integer := 16;
      latency: integer := 5
    );
    port (
      i: in std_logic_vector(width - 1 downto 0);
      ce: in std_logic;
      clr: in std_logic;
      clk: in std_logic;
      o: out std_logic_vector(width - 1 downto 0)
    );
  end component;
  function format_input(inp: std_logic_vector; old_width, delta, new_arith,
                        new_width: integer)
    return std_logic_vector
  is
    variable vec: std_logic_vector(old_width-1 downto 0);
    variable padded_inp: std_logic_vector((old_width + delta)-1  downto 0);
    variable result: std_logic_vector(new_width-1 downto 0);
  begin
    vec := inp;
    if (delta > 0) then
      padded_inp := pad_LSB(vec, old_width+delta);
      result := extend_MSB(padded_inp, new_width, new_arith);
    else
      result := extend_MSB(vec, new_width, new_arith);
    end if;
    return result;
  end;
  constant full_s_bin_pt: integer := fractional_bits(a_bin_pt, b_bin_pt);
  constant full_a_width: integer := full_s_width;
  constant full_b_width: integer := full_s_width;
  signal full_a: std_logic_vector(full_a_width - 1 downto 0);
  signal full_b: std_logic_vector(full_b_width - 1 downto 0);
  signal core_s: std_logic_vector(full_s_width - 1 downto 0);
  signal conv_s: std_logic_vector(s_width - 1 downto 0);
  signal temp_cout : std_logic;
  signal internal_clr: std_logic;
  signal internal_ce: std_logic;
  signal extra_reg_ce: std_logic;
  signal override: std_logic;
  signal logic1: std_logic_vector(0 downto 0);
  component addsb_11_0_09a98e96b9130e03
    port (
          a: in std_logic_vector(17 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0)
    );
  end component;
  component addsb_11_0_178ba6eaed72af2d
    port (
          a: in std_logic_vector(17 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(17 - 1 downto 0)
    );
  end component;
  component addsb_11_0_40c59820e74e5c61
    port (
          a: in std_logic_vector(18 - 1 downto 0);
    s: out std_logic_vector(c_output_width - 1 downto 0);
    b: in std_logic_vector(18 - 1 downto 0)
    );
  end component;
begin
  internal_clr <= (clr or (rst(0))) and ce;
  internal_ce <= ce and en(0);
  logic1(0) <= '1';
  addsub_process: process (a, b, core_s)
  begin
    full_a <= format_input (a, a_width, b_bin_pt - a_bin_pt, a_arith,
                            full_a_width);
    full_b <= format_input (b, b_width, a_bin_pt - b_bin_pt, b_arith,
                            full_b_width);
    conv_s <= convert_type (core_s, full_s_width, full_s_bin_pt, full_s_arith,
                            s_width, s_bin_pt, s_arith, quantization, overflow);
  end process addsub_process;

  comp0: if ((core_name0 = "addsb_11_0_09a98e96b9130e03")) generate
    core_instance0: addsb_11_0_09a98e96b9130e03
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp1: if ((core_name0 = "addsb_11_0_178ba6eaed72af2d")) generate
    core_instance1: addsb_11_0_178ba6eaed72af2d
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  comp2: if ((core_name0 = "addsb_11_0_40c59820e74e5c61")) generate
    core_instance2: addsb_11_0_40c59820e74e5c61
      port map (
         a => full_a,
         s => core_s,
         b => full_b
      );
  end generate;
  latency_test: if (extra_registers > 0) generate
      override_test: if (c_latency > 1) generate
       override_pipe: synth_reg
          generic map (
            width => 1,
            latency => c_latency
          )
          port map (
            i => logic1,
            ce => internal_ce,
            clr => internal_clr,
            clk => clk,
            o(0) => override);
       extra_reg_ce <= ce and en(0) and override;
      end generate override_test;
      no_override: if ((c_latency = 0) or (c_latency = 1)) generate
       extra_reg_ce <= ce and en(0);
      end generate no_override;
      extra_reg: synth_reg
        generic map (
          width => s_width,
          latency => extra_registers
        )
        port map (
          i => conv_s,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => s
        );
      cout_test: if (c_has_c_out = 1) generate
      c_out_extra_reg: synth_reg
        generic map (
          width => 1,
          latency => extra_registers
        )
        port map (
          i(0) => temp_cout,
          ce => extra_reg_ce,
          clr => internal_clr,
          clk => clk,
          o => c_out
        );
      end generate cout_test;
  end generate;
  latency_s: if ((latency = 0) or (extra_registers = 0)) generate
    s <= conv_s;
  end generate latency_s;
  latency0: if (((latency = 0) or (extra_registers = 0)) and
                 (c_has_c_out = 1)) generate
    c_out(0) <= temp_cout;
  end generate latency0;
  tie_dangling_cout: if (c_has_c_out = 0) generate
    c_out <= "0";
  end generate tie_dangling_cout;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_b142b1358a is
  port (
    b : in std_logic_vector((1 - 1) downto 0);
    c : in std_logic_vector((1 - 1) downto 0);
    a : out std_logic_vector((2 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_b142b1358a;


architecture behavior of bitbasher_b142b1358a is
  signal b_1_26: boolean;
  signal c_1_29: boolean;
  signal fulla_5_1_concat: unsigned((2 - 1) downto 0);
begin
  b_1_26 <= ((b) = "1");
  c_1_29 <= ((c) = "1");
  fulla_5_1_concat <= std_logic_vector_to_unsigned(boolean_to_vector(b_1_26) & boolean_to_vector(c_1_29));
  a <= unsigned_to_std_logic_vector(fulla_5_1_concat);
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity convert_func_call is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        result : out std_logic_vector (dout_width-1 downto 0));
end convert_func_call;
architecture behavior of convert_func_call is
begin
    result <= convert_type(din, din_width, din_bin_pt, din_arith,
                           dout_width, dout_bin_pt, dout_arith,
                           quantization, overflow);
end behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlconvert is
    generic (
        din_width    : integer := 16;
        din_bin_pt   : integer := 4;
        din_arith    : integer := xlUnsigned;
        dout_width   : integer := 8;
        dout_bin_pt  : integer := 2;
        dout_arith   : integer := xlUnsigned;
        en_width     : integer := 1;
        en_bin_pt    : integer := 0;
        en_arith     : integer := xlUnsigned;
        bool_conversion : integer :=0;
        latency      : integer := 0;
        quantization : integer := xlTruncate;
        overflow     : integer := xlWrap);
    port (
        din : in std_logic_vector (din_width-1 downto 0);
        en  : in std_logic_vector (en_width-1 downto 0);
        ce  : in std_logic;
        clr : in std_logic;
        clk : in std_logic;
        dout : out std_logic_vector (dout_width-1 downto 0));
end xlconvert;
architecture behavior of xlconvert is
    component synth_reg
        generic (width       : integer;
                 latency     : integer);
        port (i       : in std_logic_vector(width-1 downto 0);
              ce      : in std_logic;
              clr     : in std_logic;
              clk     : in std_logic;
              o       : out std_logic_vector(width-1 downto 0));
    end component;
    component convert_func_call
        generic (
            din_width    : integer := 16;
            din_bin_pt   : integer := 4;
            din_arith    : integer := xlUnsigned;
            dout_width   : integer := 8;
            dout_bin_pt  : integer := 2;
            dout_arith   : integer := xlUnsigned;
            quantization : integer := xlTruncate;
            overflow     : integer := xlWrap);
        port (
            din : in std_logic_vector (din_width-1 downto 0);
            result : out std_logic_vector (dout_width-1 downto 0));
    end component;
    -- synopsys translate_off
    -- synopsys translate_on
    signal result : std_logic_vector(dout_width-1 downto 0);
    signal internal_ce : std_logic;
begin
    -- synopsys translate_off
    -- synopsys translate_on
    internal_ce <= ce and en(0);

    bool_conversion_generate : if (bool_conversion = 1)
    generate
      result <= din;
    end generate;
    std_conversion_generate : if (bool_conversion = 0)
    generate
      convert : convert_func_call
        generic map (
          din_width   => din_width,
          din_bin_pt  => din_bin_pt,
          din_arith   => din_arith,
          dout_width  => dout_width,
          dout_bin_pt => dout_bin_pt,
          dout_arith  => dout_arith,
          quantization => quantization,
          overflow     => overflow)
        port map (
          din => din,
          result => result);
    end generate;
    latency_test : if (latency > 0) generate
        reg : synth_reg
            generic map (
              width => dout_width,
              latency => latency
            )
            port map (
              i => result,
              ce => internal_ce,
              clr => clr,
              clk => clk,
              o => dout
            );
    end generate;
    latency0 : if (latency = 0)
    generate
        dout <= result;
    end generate latency0;
end  behavior;

-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xldelay is
   generic(width        : integer := -1;
           latency      : integer := -1;
           reg_retiming : integer :=  0;
           reset        : integer :=  0);
   port(d       : in std_logic_vector (width-1 downto 0);
        ce      : in std_logic;
        clk     : in std_logic;
        en      : in std_logic;
        rst     : in std_logic;
        q       : out std_logic_vector (width-1 downto 0));
end xldelay;
architecture behavior of xldelay is
   component synth_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   component synth_reg_reg
      generic (width       : integer;
               latency     : integer);
      port (i       : in std_logic_vector(width-1 downto 0);
            ce      : in std_logic;
            clr     : in std_logic;
            clk     : in std_logic;
            o       : out std_logic_vector(width-1 downto 0));
   end component;
   signal internal_ce  : std_logic;
begin
   internal_ce  <= ce and en;
   srl_delay: if ((reg_retiming = 0) and (reset = 0)) or (latency < 1) generate
     synth_reg_srl_inst : synth_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => '0',
         clk => clk,
         o   => q);
   end generate srl_delay;
   reg_delay: if ((reg_retiming = 1) or (reset = 1)) and (latency >= 1) generate
     synth_reg_reg_inst : synth_reg_reg
       generic map (
         width   => width,
         latency => latency)
       port map (
         i   => d,
         ce  => internal_ce,
         clr => rst,
         clk => clk,
         o   => q);
   end generate reg_delay;
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_5898baed89 is
  port (
    ip : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_5898baed89;


architecture behavior of inverter_5898baed89 is
  signal ip_1_26: signed((17 - 1) downto 0);
  type array_type_op_mem_22_20 is array (0 to (1 - 1)) of signed((17 - 1) downto 0);
  signal op_mem_22_20: array_type_op_mem_22_20 := (
    0 => "00000000000000000");
  signal op_mem_22_20_front_din: signed((17 - 1) downto 0);
  signal op_mem_22_20_back: signed((17 - 1) downto 0);
  signal op_mem_22_20_push_front_pop_back_en: std_logic;
  signal internal_ip_12_1_bitnot: signed((17 - 1) downto 0);
begin
  ip_1_26 <= std_logic_vector_to_signed(ip);
  op_mem_22_20_back <= op_mem_22_20(0);
  proc_op_mem_22_20: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_signed(not signed_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= signed_to_std_logic_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_e5b38cca3b is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_e5b38cca3b;


architecture behavior of inverter_e5b38cca3b is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= boolean_to_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_65a0e0a5b3 is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((17 - 1) downto 0);
    d1 : in std_logic_vector((17 - 1) downto 0);
    d2 : in std_logic_vector((17 - 1) downto 0);
    d3 : in std_logic_vector((17 - 1) downto 0);
    y : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_65a0e0a5b3;


architecture behavior of mux_65a0e0a5b3 is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((17 - 1) downto 0);
  signal d1_1_27: std_logic_vector((17 - 1) downto 0);
  signal d2_1_30: std_logic_vector((17 - 1) downto 0);
  signal d3_1_33: std_logic_vector((17 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((17 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  d3_1_33 <= d3;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, d3_1_33, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when "10" =>
        unregy_join_6_1 <= d2_1_30;
      when others =>
        unregy_join_6_1 <= d3_1_33;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_a161f3a75c is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((17 - 1) downto 0);
    d1 : in std_logic_vector((17 - 1) downto 0);
    y : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_a161f3a75c;


architecture behavior of mux_a161f3a75c is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((17 - 1) downto 0);
  signal d1_1_27: std_logic_vector((17 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((17 - 1) downto 0);
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
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;
entity xlregister is
   generic (d_width          : integer := 5;
            init_value       : bit_vector := b"00");
   port (d   : in std_logic_vector (d_width-1 downto 0);
         rst : in std_logic_vector(0 downto 0) := "0";
         en  : in std_logic_vector(0 downto 0) := "1";
         ce  : in std_logic;
         clk : in std_logic;
         q   : out std_logic_vector (d_width-1 downto 0));
end xlregister;
architecture behavior of xlregister is
   component synth_reg_w_init
      generic (width      : integer;
               init_index : integer;
               init_value : bit_vector;
               latency    : integer);
      port (i   : in std_logic_vector(width-1 downto 0);
            ce  : in std_logic;
            clr : in std_logic;
            clk : in std_logic;
            o   : out std_logic_vector(width-1 downto 0));
   end component;
   -- synopsys translate_off
   signal real_d, real_q           : real;
   -- synopsys translate_on
   signal internal_clr             : std_logic;
   signal internal_ce              : std_logic;
begin
   internal_clr <= rst(0) and ce;
   internal_ce  <= en(0) and ce;
   synth_reg_inst : synth_reg_w_init
      generic map (width      => d_width,
                   init_index => 2,
                   init_value => init_value,
                   latency    => 1)
      port map (i   => d,
                ce  => internal_ce,
                clr => internal_clr,
                clk => clk,
                o   => q);
end architecture behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5568c80e3e is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    b : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5568c80e3e;


architecture behavior of relational_5568c80e3e is
  signal a_1_31: signed((17 - 1) downto 0);
  signal b_1_34: signed((17 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  result_22_3_rel <= a_1_31 >= b_1_34;
  op <= boolean_to_vector(result_22_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5ef1f4e573 is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    b : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5ef1f4e573;


architecture behavior of relational_5ef1f4e573 is
  signal a_1_31: signed((17 - 1) downto 0);
  signal b_1_34: signed((17 - 1) downto 0);
  signal result_20_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  result_20_3_rel <= a_1_31 <= b_1_34;
  op <= boolean_to_vector(result_20_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_dc0a74902c is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    b : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_dc0a74902c;


architecture behavior of relational_dc0a74902c is
  signal a_1_31: signed((17 - 1) downto 0);
  signal b_1_34: unsigned((16 - 1) downto 0);
  signal cast_22_17: signed((17 - 1) downto 0);
  signal result_22_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  cast_22_17 <= u2s_cast(b_1_34, 0, 17, 0);
  result_22_3_rel <= a_1_31 >= cast_22_17;
  op <= boolean_to_vector(result_22_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_5153393142 is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    b : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_5153393142;


architecture behavior of relational_5153393142 is
  signal a_1_31: signed((17 - 1) downto 0);
  signal b_1_34: signed((17 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_a54b8994ea is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    b : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_a54b8994ea;


architecture behavior of relational_a54b8994ea is
  signal a_1_31: signed((17 - 1) downto 0);
  signal b_1_34: signed((17 - 1) downto 0);
  signal result_16_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  result_16_3_rel <= a_1_31 < b_1_34;
  op <= boolean_to_vector(result_16_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a803a2dbbb is
  port (
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a803a2dbbb;


architecture behavior of constant_a803a2dbbb is
begin
  op <= "00000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_7044437b9b is
  port (
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_7044437b9b;


architecture behavior of constant_7044437b9b is
begin
  op <= "11111111111111111";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_73351a0d84 is
  port (
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_73351a0d84;


architecture behavior of constant_73351a0d84 is
begin
  op <= "01111101000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_a28586f773 is
  port (
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_a28586f773;


architecture behavior of constant_a28586f773 is
begin
  op <= "10000011000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_017d9de1ab is
  port (
    op : out std_logic_vector((17 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_017d9de1ab;


architecture behavior of constant_017d9de1ab is
begin
  op <= "00000000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_ec17798a35 is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    b : in std_logic_vector((17 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_ec17798a35;


architecture behavior of relational_ec17798a35 is
  signal a_1_31: signed((17 - 1) downto 0);
  signal b_1_34: signed((17 - 1) downto 0);
  type array_type_op_mem_32_22 is array (0 to (2 - 1)) of boolean;
  signal op_mem_32_22: array_type_op_mem_32_22 := (
    false,
    false);
  signal op_mem_32_22_front_din: boolean;
  signal op_mem_32_22_back: boolean;
  signal op_mem_32_22_push_front_pop_back_en: std_logic;
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_signed(a);
  b_1_34 <= std_logic_vector_to_signed(b);
  op_mem_32_22_back <= op_mem_32_22(1);
  proc_op_mem_32_22: process (clk)
  is
    variable i: integer;
  begin
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_32_22_push_front_pop_back_en = '1')) then
        for i in 1 downto 1 loop 
          op_mem_32_22(i) <= op_mem_32_22(i-1);
        end loop;
        op_mem_32_22(0) <= op_mem_32_22_front_din;
      end if;
    end if;
  end process proc_op_mem_32_22;
  result_12_3_rel <= a_1_31 = b_1_34;
  op_mem_32_22_front_din <= result_12_3_rel;
  op_mem_32_22_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_32_22_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_1ca63a13a1 is
  port (
    ip : in std_logic_vector((16 - 1) downto 0);
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_1ca63a13a1;


architecture behavior of inverter_1ca63a13a1 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= std_logic_vector_to_unsigned(not unsigned_to_std_logic_vector(ip_1_26));
  op_mem_22_20_push_front_pop_back_en <= '0';
  op <= unsigned_to_std_logic_vector(internal_ip_12_1_bitnot);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_2c45f290ed is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_2c45f290ed;


architecture behavior of mux_2c45f290ed is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_190a6d2a1a is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_190a6d2a1a;


architecture behavior of constant_190a6d2a1a is
begin
  op <= "0000000000000001";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_80f90b97d0 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_80f90b97d0;


architecture behavior of logical_80f90b97d0 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 and d1_1_27;
  y <= std_logic_to_vector(fully_2_1_bit);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_cde5f13da6 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_cde5f13da6;


architecture behavior of mux_cde5f13da6 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic;
  signal unregy_13_5_convert: std_logic_vector((1 - 1) downto 0);
begin
  sel_1_20 <= sel(0);
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  sel_internal_2_1_convert <= cast(std_logic_to_vector(sel_1_20), 0, 1, 0, xlUnsigned);
  proc_switch_6_1: process (d0_1_24, d1_1_27, sel_internal_2_1_convert)
  is
  begin
    case sel_internal_2_1_convert is 
      when "0" =>
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  unregy_13_5_convert <= cast(std_logic_to_vector(unregy_join_6_1), 0, 1, 0, xlUnsigned);
  y <= unregy_13_5_convert;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_7e62e7628d is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    dir : out std_logic_vector((1 - 1) downto 0);
    val : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_7e62e7628d;


architecture behavior of bitbasher_7e62e7628d is
  signal a_1_32: signed((17 - 1) downto 0);
  signal slice_5_40: unsigned((1 - 1) downto 0);
  signal concat_5_31: unsigned((1 - 1) downto 0);
  signal fulldir_5_1_concat: unsigned((1 - 1) downto 0);
  signal slice_6_30: unsigned((16 - 1) downto 0);
  signal fullval_6_1_concat: unsigned((16 - 1) downto 0);
  signal val_13_1_force: signed((16 - 1) downto 0);
begin
  a_1_32 <= std_logic_vector_to_signed(a);
  slice_5_40 <= s2u_slice(a_1_32, 16, 16);
  concat_5_31 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_40));
  fulldir_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_5_31));
  slice_6_30 <= s2u_slice(a_1_32, 15, 0);
  fullval_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_30));
  val_13_1_force <= unsigned_to_signed(fullval_6_1_concat);
  dir <= unsigned_to_std_logic_vector(fulldir_5_1_concat);
  val <= signed_to_std_logic_vector(val_13_1_force);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_6293007044 is
  port (
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_6293007044;


architecture behavior of constant_6293007044 is
begin
  op <= "1";
end behavior;


-------------------------------------------------------------------
-- System Generator version 14.6 VHDL source file.
--
-- Copyright(C) 2013 by Xilinx, Inc.  All rights reserved.  This
-- text/file contains proprietary, confidential information of Xilinx,
-- Inc., is distributed under license from Xilinx, Inc., and may be used,
-- copied and/or disclosed only pursuant to the terms of a valid license
-- agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
-- this text/file solely for design, simulation, implementation and
-- creation of design files limited to Xilinx devices or technologies.
-- Use with non-Xilinx devices or technologies is expressly prohibited
-- and immediately terminates your license unless covered by a separate
-- agreement.
--
-- Xilinx is providing this design, code, or information "as is" solely
-- for use in developing programs and solutions for Xilinx devices.  By
-- providing this design, code, or information as one possible
-- implementation of this feature, application or standard, Xilinx is
-- making no representation that this implementation is free from any
-- claims of infringement.  You are responsible for obtaining any rights
-- you may require for your implementation.  Xilinx expressly disclaims
-- any warranty whatsoever with respect to the adequacy of the
-- implementation, including but not limited to warranties of
-- merchantability or fitness for a particular purpose.
--
-- Xilinx products are not intended for use in life support appliances,
-- devices, or systems.  Use in such applications is expressly prohibited.
--
-- Any modifications that are made to the source code are done at the user's
-- sole risk and will be unsupported.
--
-- This copyright and support notice must be retained as part of this
-- text at all times.  (c) Copyright 1995-2013 Xilinx, Inc.  All rights
-- reserved.
-------------------------------------------------------------------
-- synopsys translate_off
library XilinxCoreLib;
-- synopsys translate_on
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;
entity xlcounter_limit_IpSDKSebesegEsPozicio is
  generic (
    core_name0: string := "";
    op_width: integer := 5;
    op_arith: integer := xlSigned;
    cnt_63_48: integer:= 0;
    cnt_47_32: integer:= 0;
    cnt_31_16: integer:= 0;
    cnt_15_0: integer:= 0;
    count_limited: integer := 0
  );
  port (
    ce: in std_logic;
    clr: in std_logic;
    clk: in std_logic;
    op: out std_logic_vector(op_width - 1 downto 0);
    up: in std_logic_vector(0 downto 0) := (others => '0');
    en: in std_logic_vector(0 downto 0);
    rst: in std_logic_vector(0 downto 0)
  );
end xlcounter_limit_IpSDKSebesegEsPozicio ;
architecture behavior of xlcounter_limit_IpSDKSebesegEsPozicio is
  signal high_cnt_to: std_logic_vector(31 downto 0);
  signal low_cnt_to: std_logic_vector(31 downto 0);
  signal cnt_to: std_logic_vector(63 downto 0);
  signal core_sinit, op_thresh0, core_ce: std_logic;
  signal rst_overrides_en: std_logic;
  signal op_net: std_logic_vector(op_width - 1 downto 0);
  -- synopsys translate_off
  signal real_op : real;
   -- synopsys translate_on
  function equals(op, cnt_to : std_logic_vector; width, arith : integer)
    return std_logic
  is
    variable signed_op, signed_cnt_to : signed (width - 1 downto 0);
    variable unsigned_op, unsigned_cnt_to : unsigned (width - 1 downto 0);
    variable result : std_logic;
  begin
    -- synopsys translate_off
    if ((is_XorU(op)) or (is_XorU(cnt_to)) ) then
      result := '0';
      return result;
    end if;
    -- synopsys translate_on
    if (op = cnt_to) then
      result := '1';
    else
      result := '0';
    end if;
    return result;
  end;
  component cntr_11_0_cee71699703bac4e
    port (
      clk: in std_logic;
      ce: in std_logic;
      SINIT: in std_logic;
      q: out std_logic_vector(op_width - 1 downto 0)
    );
  end component;

  attribute syn_black_box of cntr_11_0_cee71699703bac4e:
    component is true;
  attribute fpga_dont_touch of cntr_11_0_cee71699703bac4e:
    component is "true";
  attribute box_type of cntr_11_0_cee71699703bac4e:
    component  is "black_box";
-- synopsys translate_off
  constant zeroVec : std_logic_vector(op_width - 1 downto 0) := (others => '0');
  constant oneVec : std_logic_vector(op_width - 1 downto 0) := (others => '1');
  constant zeroStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(zeroVec);
  constant oneStr : string(1 to op_width) :=
    std_logic_vector_to_bin_string(oneVec);
-- synopsys translate_on
begin
  -- synopsys translate_off
  -- synopsys translate_on
  cnt_to(63 downto 48) <= integer_to_std_logic_vector(cnt_63_48, 16, op_arith);
  cnt_to(47 downto 32) <= integer_to_std_logic_vector(cnt_47_32, 16, op_arith);
  cnt_to(31 downto 16) <= integer_to_std_logic_vector(cnt_31_16, 16, op_arith);
  cnt_to(15 downto 0) <= integer_to_std_logic_vector(cnt_15_0, 16, op_arith);
  op <= op_net;
  core_ce <= ce and en(0);
  rst_overrides_en <= rst(0) or en(0);
  limit : if (count_limited = 1) generate
    eq_cnt_to : process (op_net, cnt_to)
    begin
      op_thresh0 <= equals(op_net, cnt_to(op_width - 1 downto 0),
                     op_width, op_arith);
    end process;
    core_sinit <= (op_thresh0 or clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  no_limit : if (count_limited = 0) generate
    core_sinit <= (clr or rst(0)) and ce and rst_overrides_en;
  end generate;
  comp0: if ((core_name0 = "cntr_11_0_cee71699703bac4e")) generate
    core_instance0: cntr_11_0_cee71699703bac4e
      port map (
        clk => clk,
        ce => core_ce,
        SINIT => core_sinit,
        q => op_net
      );
  end generate;
end  behavior;
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity inverter_6844eee868 is
  port (
    ip : in std_logic_vector((1 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end inverter_6844eee868;


architecture behavior of inverter_6844eee868 is
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
    if (clk'event and (clk = '1')) then
      if ((ce = '1') and (op_mem_22_20_push_front_pop_back_en = '1')) then
        op_mem_22_20(0) <= op_mem_22_20_front_din;
      end if;
    end if;
  end process proc_op_mem_22_20;
  internal_ip_12_1_bitnot <= ((not boolean_to_vector(ip_1_26)) = "1");
  op_mem_22_20_front_din <= internal_ip_12_1_bitnot;
  op_mem_22_20_push_front_pop_back_en <= '1';
  op <= boolean_to_vector(op_mem_22_20_back);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_98fb5a53eb is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    d2 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_98fb5a53eb;


architecture behavior of mux_98fb5a53eb is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  signal d2_1_30: std_logic_vector((16 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= d0_1_24;
      when "01" =>
        unregy_join_6_1 <= d1_1_27;
      when others =>
        unregy_join_6_1 <= d2_1_30;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_9f8577029e is
  port (
    sel : in std_logic_vector((2 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    d2 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_9f8577029e;


architecture behavior of mux_9f8577029e is
  signal sel_1_20: std_logic_vector((2 - 1) downto 0);
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  signal d2_1_30: std_logic_vector((16 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((17 - 1) downto 0);
  signal cast_unregy_15_5_convert: std_logic_vector((16 - 1) downto 0);
begin
  sel_1_20 <= sel;
  d0_1_24 <= d0;
  d1_1_27 <= d1;
  d2_1_30 <= d2;
  proc_switch_6_1: process (d0_1_24, d1_1_27, d2_1_30, sel_1_20)
  is
  begin
    case sel_1_20 is 
      when "00" =>
        unregy_join_6_1 <= cast(d0_1_24, 0, 17, 0, xlSigned);
      when "01" =>
        unregy_join_6_1 <= cast(d1_1_27, 0, 17, 0, xlSigned);
      when others =>
        unregy_join_6_1 <= cast(d2_1_30, 0, 17, 0, xlUnsigned);
    end case;
  end process proc_switch_6_1;
  cast_unregy_15_5_convert <= cast(unregy_join_6_1, 0, 16, 0, xlSigned);
  y <= cast_unregy_15_5_convert;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_16ed609544 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_16ed609544;


architecture behavior of constant_16ed609544 is
begin
  op <= "0011110011001101";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity logical_a670ce0bc3 is
  port (
    d0 : in std_logic_vector((1 - 1) downto 0);
    d1 : in std_logic_vector((1 - 1) downto 0);
    y : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end logical_a670ce0bc3;


architecture behavior of logical_a670ce0bc3 is
  signal d0_1_24: std_logic;
  signal d1_1_27: std_logic;
  signal fully_2_1_bit: std_logic;
  signal unregy_3_1_convert: std_logic_vector((1 - 1) downto 0);
begin
  d0_1_24 <= d0(0);
  d1_1_27 <= d1(0);
  fully_2_1_bit <= d0_1_24 or d1_1_27;
  unregy_3_1_convert <= cast(std_logic_to_vector(fully_2_1_bit), 0, 1, 0, xlUnsigned);
  y <= unregy_3_1_convert;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_b213411135 is
  port (
    op : out std_logic_vector((32 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_b213411135;


architecture behavior of constant_b213411135 is
begin
  op <= "00000000000000000000000000010000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity relational_3ffd1d0a40 is
  port (
    a : in std_logic_vector((32 - 1) downto 0);
    b : in std_logic_vector((32 - 1) downto 0);
    op : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end relational_3ffd1d0a40;


architecture behavior of relational_3ffd1d0a40 is
  signal a_1_31: unsigned((32 - 1) downto 0);
  signal b_1_34: unsigned((32 - 1) downto 0);
  signal result_12_3_rel: boolean;
begin
  a_1_31 <= std_logic_vector_to_unsigned(a);
  b_1_34 <= std_logic_vector_to_unsigned(b);
  result_12_3_rel <= a_1_31 = b_1_34;
  op <= boolean_to_vector(result_12_3_rel);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_75b6572827 is
  port (
    a : in std_logic_vector((17 - 1) downto 0);
    dir : out std_logic_vector((1 - 1) downto 0);
    val : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_75b6572827;


architecture behavior of bitbasher_75b6572827 is
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
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity constant_9f5572ba51 is
  port (
    op : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end constant_9f5572ba51;


architecture behavior of constant_9f5572ba51 is
begin
  op <= "0000000000000000";
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity mux_a54904b290 is
  port (
    sel : in std_logic_vector((1 - 1) downto 0);
    d0 : in std_logic_vector((16 - 1) downto 0);
    d1 : in std_logic_vector((16 - 1) downto 0);
    y : out std_logic_vector((16 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end mux_a54904b290;


architecture behavior of mux_a54904b290 is
  signal sel_1_20: std_logic;
  signal d0_1_24: std_logic_vector((16 - 1) downto 0);
  signal d1_1_27: std_logic_vector((16 - 1) downto 0);
  signal sel_internal_2_1_convert: std_logic_vector((1 - 1) downto 0);
  signal unregy_join_6_1: std_logic_vector((16 - 1) downto 0);
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
        unregy_join_6_1 <= d0_1_24;
      when others =>
        unregy_join_6_1 <= d1_1_27;
    end case;
  end process proc_switch_6_1;
  y <= unregy_join_6_1;
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_ce88ef0be9 is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    a0 : out std_logic_vector((1 - 1) downto 0);
    a1 : out std_logic_vector((1 - 1) downto 0);
    a2 : out std_logic_vector((1 - 1) downto 0);
    a3 : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_ce88ef0be9;


architecture behavior of bitbasher_ce88ef0be9 is
  signal a_1_36: unsigned((16 - 1) downto 0);
  signal slice_5_39: unsigned((1 - 1) downto 0);
  signal concat_5_30: unsigned((1 - 1) downto 0);
  signal fulla0_5_1_concat: unsigned((1 - 1) downto 0);
  signal slice_6_39: unsigned((1 - 1) downto 0);
  signal concat_6_30: unsigned((1 - 1) downto 0);
  signal fulla1_6_1_concat: unsigned((1 - 1) downto 0);
  signal slice_7_39: unsigned((1 - 1) downto 0);
  signal concat_7_30: unsigned((1 - 1) downto 0);
  signal fulla2_7_1_concat: unsigned((1 - 1) downto 0);
  signal slice_8_39: unsigned((1 - 1) downto 0);
  signal concat_8_30: unsigned((1 - 1) downto 0);
  signal fulla3_8_1_concat: unsigned((1 - 1) downto 0);
begin
  a_1_36 <= std_logic_vector_to_unsigned(a);
  slice_5_39 <= u2u_slice(a_1_36, 0, 0);
  concat_5_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_39));
  fulla0_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_5_30));
  slice_6_39 <= u2u_slice(a_1_36, 1, 1);
  concat_6_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_39));
  fulla1_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_6_30));
  slice_7_39 <= u2u_slice(a_1_36, 2, 2);
  concat_7_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_39));
  fulla2_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_7_30));
  slice_8_39 <= u2u_slice(a_1_36, 3, 3);
  concat_8_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_39));
  fulla3_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_8_30));
  a0 <= unsigned_to_std_logic_vector(fulla0_5_1_concat);
  a1 <= unsigned_to_std_logic_vector(fulla1_6_1_concat);
  a2 <= unsigned_to_std_logic_vector(fulla2_7_1_concat);
  a3 <= unsigned_to_std_logic_vector(fulla3_8_1_concat);
end behavior;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.conv_pkg.all;

entity bitbasher_ba9332815c is
  port (
    a : in std_logic_vector((16 - 1) downto 0);
    a4 : out std_logic_vector((1 - 1) downto 0);
    a5 : out std_logic_vector((1 - 1) downto 0);
    a6 : out std_logic_vector((1 - 1) downto 0);
    a7 : out std_logic_vector((1 - 1) downto 0);
    clk : in std_logic;
    ce : in std_logic;
    clr : in std_logic);
end bitbasher_ba9332815c;


architecture behavior of bitbasher_ba9332815c is
  signal a_1_36: unsigned((16 - 1) downto 0);
  signal slice_5_39: unsigned((1 - 1) downto 0);
  signal concat_5_30: unsigned((1 - 1) downto 0);
  signal fulla4_5_1_concat: unsigned((1 - 1) downto 0);
  signal slice_6_39: unsigned((1 - 1) downto 0);
  signal concat_6_30: unsigned((1 - 1) downto 0);
  signal fulla5_6_1_concat: unsigned((1 - 1) downto 0);
  signal slice_7_39: unsigned((1 - 1) downto 0);
  signal concat_7_30: unsigned((1 - 1) downto 0);
  signal fulla6_7_1_concat: unsigned((1 - 1) downto 0);
  signal slice_8_39: unsigned((1 - 1) downto 0);
  signal concat_8_30: unsigned((1 - 1) downto 0);
  signal fulla7_8_1_concat: unsigned((1 - 1) downto 0);
begin
  a_1_36 <= std_logic_vector_to_unsigned(a);
  slice_5_39 <= u2u_slice(a_1_36, 4, 4);
  concat_5_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_5_39));
  fulla4_5_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_5_30));
  slice_6_39 <= u2u_slice(a_1_36, 5, 5);
  concat_6_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_6_39));
  fulla5_6_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_6_30));
  slice_7_39 <= u2u_slice(a_1_36, 6, 6);
  concat_7_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_7_39));
  fulla6_7_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_7_30));
  slice_8_39 <= u2u_slice(a_1_36, 7, 7);
  concat_8_30 <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(slice_8_39));
  fulla7_8_1_concat <= std_logic_vector_to_unsigned(unsigned_to_std_logic_vector(concat_8_30));
  a4 <= unsigned_to_std_logic_vector(fulla4_5_1_concat);
  a5 <= unsigned_to_std_logic_vector(fulla5_6_1_concat);
  a6 <= unsigned_to_std_logic_vector(fulla6_7_1_concat);
  a7 <= unsigned_to_std_logic_vector(fulla7_8_1_concat);
end behavior;

--------------------------------------------------------------------------------
-- Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 13.4
--  \   \         Application : sch2hdl
--  /   /         Filename : sch1.vhf
-- /___/   /\     Timestamp : 02/27/2012 15:54:24
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl Z:/allamvizsga/~AUT/testD/sch1.vhf -w Z:/allamvizsga/~AUT/testD/sch1.sch
--Design Name: sch1
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SensorIncModul is
   port ( 
	      QuadA  : in    std_logic; 
          QuadA2 : in    std_logic; 	  
          QuadB  : in    std_logic; 
          QuadB2 : in    std_logic;          
          DIR    : out   std_logic; 
          DIR2   : out   std_logic;           		  
          IMP    : out   std_logic; 
          IMP2   : out   std_logic 
          );
end SensorIncModul;

architecture BEHAVIORAL of SensorIncModul is
	
	component FDCE
   generic  ( INIT :bit := '0'); -- Initial value of register ('0' or '1')  
	 port (C   : in    std_logic; 
           CLR : in    std_logic; 
		   CE  : in    std_logic; 
           D   : in    std_logic; 
           Q   : out   std_logic);	
   end component;
   
   
signal quada_tagadott : std_logic;
signal quadb_tagadott : std_logic;
signal ad1_q : std_logic;
signal ad2_q : std_logic;
signal dir_a : std_logic;
signal imp_1 : std_logic;

signal quada_tagadott2 : std_logic;
signal quadb_tagadott2 : std_logic;
signal bd1_q : std_logic;
signal bd2_q : std_logic;
signal dir_b : std_logic;
signal imp_2 : std_logic;
	
begin
DIR<=dir_a;
IMP<=imp_1;
quada_tagadott<= not QuadA;
quadb_tagadott<= not QuadB;
imp_1<=ad1_q or ad2_q;


DIR2<=dir_b;
IMP2<=imp_2;
quada_tagadott2<= not QuadA2;
quadb_tagadott2<= not QuadB2;
imp_2<=bd1_q or bd2_q;


    a_kanalis_d1 : FDCE
      port map (C=>QuadB,
                CLR=>quada_tagadott,
					 CE=>'1',
                D=>QuadA,
                Q=>ad1_q);
					 
	a_kanalis_d2 : FDCE
      port map (C=>QuadA,
                CLR=>quadb_tagadott,
					 CE=>'1',
                D=>QuadB,
                Q=>ad2_q);
					 
	a_kanalis_d3 : FDCE
      port map (C=>QuadB,
                CLR=>'0',
					 CE=>'1',
                D=>QuadA,
                Q=>dir_a);
					 

	b_kanalis_d1 : FDCE
      port map (C=>QuadB2,
                CLR=>quada_tagadott2,
					 CE=>'1',
                D=>QuadA2,
                Q=>bd1_q);
					 
	b_kanalis_d2 : FDCE
      port map (C=>QuadA2,
                CLR=>quadb_tagadott2,
					 CE=>'1',
                D=>QuadB2,
                Q=>bd2_q);
					 
	b_kanalis_d3 : FDCE
      port map (C=>QuadB2,
                CLR=>'0',
					 CE=>'1',
                D=>QuadA2,
                Q=>dir_b);
   
end BEHAVIORAL;




library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/EDK Processor"

entity edk_processor_entity_22b9db8c44 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    from_register: in std_logic_vector(31 downto 0); 
    from_register1: in std_logic_vector(31 downto 0); 
    from_register2: in std_logic_vector(15 downto 0); 
    from_register3: in std_logic_vector(15 downto 0); 
    from_register4: in std_logic_vector(15 downto 0); 
    from_register5: in std_logic_vector(15 downto 0); 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    sg_plb_addrpref: in std_logic_vector(19 downto 0); 
    splb_rst: in std_logic; 
    constant5_x0: out std_logic; 
    plb_decode_x0: out std_logic; 
    plb_decode_x1: out std_logic; 
    plb_decode_x2: out std_logic; 
    plb_decode_x3: out std_logic; 
    plb_decode_x4: out std_logic_vector(31 downto 0); 
    plb_memmap_x0: out std_logic_vector(15 downto 0); 
    plb_memmap_x1: out std_logic; 
    plb_memmap_x10: out std_logic_vector(15 downto 0); 
    plb_memmap_x11: out std_logic; 
    plb_memmap_x12: out std_logic_vector(15 downto 0); 
    plb_memmap_x13: out std_logic; 
    plb_memmap_x14: out std_logic_vector(15 downto 0); 
    plb_memmap_x15: out std_logic; 
    plb_memmap_x16: out std_logic_vector(15 downto 0); 
    plb_memmap_x17: out std_logic; 
    plb_memmap_x18: out std_logic_vector(15 downto 0); 
    plb_memmap_x19: out std_logic; 
    plb_memmap_x2: out std_logic_vector(15 downto 0); 
    plb_memmap_x3: out std_logic; 
    plb_memmap_x4: out std_logic_vector(15 downto 0); 
    plb_memmap_x5: out std_logic; 
    plb_memmap_x6: out std_logic_vector(15 downto 0); 
    plb_memmap_x7: out std_logic; 
    plb_memmap_x8: out std_logic_vector(31 downto 0); 
    plb_memmap_x9: out std_logic
  );
end edk_processor_entity_22b9db8c44;

architecture structural of edk_processor_entity_22b9db8c44 is
  signal aktpozicio_dout_x0: std_logic_vector(15 downto 0);
  signal aktsebesseg_dout_x0: std_logic_vector(15 downto 0);
  signal bankaddr: std_logic_vector(1 downto 0);
  signal ce_1_sg_x0: std_logic;
  signal clk_1_sg_x0: std_logic;
  signal config_din_x0: std_logic_vector(15 downto 0);
  signal config_en_x0: std_logic;
  signal esebesseg_dout_x0: std_logic_vector(15 downto 0);
  signal linearaddr: std_logic_vector(7 downto 0);
  signal pidts_din_x0: std_logic_vector(31 downto 0);
  signal pidts_en_x0: std_logic;
  signal plb_abus_net_x0: std_logic_vector(31 downto 0);
  signal plb_pavalid_net_x0: std_logic;
  signal plb_rnw_net_x0: std_logic;
  signal plb_wrdbus_net_x0: std_logic_vector(31 downto 0);
  signal posref_din_x0: std_logic_vector(15 downto 0);
  signal posref_en_x0: std_logic;
  signal pwmfrek_din_x0: std_logic_vector(15 downto 0);
  signal pwmfrek_en_x0: std_logic;
  signal q0_din_x0: std_logic_vector(15 downto 0);
  signal q0_en_x0: std_logic;
  signal q1_din_x0: std_logic_vector(15 downto 0);
  signal q1_en_x0: std_logic;
  signal q2_din_x0: std_logic_vector(15 downto 0);
  signal q2_en_x0: std_logic;
  signal q_sav_din_x0: std_logic_vector(15 downto 0);
  signal q_sav_en_x0: std_logic;
  signal rddata: std_logic_vector(31 downto 0);
  signal refspeed_din_x0: std_logic_vector(15 downto 0);
  signal refspeed_en_x0: std_logic;
  signal rnwreg: std_logic;
  signal sebessegpozicio_dout_x0: std_logic_vector(15 downto 0);
  signal sg_plb_addrpref_net_x0: std_logic_vector(19 downto 0);
  signal sl_addrack_x0: std_logic;
  signal sl_rdcomp_x0: std_logic;
  signal sl_rddack_x0: std_logic;
  signal sl_rddbus_x0: std_logic_vector(31 downto 0);
  signal sl_wait_x0: std_logic;
  signal sl_wrdack_x0: std_logic;
  signal splb_rst_net_x0: std_logic;
  signal sugarakaranya_din_x0: std_logic_vector(15 downto 0);
  signal sugarakaranya_en_x0: std_logic;
  signal upozicio_dout_x0: std_logic_vector(31 downto 0);
  signal usebesseg_dout_x0: std_logic_vector(31 downto 0);
  signal wrdbusreg: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x0 <= ce_1;
  clk_1_sg_x0 <= clk_1;
  usebesseg_dout_x0 <= from_register;
  upozicio_dout_x0 <= from_register1;
  sebessegpozicio_dout_x0 <= from_register2;
  aktpozicio_dout_x0 <= from_register3;
  aktsebesseg_dout_x0 <= from_register4;
  esebesseg_dout_x0 <= from_register5;
  plb_abus_net_x0 <= plb_abus;
  plb_pavalid_net_x0 <= plb_pavalid;
  plb_rnw_net_x0 <= plb_rnw;
  plb_wrdbus_net_x0 <= plb_wrdbus;
  sg_plb_addrpref_net_x0 <= sg_plb_addrpref;
  splb_rst_net_x0 <= splb_rst;
  constant5_x0 <= sl_wait_x0;
  plb_decode_x0 <= sl_addrack_x0;
  plb_decode_x1 <= sl_rdcomp_x0;
  plb_decode_x2 <= sl_wrdack_x0;
  plb_decode_x3 <= sl_rddack_x0;
  plb_decode_x4 <= sl_rddbus_x0;
  plb_memmap_x0 <= posref_din_x0;
  plb_memmap_x1 <= posref_en_x0;
  plb_memmap_x10 <= pwmfrek_din_x0;
  plb_memmap_x11 <= pwmfrek_en_x0;
  plb_memmap_x12 <= refspeed_din_x0;
  plb_memmap_x13 <= refspeed_en_x0;
  plb_memmap_x14 <= sugarakaranya_din_x0;
  plb_memmap_x15 <= sugarakaranya_en_x0;
  plb_memmap_x16 <= q_sav_din_x0;
  plb_memmap_x17 <= q_sav_en_x0;
  plb_memmap_x18 <= config_din_x0;
  plb_memmap_x19 <= config_en_x0;
  plb_memmap_x2 <= q1_din_x0;
  plb_memmap_x3 <= q1_en_x0;
  plb_memmap_x4 <= q2_din_x0;
  plb_memmap_x5 <= q2_en_x0;
  plb_memmap_x6 <= q0_din_x0;
  plb_memmap_x7 <= q0_en_x0;
  plb_memmap_x8 <= pidts_din_x0;
  plb_memmap_x9 <= pidts_en_x0;

  constant5: entity work.constant_963ed6358a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => sl_wait_x0
    );

  plb_decode: entity work.mcode_block_f4d0462e0e
    port map (
      addrpref => sg_plb_addrpref_net_x0,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      plbabus => plb_abus_net_x0,
      plbpavalid(0) => plb_pavalid_net_x0,
      plbrnw(0) => plb_rnw_net_x0,
      plbrst(0) => splb_rst_net_x0,
      plbwrdbus => plb_wrdbus_net_x0,
      rddata => rddata,
      addrack(0) => sl_addrack_x0,
      bankaddr => bankaddr,
      linearaddr => linearaddr,
      rdcomp(0) => sl_rdcomp_x0,
      rddack(0) => sl_rddack_x0,
      rddbus => sl_rddbus_x0,
      rnwreg(0) => rnwreg,
      wrdack(0) => sl_wrdack_x0,
      wrdbusreg => wrdbusreg
    );

  plb_memmap: entity work.mcode_block_c8aa002cff
    port map (
      addrack(0) => sl_addrack_x0,
      bankaddr => bankaddr,
      ce => ce_1_sg_x0,
      clk => clk_1_sg_x0,
      clr => '0',
      linearaddr => linearaddr,
      rnwreg(0) => rnwreg,
      sm_aktpozicio => aktpozicio_dout_x0,
      sm_aktsebesseg => aktsebesseg_dout_x0,
      sm_esebesseg => esebesseg_dout_x0,
      sm_sebessegpozicio => sebessegpozicio_dout_x0,
      sm_upozicio => upozicio_dout_x0,
      sm_usebesseg => usebesseg_dout_x0,
      wrdbus => wrdbusreg,
      read_bank_out => rddata,
      sm_config_din => config_din_x0,
      sm_config_en(0) => config_en_x0,
      sm_pidts_din => pidts_din_x0,
      sm_pidts_en(0) => pidts_en_x0,
      sm_posref_din => posref_din_x0,
      sm_posref_en(0) => posref_en_x0,
      sm_pwmfrek_din => pwmfrek_din_x0,
      sm_pwmfrek_en(0) => pwmfrek_en_x0,
      sm_q0_din => q0_din_x0,
      sm_q0_en(0) => q0_en_x0,
      sm_q1_din => q1_din_x0,
      sm_q1_en(0) => q1_en_x0,
      sm_q2_din => q2_din_x0,
      sm_q2_en(0) => q2_en_x0,
      sm_q_sav_din => q_sav_din_x0,
      sm_q_sav_en(0) => q_sav_en_x0,
      sm_refspeed_din => refspeed_din_x0,
      sm_refspeed_en(0) => refspeed_en_x0,
      sm_sugarakaranya_din => sugarakaranya_din_x0,
      sm_sugarakaranya_en(0) => sugarakaranya_en_x0
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/PositionControl/PWM"

entity pwm_entity_b0b951596c is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    pwm: out std_logic
  );
end pwm_entity_b0b951596c;

architecture structural of pwm_entity_b0b951596c is
  signal ce_1_sg_x1: std_logic;
  signal clk_1_sg_x1: std_logic;
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_dout_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(15 downto 0);
  signal logical_y_net_x0: std_logic;
  signal mult_p_net: std_logic_vector(15 downto 0);
  signal relational1_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal sk_l_z_sfrekvenciaregiszterhez1_op_net: std_logic_vector(15 downto 0);
  signal sk_l_z_sfrekvenciaregiszterhez_op_net: std_logic_vector(31 downto 0);

begin
  ce_1_sg_x1 <= ce_1;
  clk_1_sg_x1 <= clk_1;
  convert3_dout_net_x0 <= duty;
  convert_dout_net_x0 <= en;
  pwm <= logical_y_net_x0;

  counter: entity work.xlcounter_free_IpSDKSebesegEsPozicio
    generic map (
      core_name0 => "cntr_11_0_d7c176806556610b",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x1,
      clk => clk_1_sg_x1,
      clr => '0',
      en(0) => convert_dout_net_x0,
      rst(0) => relational1_op_net,
      op => counter_op_net
    );

  logical: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => convert_dout_net_x0,
      y(0) => logical_y_net_x0
    );

  mult: entity work.xlmult_IpSDKSebesegEsPozicio
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlUnsigned,
      b_bin_pt => 20,
      b_width => 32,
      c_a_type => 1,
      c_a_width => 16,
      c_b_type => 1,
      c_b_width => 32,
      c_baat => 16,
      c_output_width => 48,
      c_type => 1,
      core_name0 => "mult_11_2_f059f4dd57a63694",
      extra_registers => 1,
      multsign => 1,
      overflow => 2,
      p_arith => xlUnsigned,
      p_bin_pt => 0,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => convert3_dout_net_x0,
      b => sk_l_z_sfrekvenciaregiszterhez_op_net,
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

  relational: entity work.relational_7a2906d528
    port map (
      a => mult_p_net,
      b => counter_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

  relational1: entity work.relational_7a7af7b80d
    port map (
      a => counter_op_net,
      b => sk_l_z_sfrekvenciaregiszterhez1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational1_op_net
    );

  sk_l_z_sfrekvenciaregiszterhez: entity work.constant_d5afcb9866
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => sk_l_z_sfrekvenciaregiszterhez_op_net
    );

  sk_l_z_sfrekvenciaregiszterhez1: entity work.constant_32150454cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => sk_l_z_sfrekvenciaregiszterhez1_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/PositionControl/PozSzab"

entity pozszab_entity_6dcc1d52c1 is
  port (
    aktval: in std_logic_vector(15 downto 0); 
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    q_val: in std_logic_vector(15 downto 0); 
    refval: in std_logic_vector(15 downto 0); 
    u: out std_logic_vector(16 downto 0)
  );
end pozszab_entity_6dcc1d52c1;

architecture structural of pozszab_entity_6dcc1d52c1 is
  signal addsub1_s_net: std_logic_vector(16 downto 0);
  signal addsub_s_net: std_logic_vector(16 downto 0);
  signal bitbasher_a_net: std_logic_vector(1 downto 0);
  signal ce_1_sg_x2: std_logic;
  signal clk_1_sg_x2: std_logic;
  signal convert1_dout_net: std_logic;
  signal convert_dout_net: std_logic;
  signal ct0_op_net: std_logic_vector(16 downto 0);
  signal ct2_op_net: std_logic_vector(16 downto 0);
  signal ct4_op_net: std_logic_vector(16 downto 0);
  signal delay_q_net: std_logic_vector(15 downto 0);
  signal emaxpoz1_op_net: std_logic_vector(16 downto 0);
  signal emaxpoz2_op_net: std_logic_vector(16 downto 0);
  signal emaxpoz_op_net: std_logic_vector(16 downto 0);
  signal eminpoz_op_net: std_logic_vector(16 downto 0);
  signal erroreqzero_op_net: std_logic;
  signal inverter2_op_net: std_logic;
  signal inverter_op_net: std_logic_vector(16 downto 0);
  signal mux1_y_net: std_logic_vector(16 downto 0);
  signal mux2_y_net: std_logic_vector(16 downto 0);
  signal mux3_y_net: std_logic_vector(16 downto 0);
  signal mux_y_net_x0: std_logic_vector(16 downto 0);
  signal register1_q_net: std_logic;
  signal register6_q_net_x0: std_logic_vector(15 downto 0);
  signal register7_q_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net_x0: std_logic_vector(15 downto 0);
  signal relational1_op_net: std_logic;
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational4_op_net: std_logic;
  signal relational_op_net: std_logic;
  signal u0_op_net: std_logic_vector(16 downto 0);

begin
  register_q_net_x0 <= aktval;
  ce_1_sg_x2 <= ce_1;
  clk_1_sg_x2 <= clk_1;
  register7_q_net_x0 <= q_val;
  register6_q_net_x0 <= refval;
  u <= mux_y_net_x0;

  addsub: entity work.xladdsub_IpSDKSebesegEsPozicio
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
      a => register6_q_net_x0,
      b => register_q_net_x0,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  addsub1: entity work.xladdsub_IpSDKSebesegEsPozicio
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
      a => register6_q_net_x0,
      b => delay_q_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  bitbasher: entity work.bitbasher_b142b1358a
    port map (
      b(0) => convert1_dout_net,
      c(0) => convert_dout_net,
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
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
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
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
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
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      d => register6_q_net_x0,
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

  emaxpoz1: entity work.constant_73351a0d84
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => emaxpoz1_op_net
    );

  emaxpoz2: entity work.constant_a28586f773
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => emaxpoz2_op_net
    );

  eminpoz: entity work.constant_017d9de1ab
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => eminpoz_op_net
    );

  erroreqzero: entity work.relational_ec17798a35
    port map (
      a => addsub_s_net,
      b => ct0_op_net,
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      op(0) => erroreqzero_op_net
    );

  inverter: entity work.inverter_5898baed89
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      ip => addsub_s_net,
      op => inverter_op_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
      clr => '0',
      ip(0) => relational3_op_net,
      op(0) => inverter2_op_net
    );

  mux: entity work.mux_65a0e0a5b3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => u0_op_net,
      d1 => emaxpoz1_op_net,
      d2 => emaxpoz2_op_net,
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

  mux3: entity work.mux_a161f3a75c
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => addsub_s_net,
      d1 => inverter_op_net,
      sel(0) => relational4_op_net,
      y => mux3_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x2,
      clk => clk_1_sg_x2,
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

  relational2: entity work.relational_dc0a74902c
    port map (
      a => mux3_y_net,
      b => register7_q_net_x0,
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

  relational4: entity work.relational_a54b8994ea
    port map (
      a => addsub_s_net,
      b => ct0_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net
    );

  u0: entity work.constant_a803a2dbbb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => u0_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/PositionControl/SignToUSign"

entity signtousign_entity_31c064d032 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    valin: in std_logic_vector(15 downto 0); 
    val: out std_logic_vector(15 downto 0)
  );
end signtousign_entity_31c064d032;

architecture structural of signtousign_entity_31c064d032 is
  signal bitbasher6_dir_net_x0: std_logic;
  signal ce_1_sg_x3: std_logic;
  signal clk_1_sg_x3: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal inverter_op_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x3 <= ce_1;
  clk_1_sg_x3 <= clk_1;
  bitbasher6_dir_net_x0 <= dir;
  convert7_dout_net_x0 <= valin;
  val <= mux_y_net_x0;

  inverter: entity work.inverter_1ca63a13a1
    port map (
      ce => ce_1_sg_x3,
      clk => clk_1_sg_x3,
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

-- Generated from Simulink block "IpSDKSebesegEsPozicio/PositionControl/counterPosition"

entity counterposition_entity_9e35ae9003 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    dir: in std_logic; 
    impulse: in std_logic; 
    reset: in std_logic; 
    valuect: in std_logic; 
    value_counter: out std_logic_vector(15 downto 0)
  );
end counterposition_entity_9e35ae9003;

architecture structural of counterposition_entity_9e35ae9003 is
  signal addsub_s_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x4: std_logic;
  signal clk_1_sg_x4: std_logic;
  signal constant2_op_net: std_logic_vector(15 downto 0);
  signal constant3_op_net: std_logic_vector(15 downto 0);
  signal convert1_dout_net_x0: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal convert5_dout_net_x0: std_logic;
  signal convert7_dout_net_x0: std_logic;
  signal convert8_dout_net_x0: std_logic;
  signal convert_dout_net: std_logic;
  signal delay_q_net: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal mux1_y_net: std_logic;
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic;
  signal register2_q_net: std_logic;
  signal register_q_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x4 <= ce_1;
  clk_1_sg_x4 <= clk_1;
  convert5_dout_net_x0 <= dir;
  convert7_dout_net_x0 <= impulse;
  convert1_dout_net_x1 <= reset;
  convert8_dout_net_x0 <= valuect;
  value_counter <= register_q_net_x1;

  addsub: entity work.xladdsub_IpSDKSebesegEsPozicio
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
      a => register_q_net_x1,
      b => mux_y_net,
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  constant2: entity work.constant_32150454cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_190a6d2a1a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
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
      din(0) => convert1_dout_net_x1,
      en => "1",
      dout(0) => convert1_dout_net_x0
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
      ip(0) => register1_q_net,
      op(0) => inverter_op_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      clr => '0',
      ip(0) => register2_q_net,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register1_q_net,
      d1(0) => delay_q_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_2c45f290ed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => constant2_op_net,
      d1 => constant3_op_net,
      sel(0) => mux1_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_cde5f13da6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register2_q_net,
      d1(0) => inverter1_op_net,
      sel(0) => convert8_dout_net_x0,
      y(0) => mux1_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => convert7_dout_net_x0,
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
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d(0) => convert5_dout_net_x0,
      en => "1",
      rst => "0",
      q(0) => register2_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x4,
      clk => clk_1_sg_x4,
      d => addsub_s_net,
      en(0) => convert_dout_net,
      rst(0) => convert1_dout_net_x0,
      q => register_q_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/PositionControl/counterSebesseg"

entity countersebesseg_entity_de0ec7f1e9 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    csereldir: in std_logic; 
    dir: in std_logic; 
    impulse: in std_logic; 
    speedtsimp: in std_logic; 
    value_counter: out std_logic_vector(15 downto 0)
  );
end countersebesseg_entity_de0ec7f1e9;

architecture structural of countersebesseg_entity_de0ec7f1e9 is
  signal addsub_s_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x5: std_logic;
  signal clk_1_sg_x5: std_logic;
  signal constant2_op_net: std_logic_vector(15 downto 0);
  signal constant3_op_net: std_logic_vector(15 downto 0);
  signal convert1_dout_net: std_logic;
  signal convert5_dout_net_x1: std_logic;
  signal convert7_dout_net_x1: std_logic;
  signal convert8_dout_net_x1: std_logic;
  signal convert_dout_net: std_logic;
  signal delay_q_net: std_logic;
  signal inverter1_op_net: std_logic;
  signal inverter_op_net: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x1: std_logic;
  signal mux1_y_net: std_logic;
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal register1_q_net: std_logic;
  signal register2_q_net_x0: std_logic_vector(15 downto 0);
  signal register8_q_net: std_logic;
  signal register_q_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x5 <= ce_1;
  clk_1_sg_x5 <= clk_1;
  convert8_dout_net_x1 <= csereldir;
  convert5_dout_net_x1 <= dir;
  convert7_dout_net_x1 <= impulse;
  logical_y_net_x1 <= speedtsimp;
  value_counter <= register2_q_net_x0;

  addsub: entity work.xladdsub_IpSDKSebesegEsPozicio
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
      a => register_q_net,
      b => mux_y_net,
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      clr => '0',
      en => "1",
      s => addsub_s_net
    );

  constant2: entity work.constant_32150454cb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant2_op_net
    );

  constant3: entity work.constant_190a6d2a1a
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant3_op_net
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
      din(0) => logical_y_net_x1,
      en => "1",
      dout(0) => convert1_dout_net
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

  inverter: entity work.inverter_e5b38cca3b
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
      ip(0) => register8_q_net,
      op(0) => inverter1_op_net
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register1_q_net,
      d1(0) => delay_q_net,
      y(0) => logical_y_net
    );

  mux: entity work.mux_2c45f290ed
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => constant2_op_net,
      d1 => constant3_op_net,
      sel(0) => mux1_y_net,
      y => mux_y_net
    );

  mux1: entity work.mux_cde5f13da6
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => register8_q_net,
      d1(0) => inverter1_op_net,
      sel(0) => convert8_dout_net_x1,
      y(0) => mux1_y_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => convert7_dout_net_x1,
      en => "1",
      rst => "0",
      q(0) => register1_q_net
    );

  register2: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => register_q_net,
      en(0) => convert1_dout_net,
      rst => "0",
      q => register2_q_net_x0
    );

  register8: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d(0) => convert5_dout_net_x1,
      en => "1",
      rst => "0",
      q(0) => register8_q_net
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x5,
      clk => clk_1_sg_x5,
      d => addsub_s_net,
      en(0) => convert_dout_net,
      rst(0) => convert1_dout_net,
      q => register_q_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/PositionControl"

entity positioncontrol_entity_a26616fb47 is
  port (
    ce_1: in std_logic; 
    changedir: in std_logic; 
    clk_1: in std_logic; 
    dirsensor: in std_logic; 
    enanulsig: in std_logic; 
    impulsesensor: in std_logic; 
    nullsignal: in std_logic; 
    pidtsimpsignal: in std_logic; 
    pwmensig: in std_logic; 
    q: in std_logic_vector(15 downto 0); 
    refv16bitsig: in std_logic_vector(15 downto 0); 
    constant_x1: out std_logic; 
    convert8_x0: out std_logic_vector(31 downto 0); 
    counterposition: out std_logic_vector(15 downto 0); 
    dirposition: out std_logic; 
    pwmsigout: out std_logic; 
    sebesseg: out std_logic_vector(15 downto 0)
  );
end positioncontrol_entity_a26616fb47;

architecture structural of positioncontrol_entity_a26616fb47 is
  signal bitbasher6_dir_net_x0: std_logic;
  signal bitbasher6_val_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x6: std_logic;
  signal clk_1_sg_x6: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal convert1_dout_net_x1: std_logic;
  signal convert2_dout_net: std_logic;
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert4_dout_net_x0: std_logic;
  signal convert5_dout_net_x0: std_logic;
  signal convert5_dout_net_x2: std_logic;
  signal convert6_dout_net: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert7_dout_net_x2: std_logic;
  signal convert8_dout_net_x0: std_logic_vector(31 downto 0);
  signal convert8_dout_net_x2: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal logical_y_net: std_logic;
  signal logical_y_net_x0: std_logic;
  signal logical_y_net_x2: std_logic;
  signal mux_y_net_x0: std_logic_vector(16 downto 0);
  signal mux_y_net_x1: std_logic_vector(15 downto 0);
  signal null_net_x0: std_logic;
  signal register2_q_net_x1: std_logic_vector(15 downto 0);
  signal register6_q_net_x1: std_logic_vector(15 downto 0);
  signal register7_q_net_x1: std_logic_vector(15 downto 0);
  signal register_q_net: std_logic_vector(16 downto 0);
  signal register_q_net_x2: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x6 <= ce_1;
  convert8_dout_net_x2 <= changedir;
  clk_1_sg_x6 <= clk_1;
  convert5_dout_net_x2 <= dirsensor;
  convert1_dout_net_x0 <= enanulsig;
  convert7_dout_net_x2 <= impulsesensor;
  null_net_x0 <= nullsignal;
  logical_y_net_x2 <= pidtsimpsignal;
  convert_dout_net_x1 <= pwmensig;
  register7_q_net_x1 <= q;
  register6_q_net_x1 <= refv16bitsig;
  constant_x1 <= constant_op_net_x0;
  convert8_x0 <= convert8_dout_net_x0;
  counterposition <= register_q_net_x2;
  dirposition <= convert4_dout_net_x0;
  pwmsigout <= convert5_dout_net_x0;
  sebesseg <= register2_q_net_x1;

  bitbasher6: entity work.bitbasher_7e62e7628d
    port map (
      a => register_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      dir(0) => bitbasher6_dir_net_x0,
      val => bitbasher6_val_net
    );

  constant_x0: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant_op_net_x0
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
      dout(0) => convert1_dout_net_x1
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => null_net_x0,
      en => "1",
      dout(0) => convert2_dout_net
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
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din(0) => bitbasher6_dir_net_x0,
      en => "1",
      dout(0) => convert4_dout_net_x0
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
      din(0) => logical_y_net_x0,
      en => "1",
      dout(0) => convert5_dout_net_x0
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
      din(0) => convert1_dout_net_x0,
      en => "1",
      dout(0) => convert6_dout_net
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
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      clr => '0',
      din => mux_y_net_x0,
      en => "1",
      dout => convert8_dout_net_x0
    );

  counterposition_9e35ae9003: entity work.counterposition_entity_9e35ae9003
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      dir => convert5_dout_net_x2,
      impulse => convert7_dout_net_x2,
      reset => convert1_dout_net_x1,
      valuect => convert8_dout_net_x2,
      value_counter => register_q_net_x2
    );

  countersebesseg_de0ec7f1e9: entity work.countersebesseg_entity_de0ec7f1e9
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      csereldir => convert8_dout_net_x2,
      dir => convert5_dout_net_x2,
      impulse => convert7_dout_net_x2,
      speedtsimp => logical_y_net_x2,
      value_counter => register2_q_net_x1
    );

  logical: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert2_dout_net,
      d1(0) => convert6_dout_net,
      y(0) => logical_y_net
    );

  pozszab_6dcc1d52c1: entity work.pozszab_entity_6dcc1d52c1
    port map (
      aktval => register_q_net_x2,
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      q_val => register7_q_net_x1,
      refval => register6_q_net_x1,
      u => mux_y_net_x0
    );

  pwm_b0b951596c: entity work.pwm_entity_b0b951596c
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      duty => convert3_dout_net_x0,
      en => convert_dout_net_x1,
      pwm => logical_y_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x6,
      clk => clk_1_sg_x6,
      d => mux_y_net_x0,
      en => "1",
      rst => "0",
      q => register_q_net
    );

  signtousign_31c064d032: entity work.signtousign_entity_31c064d032
    port map (
      ce_1 => ce_1_sg_x6,
      clk_1 => clk_1_sg_x6,
      dir => bitbasher6_dir_net_x0,
      valin => convert7_dout_net_x0,
      val => mux_y_net_x1
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/SebessegControlModul/PIDrek"

entity pidrek_entity_7bc087bdfb is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    error: in std_logic_vector(15 downto 0); 
    q0: in std_logic_vector(15 downto 0); 
    q1: in std_logic_vector(15 downto 0); 
    q2: in std_logic_vector(15 downto 0); 
    tsimpulse: in std_logic; 
    upid: out std_logic_vector(16 downto 0)
  );
end pidrek_entity_7bc087bdfb;

architecture structural of pidrek_entity_7bc087bdfb is
  signal adat_reg_q_net_x0: std_logic_vector(16 downto 0);
  signal adat_ut_op_net: std_logic_vector(1 downto 0);
  signal addsub_s_net_x0: std_logic_vector(15 downto 0);
  signal ce_1_sg_x7: std_logic;
  signal clk_1_sg_x7: std_logic;
  signal convert_dout_net: std_logic;
  signal delay3_q_net: std_logic;
  signal delay_q_net_x0: std_logic;
  signal delay_q_net_x1: std_logic;
  signal ek: std_logic_vector(15 downto 0);
  signal ek_1: std_logic_vector(15 downto 0);
  signal ek_2: std_logic_vector(15 downto 0);
  signal enadat_reg: std_logic;
  signal eneltol_s: std_logic;
  signal enszorz: std_logic;
  signal inverter_op_net: std_logic;
  signal muxe_y_net: std_logic_vector(15 downto 0);
  signal muxq_y_net: std_logic_vector(15 downto 0);
  signal register3_q_net_x0: std_logic_vector(15 downto 0);
  signal register4_q_net_x0: std_logic_vector(15 downto 0);
  signal register5_q_net_x0: std_logic_vector(15 downto 0);
  signal sszegz_s_net: std_logic_vector(16 downto 0);
  signal szorz_p_net: std_logic_vector(16 downto 0);

begin
  ce_1_sg_x7 <= ce_1;
  clk_1_sg_x7 <= clk_1;
  addsub_s_net_x0 <= error;
  register3_q_net_x0 <= q0;
  register4_q_net_x0 <= q1;
  register5_q_net_x0 <= q2;
  delay_q_net_x1 <= tsimpulse;
  upid <= adat_reg_q_net_x0;

  adat_reg: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => sszegz_s_net,
      en(0) => enadat_reg,
      rst => "0",
      q => adat_reg_q_net_x0
    );

  adat_ut: entity work.xlcounter_limit_IpSDKSebesegEsPozicio
    generic map (
      cnt_15_0 => 2,
      cnt_31_16 => 0,
      cnt_47_32 => 0,
      cnt_63_48 => 0,
      core_name0 => "cntr_11_0_cee71699703bac4e",
      count_limited => 1,
      op_arith => xlUnsigned,
      op_width => 2
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      en(0) => enszorz,
      rst => "0",
      op => adat_ut_op_net
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
      din(0) => delay_q_net_x1,
      en => "1",
      dout(0) => convert_dout_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 3,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => delay3_q_net,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x0
    );

  delay1: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => enszorz,
      en => '1',
      rst => '1',
      q(0) => enadat_reg
    );

  delay3: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => eneltol_s,
      en => '1',
      rst => '1',
      q(0) => delay3_q_net
    );

  ena_reg: entity work.xlregister
    generic map (
      d_width => 1,
      init_value => b"0"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d(0) => delay3_q_net,
      en(0) => delay3_q_net,
      rst(0) => delay_q_net_x0,
      q(0) => enszorz
    );

  inverter: entity work.inverter_6844eee868
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      ip(0) => convert_dout_net,
      op(0) => inverter_op_net
    );

  k_sleltet_1: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => addsub_s_net_x0,
      en(0) => eneltol_s,
      rst => "0",
      q => ek
    );

  k_sleltet_2: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => ek,
      en(0) => eneltol_s,
      rst => "0",
      q => ek_1
    );

  k_sleltet_3: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      d => ek_1,
      en(0) => eneltol_s,
      rst => "0",
      q => ek_2
    );

  logical: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => convert_dout_net,
      d1(0) => inverter_op_net,
      y(0) => eneltol_s
    );

  muxe: entity work.mux_98fb5a53eb
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => ek,
      d1 => ek_1,
      d2 => ek_2,
      sel => adat_ut_op_net,
      y => muxe_y_net
    );

  muxq: entity work.mux_9f8577029e
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => register3_q_net_x0,
      d1 => register4_q_net_x0,
      d2 => register5_q_net_x0,
      sel => adat_ut_op_net,
      y => muxq_y_net
    );

  sszegz: entity work.xladdsub_IpSDKSebesegEsPozicio
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
      a => adat_reg_q_net_x0,
      b => szorz_p_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      en => "1",
      s => sszegz_s_net
    );

  szorz: entity work.xlmult_IpSDKSebesegEsPozicio
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_357304dcca1625c6",
      en_arith => xlUnsigned,
      en_bin_pt => 0,
      en_width => 1,
      extra_registers => 0,
      multsign => 2,
      overflow => 1,
      p_arith => xlSigned,
      p_bin_pt => 0,
      p_width => 17,
      quantization => 1
    )
    port map (
      a => muxq_y_net,
      b => muxe_y_net,
      ce => ce_1_sg_x7,
      clk => clk_1_sg_x7,
      clr => '0',
      core_ce => ce_1_sg_x7,
      core_clk => clk_1_sg_x7,
      core_clr => '1',
      en(0) => enszorz,
      rst => "0",
      p => szorz_p_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/SebessegControlModul/PWM"

entity pwm_entity_ff7cea0ae8 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    duty: in std_logic_vector(15 downto 0); 
    en: in std_logic; 
    frek: in std_logic_vector(15 downto 0); 
    pwm: out std_logic
  );
end pwm_entity_ff7cea0ae8;

architecture structural of pwm_entity_ff7cea0ae8 is
  signal ce_1_sg_x8: std_logic;
  signal clk_1_sg_x8: std_logic;
  signal convert2_dout_net_x0: std_logic;
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert_dout_net: std_logic;
  signal counter1_op_net: std_logic_vector(15 downto 0);
  signal delay_q_net: std_logic_vector(15 downto 0);
  signal inverter2_op_net: std_logic;
  signal logical1_y_net_x0: std_logic;
  signal logical2_y_net: std_logic;
  signal mult1_p_net: std_logic_vector(15 downto 0);
  signal mult2_p_net: std_logic_vector(31 downto 0);
  signal mult3_p_net: std_logic_vector(15 downto 0);
  signal register1_q_net_x0: std_logic_vector(15 downto 0);
  signal relational2_op_net: std_logic;
  signal relational3_op_net: std_logic;
  signal relational4_op_net: std_logic;
  signal sk_l_z_sfrekvenciaregiszterhez2_op_net: std_logic_vector(31 downto 0);
  signal x95_frekreg_op_net: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x8 <= ce_1;
  clk_1_sg_x8 <= clk_1;
  convert3_dout_net_x0 <= duty;
  convert2_dout_net_x0 <= en;
  register1_q_net_x0 <= frek;
  pwm <= logical1_y_net_x0;

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
      din(0) => logical2_y_net,
      en => "1",
      dout(0) => convert_dout_net
    );

  counter1: entity work.xlcounter_free_IpSDKSebesegEsPozicio
    generic map (
      core_name0 => "cntr_11_0_d7c176806556610b",
      op_arith => xlUnsigned,
      op_width => 16
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      en(0) => convert2_dout_net_x0,
      rst(0) => convert_dout_net,
      op => counter1_op_net
    );

  delay: entity work.xldelay
    generic map (
      latency => 1,
      reg_retiming => 0,
      reset => 0,
      width => 16
    )
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      d => register1_q_net_x0,
      en => '1',
      rst => '1',
      q => delay_q_net
    );

  inverter2: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      ip(0) => relational4_op_net,
      op(0) => inverter2_op_net
    );

  logical1: entity work.logical_80f90b97d0
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational2_op_net,
      d1(0) => convert2_dout_net_x0,
      y(0) => logical1_y_net_x0
    );

  logical2: entity work.logical_a670ce0bc3
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational3_op_net,
      d1(0) => inverter2_op_net,
      y(0) => logical2_y_net
    );

  mult1: entity work.xlmult_IpSDKSebesegEsPozicio
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 32,
      b_arith => xlSigned,
      b_bin_pt => 20,
      b_width => 32,
      c_a_type => 1,
      c_a_width => 32,
      c_b_type => 0,
      c_b_width => 32,
      c_baat => 32,
      c_output_width => 64,
      c_type => 0,
      core_name0 => "mult_11_2_2b546dfd19043fff",
      extra_registers => 1,
      multsign => 2,
      overflow => 2,
      p_arith => xlUnsigned,
      p_bin_pt => 0,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => mult2_p_net,
      b => sk_l_z_sfrekvenciaregiszterhez2_op_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      core_ce => ce_1_sg_x8,
      core_clk => clk_1_sg_x8,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult1_p_net
    );

  mult2: entity work.xlmult_IpSDKSebesegEsPozicio
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlUnsigned,
      b_bin_pt => 0,
      b_width => 16,
      c_a_type => 1,
      c_a_width => 16,
      c_b_type => 1,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 1,
      core_name0 => "mult_11_2_6f06a19cb1633eca",
      extra_registers => 0,
      multsign => 1,
      overflow => 2,
      p_arith => xlUnsigned,
      p_bin_pt => 0,
      p_width => 32,
      quantization => 1
    )
    port map (
      a => convert3_dout_net_x0,
      b => mult3_p_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      core_ce => ce_1_sg_x8,
      core_clk => clk_1_sg_x8,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult2_p_net
    );

  mult3: entity work.xlmult_IpSDKSebesegEsPozicio
    generic map (
      a_arith => xlUnsigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 14,
      b_width => 16,
      c_a_type => 1,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_8d94dfdd489cb4d4",
      extra_registers => 1,
      multsign => 2,
      overflow => 2,
      p_arith => xlUnsigned,
      p_bin_pt => 0,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => register1_q_net_x0,
      b => x95_frekreg_op_net,
      ce => ce_1_sg_x8,
      clk => clk_1_sg_x8,
      clr => '0',
      core_ce => ce_1_sg_x8,
      core_clk => clk_1_sg_x8,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult3_p_net
    );

  relational2: entity work.relational_7a2906d528
    port map (
      a => mult1_p_net,
      b => counter1_op_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational2_op_net
    );

  relational3: entity work.relational_7a7af7b80d
    port map (
      a => counter1_op_net,
      b => register1_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational3_op_net
    );

  relational4: entity work.relational_7a7af7b80d
    port map (
      a => register1_q_net_x0,
      b => delay_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational4_op_net
    );

  sk_l_z_sfrekvenciaregiszterhez2: entity work.constant_b213411135
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => sk_l_z_sfrekvenciaregiszterhez2_op_net
    );

  x95_frekreg: entity work.constant_16ed609544
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => x95_frekreg_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/SebessegControlModul/SampleTime Generator"

entity sampletime_generator_entity_daed087785 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    stop: in std_logic; 
    ts: in std_logic_vector(31 downto 0); 
    tick: out std_logic
  );
end sampletime_generator_entity_daed087785;

architecture structural of sampletime_generator_entity_daed087785 is
  signal ce_1_sg_x9: std_logic;
  signal clk_1_sg_x9: std_logic;
  signal constant_op_net_x0: std_logic;
  signal counter_op_net: std_logic_vector(31 downto 0);
  signal inverter_op_net: std_logic;
  signal logical_y_net_x3: std_logic;
  signal register2_q_net_x0: std_logic_vector(31 downto 0);
  signal relational_op_net: std_logic;

begin
  ce_1_sg_x9 <= ce_1;
  clk_1_sg_x9 <= clk_1;
  constant_op_net_x0 <= stop;
  register2_q_net_x0 <= ts;
  tick <= logical_y_net_x3;

  counter: entity work.xlcounter_free_IpSDKSebesegEsPozicio
    generic map (
      core_name0 => "cntr_11_0_5baa608aaa6fc4cf",
      op_arith => xlUnsigned,
      op_width => 32
    )
    port map (
      ce => ce_1_sg_x9,
      clk => clk_1_sg_x9,
      clr => '0',
      en => "1",
      rst(0) => relational_op_net,
      op => counter_op_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => '1',
      clk => '1',
      clr => '0',
      ip(0) => constant_op_net_x0,
      op(0) => inverter_op_net
    );

  logical: entity work.logical_49a7e4b36d
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0(0) => relational_op_net,
      d1(0) => inverter_op_net,
      y(0) => logical_y_net_x3
    );

  relational: entity work.relational_3ffd1d0a40
    port map (
      a => counter_op_net,
      b => register2_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => relational_op_net
    );

end structural;
library IEEE;
use IEEE.std_logic_1164.all;
use work.conv_pkg.all;

-- Generated from Simulink block "IpSDKSebesegEsPozicio/SebessegControlModul"

entity sebessegcontrolmodul_entity_6aa8047d99 is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    cseredirspeed: in std_logic; 
    dirsensor: in std_logic; 
    enacoupling: in std_logic; 
    forgotalpsugara: in std_logic_vector(15 downto 0); 
    impulsesensor: in std_logic; 
    pidts32bitsig: in std_logic_vector(31 downto 0); 
    pwmensig: in std_logic; 
    pwmfrek16bit: in std_logic_vector(15 downto 0); 
    q0_16bit: in std_logic_vector(15 downto 0); 
    q1_16bit: in std_logic_vector(15 downto 0); 
    q2_16bit: in std_logic_vector(15 downto 0); 
    refspeed16bitsig: in std_logic_vector(15 downto 0); 
    speedposition: in std_logic_vector(15 downto 0); 
    addsub_x0: out std_logic_vector(15 downto 0); 
    constant3_x0: out std_logic; 
    convert2_x0: out std_logic_vector(31 downto 0); 
    countersebesseg: out std_logic_vector(15 downto 0); 
    dirspeed: out std_logic; 
    pwmsigout: out std_logic; 
    tsimpulsesig: out std_logic
  );
end sebessegcontrolmodul_entity_6aa8047d99;

architecture structural of sebessegcontrolmodul_entity_6aa8047d99 is
  signal adat_reg_q_net_x0: std_logic_vector(16 downto 0);
  signal addsub1_s_net: std_logic_vector(15 downto 0);
  signal addsub_s_net_x1: std_logic_vector(15 downto 0);
  signal bitbasher6_dir_net_x0: std_logic;
  signal bitbasher6_val_net: std_logic_vector(15 downto 0);
  signal ce_1_sg_x12: std_logic;
  signal clk_1_sg_x12: std_logic;
  signal constant1_op_net: std_logic_vector(15 downto 0);
  signal constant3_op_net_x0: std_logic;
  signal constant_op_net_x0: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal convert2_dout_net_x1: std_logic;
  signal convert2_dout_net_x2: std_logic_vector(31 downto 0);
  signal convert3_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert3_dout_net_x1: std_logic;
  signal convert4_dout_net_x1: std_logic;
  signal convert6_dout_net_x1: std_logic;
  signal convert7_dout_net_x0: std_logic_vector(15 downto 0);
  signal convert9_dout_net_x1: std_logic;
  signal delay_q_net_x1: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical_y_net_x5: std_logic;
  signal mult_p_net: std_logic_vector(15 downto 0);
  signal mux_y_net: std_logic_vector(15 downto 0);
  signal mux_y_net_x0: std_logic_vector(15 downto 0);
  signal register1_q_net_x1: std_logic_vector(15 downto 0);
  signal register2_q_net_x3: std_logic_vector(15 downto 0);
  signal register2_q_net_x4: std_logic_vector(31 downto 0);
  signal register2_q_net_x5: std_logic_vector(15 downto 0);
  signal register3_q_net_x1: std_logic_vector(15 downto 0);
  signal register4_q_net_x1: std_logic_vector(15 downto 0);
  signal register5_q_net_x1: std_logic_vector(15 downto 0);
  signal register9_q_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net_x0: std_logic_vector(16 downto 0);
  signal register_q_net_x1: std_logic_vector(15 downto 0);

begin
  ce_1_sg_x12 <= ce_1;
  clk_1_sg_x12 <= clk_1;
  convert9_dout_net_x1 <= cseredirspeed;
  convert4_dout_net_x1 <= dirsensor;
  convert3_dout_net_x1 <= enacoupling;
  register9_q_net_x0 <= forgotalpsugara;
  convert6_dout_net_x1 <= impulsesensor;
  register2_q_net_x4 <= pidts32bitsig;
  convert2_dout_net_x1 <= pwmensig;
  register1_q_net_x1 <= pwmfrek16bit;
  register3_q_net_x1 <= q0_16bit;
  register4_q_net_x1 <= q1_16bit;
  register5_q_net_x1 <= q2_16bit;
  register_q_net_x1 <= refspeed16bitsig;
  register2_q_net_x3 <= speedposition;
  addsub_x0 <= addsub_s_net_x1;
  constant3_x0 <= constant3_op_net_x0;
  convert2_x0 <= convert2_dout_net_x2;
  countersebesseg <= register2_q_net_x5;
  dirspeed <= convert1_dout_net_x0;
  pwmsigout <= logical1_y_net_x1;
  tsimpulsesig <= logical_y_net_x5;

  addsub: entity work.xladdsub_IpSDKSebesegEsPozicio
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
      s_width => 16
    )
    port map (
      a => addsub1_s_net,
      b => register2_q_net_x5,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      en => "1",
      s => addsub_s_net_x1
    );

  addsub1: entity work.xladdsub_IpSDKSebesegEsPozicio
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
      s_width => 16
    )
    port map (
      a => register_q_net_x1,
      b => mux_y_net,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      en => "1",
      s => addsub1_s_net
    );

  bitbasher6: entity work.bitbasher_75b6572827
    port map (
      a => register_q_net_x0,
      ce => '0',
      clk => '0',
      clr => '0',
      dir(0) => bitbasher6_dir_net_x0,
      val => bitbasher6_val_net
    );

  constant1: entity work.constant_9f5572ba51
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op => constant1_op_net
    );

  constant3: entity work.constant_6293007044
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      op(0) => constant3_op_net_x0
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
      dout(0) => convert1_dout_net_x0
    );

  convert2: entity work.xlconvert
    generic map (
      bool_conversion => 0,
      din_arith => 2,
      din_bin_pt => 0,
      din_width => 17,
      dout_arith => 2,
      dout_bin_pt => 0,
      dout_width => 32,
      latency => 0,
      overflow => xlWrap,
      quantization => xlTruncate
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      din => adat_reg_q_net_x0,
      en => "1",
      dout => convert2_dout_net_x2
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

  countersebesseg_87caeabc37: entity work.countersebesseg_entity_de0ec7f1e9
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      csereldir => convert9_dout_net_x1,
      dir => convert4_dout_net_x1,
      impulse => convert6_dout_net_x1,
      speedtsimp => logical_y_net_x5,
      value_counter => register2_q_net_x5
    );

  delay: entity work.xldelay
    generic map (
      latency => 6,
      reg_retiming => 0,
      reset => 0,
      width => 1
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d(0) => logical_y_net_x5,
      en => '1',
      rst => '1',
      q(0) => delay_q_net_x1
    );

  mult: entity work.xlmult_IpSDKSebesegEsPozicio
    generic map (
      a_arith => xlSigned,
      a_bin_pt => 0,
      a_width => 16,
      b_arith => xlSigned,
      b_bin_pt => 0,
      b_width => 16,
      c_a_type => 0,
      c_a_width => 16,
      c_b_type => 0,
      c_b_width => 16,
      c_baat => 16,
      c_output_width => 32,
      c_type => 0,
      core_name0 => "mult_11_2_99ead271b49e8ec3",
      extra_registers => 1,
      multsign => 2,
      overflow => 2,
      p_arith => xlSigned,
      p_bin_pt => 0,
      p_width => 16,
      quantization => 1
    )
    port map (
      a => register2_q_net_x3,
      b => register9_q_net_x0,
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      clr => '0',
      core_ce => ce_1_sg_x12,
      core_clk => clk_1_sg_x12,
      core_clr => '1',
      en => "1",
      rst => "0",
      p => mult_p_net
    );

  mux: entity work.mux_a54904b290
    port map (
      ce => '0',
      clk => '0',
      clr => '0',
      d0 => constant1_op_net,
      d1 => mult_p_net,
      sel(0) => convert3_dout_net_x1,
      y => mux_y_net
    );

  pidrek_7bc087bdfb: entity work.pidrek_entity_7bc087bdfb
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      error => addsub_s_net_x1,
      q0 => register3_q_net_x1,
      q1 => register4_q_net_x1,
      q2 => register5_q_net_x1,
      tsimpulse => delay_q_net_x1,
      upid => adat_reg_q_net_x0
    );

  pwm_ff7cea0ae8: entity work.pwm_entity_ff7cea0ae8
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      duty => convert3_dout_net_x0,
      en => convert2_dout_net_x1,
      frek => register1_q_net_x1,
      pwm => logical1_y_net_x1
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 17,
      init_value => b"00000000000000000"
    )
    port map (
      ce => ce_1_sg_x12,
      clk => clk_1_sg_x12,
      d => adat_reg_q_net_x0,
      en => "1",
      rst => "0",
      q => register_q_net_x0
    );

  sampletime_generator_daed087785: entity work.sampletime_generator_entity_daed087785
    port map (
      ce_1 => ce_1_sg_x12,
      clk_1 => clk_1_sg_x12,
      stop => constant_op_net_x0,
      ts => register2_q_net_x4,
      tick => logical_y_net_x5
    );

  signtousign_6e31dba593: entity work.signtousign_entity_31c064d032
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

-- Generated from Simulink block "IpSDKSebesegEsPozicio"

entity ipsdksebesegespozicio is
  port (
    ce_1: in std_logic; 
    clk_1: in std_logic; 
    data_out: in std_logic_vector(15 downto 0); 
    data_out_x0: in std_logic_vector(15 downto 0); 
    data_out_x1: in std_logic_vector(31 downto 0); 
    data_out_x10: in std_logic_vector(31 downto 0); 
    data_out_x11: in std_logic_vector(15 downto 0); 
    data_out_x12: in std_logic_vector(15 downto 0); 
    data_out_x13: in std_logic_vector(15 downto 0); 
    data_out_x14: in std_logic_vector(15 downto 0); 
    data_out_x2: in std_logic_vector(15 downto 0); 
    data_out_x3: in std_logic_vector(15 downto 0); 
    data_out_x4: in std_logic_vector(15 downto 0); 
    data_out_x5: in std_logic_vector(15 downto 0); 
    data_out_x6: in std_logic_vector(15 downto 0); 
    data_out_x7: in std_logic_vector(15 downto 0); 
    data_out_x8: in std_logic_vector(15 downto 0); 
    data_out_x9: in std_logic_vector(31 downto 0); 
    null_x0: in std_logic; 
    plb_abus: in std_logic_vector(31 downto 0); 
    plb_pavalid: in std_logic; 
    plb_rnw: in std_logic; 
    plb_wrdbus: in std_logic_vector(31 downto 0); 
    positiona: in std_logic; 
    positionb: in std_logic; 
    sg_plb_addrpref: in std_logic_vector(19 downto 0); 
    speeda: in std_logic; 
    speedb: in std_logic; 
    splb_rst: in std_logic; 
    data_in: out std_logic_vector(15 downto 0); 
    data_in_x0: out std_logic_vector(15 downto 0); 
    data_in_x1: out std_logic_vector(15 downto 0); 
    data_in_x10: out std_logic_vector(15 downto 0); 
    data_in_x11: out std_logic_vector(31 downto 0); 
    data_in_x12: out std_logic_vector(15 downto 0); 
    data_in_x13: out std_logic_vector(31 downto 0); 
    data_in_x14: out std_logic_vector(15 downto 0); 
    data_in_x2: out std_logic_vector(15 downto 0); 
    data_in_x3: out std_logic_vector(31 downto 0); 
    data_in_x4: out std_logic_vector(15 downto 0); 
    data_in_x5: out std_logic_vector(15 downto 0); 
    data_in_x6: out std_logic_vector(15 downto 0); 
    data_in_x7: out std_logic_vector(15 downto 0); 
    data_in_x8: out std_logic_vector(15 downto 0); 
    data_in_x9: out std_logic_vector(15 downto 0); 
    en: out std_logic; 
    en_x0: out std_logic; 
    en_x1: out std_logic; 
    en_x10: out std_logic; 
    en_x11: out std_logic; 
    en_x12: out std_logic; 
    en_x13: out std_logic; 
    en_x14: out std_logic; 
    en_x2: out std_logic; 
    en_x3: out std_logic; 
    en_x4: out std_logic; 
    en_x5: out std_logic; 
    en_x6: out std_logic; 
    en_x7: out std_logic; 
    en_x8: out std_logic; 
    en_x9: out std_logic; 
    posdir: out std_logic; 
    pospwm: out std_logic; 
    sl_addrack: out std_logic; 
    sl_rdcomp: out std_logic; 
    sl_rddack: out std_logic; 
    sl_rddbus: out std_logic_vector(31 downto 0); 
    sl_wait: out std_logic; 
    sl_wrcomp: out std_logic; 
    sl_wrdack: out std_logic; 
    speeddir: out std_logic; 
    speedpwm: out std_logic
  );
end ipsdksebesegespozicio;

architecture structural of ipsdksebesegespozicio is
  attribute core_generation_info: string;
  attribute core_generation_info of structural : architecture is "IpSDKSebesegEsPozicio,sysgen_core,{black_box_isim_used=1,clock_period=10.00000000,clocking=Clock_Enables,sample_periods=1.00000000000,testbench=0,total_blocks=336,xilinx_adder_subtracter_block=8,xilinx_arithmetic_relational_operator_block=12,xilinx_bitbasher_block=5,xilinx_black_box_block=1,xilinx_bus_multiplexer_block=15,xilinx_constant_block_block=23,xilinx_counter_block=4,xilinx_delay_block=9,xilinx_edk_processor_block=1,xilinx_gateway_in_block=11,xilinx_gateway_out_block=11,xilinx_inverter_block=15,xilinx_logical_block_block=9,xilinx_mcode_block_block=2,xilinx_multiplier_block=6,xilinx_register_block=29,xilinx_shared_memory_based_from_register_block=16,xilinx_shared_memory_based_to_register_block=16,xilinx_system_generator_block=1,xilinx_type_converter_block=32,}";

  signal ce_1_sg_x13: std_logic;
  signal clk_1_sg_x13: std_logic;
  signal config1_a0_net: std_logic;
  signal config1_a1_net: std_logic;
  signal config1_a2_net: std_logic;
  signal config1_a3_net: std_logic;
  signal config2_a4_net: std_logic;
  signal config2_a5_net: std_logic;
  signal constant3_op_net_x1: std_logic;
  signal constant_op_net_x1: std_logic;
  signal convert1_dout_net_x0: std_logic;
  signal convert2_dout_net_x1: std_logic;
  signal convert3_dout_net_x1: std_logic;
  signal convert4_dout_net_x1: std_logic;
  signal convert5_dout_net_x0: std_logic;
  signal convert5_dout_net_x2: std_logic;
  signal convert6_dout_net_x1: std_logic;
  signal convert7_dout_net_x2: std_logic;
  signal convert8_dout_net_x2: std_logic;
  signal convert9_dout_net_x1: std_logic;
  signal convert_dout_net_x1: std_logic;
  signal data_in_net: std_logic_vector(15 downto 0);
  signal data_in_x0_net: std_logic_vector(15 downto 0);
  signal data_in_x10_net: std_logic_vector(15 downto 0);
  signal data_in_x11_net: std_logic_vector(31 downto 0);
  signal data_in_x12_net: std_logic_vector(15 downto 0);
  signal data_in_x13_net: std_logic_vector(31 downto 0);
  signal data_in_x14_net: std_logic_vector(15 downto 0);
  signal data_in_x1_net: std_logic_vector(15 downto 0);
  signal data_in_x2_net: std_logic_vector(15 downto 0);
  signal data_in_x3_net: std_logic_vector(31 downto 0);
  signal data_in_x4_net: std_logic_vector(15 downto 0);
  signal data_in_x5_net: std_logic_vector(15 downto 0);
  signal data_in_x6_net: std_logic_vector(15 downto 0);
  signal data_in_x7_net: std_logic_vector(15 downto 0);
  signal data_in_x8_net: std_logic_vector(15 downto 0);
  signal data_in_x9_net: std_logic_vector(15 downto 0);
  signal data_out_net: std_logic_vector(15 downto 0);
  signal data_out_x0_net: std_logic_vector(15 downto 0);
  signal data_out_x10_net: std_logic_vector(31 downto 0);
  signal data_out_x11_net: std_logic_vector(15 downto 0);
  signal data_out_x12_net: std_logic_vector(15 downto 0);
  signal data_out_x13_net: std_logic_vector(15 downto 0);
  signal data_out_x14_net: std_logic_vector(15 downto 0);
  signal data_out_x1_net: std_logic_vector(31 downto 0);
  signal data_out_x2_net: std_logic_vector(15 downto 0);
  signal data_out_x3_net: std_logic_vector(15 downto 0);
  signal data_out_x4_net: std_logic_vector(15 downto 0);
  signal data_out_x5_net: std_logic_vector(15 downto 0);
  signal data_out_x6_net: std_logic_vector(15 downto 0);
  signal data_out_x7_net: std_logic_vector(15 downto 0);
  signal data_out_x8_net: std_logic_vector(15 downto 0);
  signal data_out_x9_net: std_logic_vector(31 downto 0);
  signal en_net: std_logic;
  signal en_x0_net: std_logic;
  signal en_x1_net: std_logic;
  signal en_x2_net: std_logic;
  signal en_x3_net: std_logic;
  signal en_x4_net: std_logic;
  signal en_x5_net: std_logic;
  signal en_x6_net: std_logic;
  signal en_x7_net: std_logic;
  signal en_x8_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_érzékel_dir2_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_érzékel_dir_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_érzékel_imp2_net: std_logic;
  signal inkremnt_lis_jelfeldolgoz_2_érzékel_imp_net: std_logic;
  signal logical1_y_net_x1: std_logic;
  signal logical_y_net_x5: std_logic;
  signal null_x0_net: std_logic;
  signal plb_abus_net: std_logic_vector(31 downto 0);
  signal plb_pavalid_net: std_logic;
  signal plb_rnw_net: std_logic;
  signal plb_wrdbus_net: std_logic_vector(31 downto 0);
  signal posdir_net: std_logic;
  signal positiona_net: std_logic;
  signal positionb_net: std_logic;
  signal pospwm_net: std_logic;
  signal register1_q_net_x1: std_logic_vector(15 downto 0);
  signal register2_q_net_x4: std_logic_vector(31 downto 0);
  signal register3_q_net_x1: std_logic_vector(15 downto 0);
  signal register4_q_net_x1: std_logic_vector(15 downto 0);
  signal register5_q_net_x1: std_logic_vector(15 downto 0);
  signal register6_q_net_x1: std_logic_vector(15 downto 0);
  signal register7_q_net_x1: std_logic_vector(15 downto 0);
  signal register8_q_net: std_logic_vector(15 downto 0);
  signal register9_q_net_x0: std_logic_vector(15 downto 0);
  signal register_q_net_x1: std_logic_vector(15 downto 0);
  signal sg_plb_addrpref_net: std_logic_vector(19 downto 0);
  signal sl_addrack_net: std_logic;
  signal sl_rdcomp_net: std_logic;
  signal sl_rddack_net: std_logic;
  signal sl_rddbus_net: std_logic_vector(31 downto 0);
  signal sl_wait_net: std_logic;
  signal sl_wrdack_x1: std_logic;
  signal speeda_net: std_logic;
  signal speedb_net: std_logic;
  signal speeddir_net: std_logic;
  signal speedpwm_net: std_logic;
  signal splb_rst_net: std_logic;

begin
  ce_1_sg_x13 <= ce_1;
  clk_1_sg_x13 <= clk_1;
  data_out_net <= data_out;
  data_out_x0_net <= data_out_x0;
  data_out_x1_net <= data_out_x1;
  data_out_x10_net <= data_out_x10;
  data_out_x11_net <= data_out_x11;
  data_out_x12_net <= data_out_x12;
  data_out_x13_net <= data_out_x13;
  data_out_x14_net <= data_out_x14;
  data_out_x2_net <= data_out_x2;
  data_out_x3_net <= data_out_x3;
  data_out_x4_net <= data_out_x4;
  data_out_x5_net <= data_out_x5;
  data_out_x6_net <= data_out_x6;
  data_out_x7_net <= data_out_x7;
  data_out_x8_net <= data_out_x8;
  data_out_x9_net <= data_out_x9;
  null_x0_net <= null_x0;
  plb_abus_net <= plb_abus;
  plb_pavalid_net <= plb_pavalid;
  plb_rnw_net <= plb_rnw;
  plb_wrdbus_net <= plb_wrdbus;
  positiona_net <= positiona;
  positionb_net <= positionb;
  sg_plb_addrpref_net <= sg_plb_addrpref;
  speeda_net <= speeda;
  speedb_net <= speedb;
  splb_rst_net <= splb_rst;
  data_in <= data_in_net;
  data_in_x0 <= data_in_x0_net;
  data_in_x1 <= data_in_x1_net;
  data_in_x10 <= data_in_x10_net;
  data_in_x11 <= data_in_x11_net;
  data_in_x12 <= data_in_x12_net;
  data_in_x13 <= data_in_x13_net;
  data_in_x14 <= data_in_x14_net;
  data_in_x2 <= data_in_x2_net;
  data_in_x3 <= data_in_x3_net;
  data_in_x4 <= data_in_x4_net;
  data_in_x5 <= data_in_x5_net;
  data_in_x6 <= data_in_x6_net;
  data_in_x7 <= data_in_x7_net;
  data_in_x8 <= data_in_x8_net;
  data_in_x9 <= data_in_x9_net;
  en <= en_net;
  en_x0 <= en_x0_net;
  en_x1 <= en_x1_net;
  en_x10 <= constant_op_net_x1;
  en_x11 <= constant_op_net_x1;
  en_x12 <= constant3_op_net_x1;
  en_x13 <= constant3_op_net_x1;
  en_x14 <= constant3_op_net_x1;
  en_x2 <= en_x2_net;
  en_x3 <= en_x3_net;
  en_x4 <= en_x4_net;
  en_x5 <= en_x5_net;
  en_x6 <= en_x6_net;
  en_x7 <= en_x7_net;
  en_x8 <= en_x8_net;
  en_x9 <= constant_op_net_x1;
  posdir <= posdir_net;
  pospwm <= pospwm_net;
  sl_addrack <= sl_addrack_net;
  sl_rdcomp <= sl_rdcomp_net;
  sl_rddack <= sl_rddack_net;
  sl_rddbus <= sl_rddbus_net;
  sl_wait <= sl_wait_net;
  sl_wrcomp <= sl_wrdack_x1;
  sl_wrdack <= sl_wrdack_x1;
  speeddir <= speeddir_net;
  speedpwm <= speedpwm_net;

  config1: entity work.bitbasher_ce88ef0be9
    port map (
      a => register8_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a0(0) => config1_a0_net,
      a1(0) => config1_a1_net,
      a2(0) => config1_a2_net,
      a3(0) => config1_a3_net
    );

  config2: entity work.bitbasher_ba9332815c
    port map (
      a => register8_q_net,
      ce => '0',
      clk => '0',
      clr => '0',
      a4(0) => config2_a4_net,
      a5(0) => config2_a5_net
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => config1_a0_net,
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => config1_a1_net,
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => config1_a2_net,
      en => "1",
      dout(0) => convert2_dout_net_x1
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => config1_a3_net,
      en => "1",
      dout(0) => convert3_dout_net_x1
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => inkremnt_lis_jelfeldolgoz_2_érzékel_dir_net,
      en => "1",
      dout(0) => convert4_dout_net_x1
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => inkremnt_lis_jelfeldolgoz_2_érzékel_dir2_net,
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => inkremnt_lis_jelfeldolgoz_2_érzékel_imp_net,
      en => "1",
      dout(0) => convert6_dout_net_x1
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => inkremnt_lis_jelfeldolgoz_2_érzékel_imp2_net,
      en => "1",
      dout(0) => convert7_dout_net_x2
    );

  convert8: entity work.xlconvert
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => config2_a4_net,
      en => "1",
      dout(0) => convert8_dout_net_x2
    );

  convert9: entity work.xlconvert
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
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      din(0) => config2_a5_net,
      en => "1",
      dout(0) => convert9_dout_net_x1
    );

  edk_processor_22b9db8c44: entity work.edk_processor_entity_22b9db8c44
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      from_register => data_out_x9_net,
      from_register1 => data_out_x10_net,
      from_register2 => data_out_x11_net,
      from_register3 => data_out_x12_net,
      from_register4 => data_out_x13_net,
      from_register5 => data_out_x14_net,
      plb_abus => plb_abus_net,
      plb_pavalid => plb_pavalid_net,
      plb_rnw => plb_rnw_net,
      plb_wrdbus => plb_wrdbus_net,
      sg_plb_addrpref => sg_plb_addrpref_net,
      splb_rst => splb_rst_net,
      constant5_x0 => sl_wait_net,
      plb_decode_x0 => sl_addrack_net,
      plb_decode_x1 => sl_rdcomp_net,
      plb_decode_x2 => sl_wrdack_x1,
      plb_decode_x3 => sl_rddack_net,
      plb_decode_x4 => sl_rddbus_net,
      plb_memmap_x0 => data_in_net,
      plb_memmap_x1 => en_net,
      plb_memmap_x10 => data_in_x4_net,
      plb_memmap_x11 => en_x4_net,
      plb_memmap_x12 => data_in_x5_net,
      plb_memmap_x13 => en_x5_net,
      plb_memmap_x14 => data_in_x6_net,
      plb_memmap_x15 => en_x6_net,
      plb_memmap_x16 => data_in_x7_net,
      plb_memmap_x17 => en_x7_net,
      plb_memmap_x18 => data_in_x8_net,
      plb_memmap_x19 => en_x8_net,
      plb_memmap_x2 => data_in_x0_net,
      plb_memmap_x3 => en_x0_net,
      plb_memmap_x4 => data_in_x1_net,
      plb_memmap_x5 => en_x1_net,
      plb_memmap_x6 => data_in_x2_net,
      plb_memmap_x7 => en_x2_net,
      plb_memmap_x8 => data_in_x3_net,
      plb_memmap_x9 => en_x3_net
    );

  inkremnt_lis_jelfeldolgoz_2_érzékel: entity work.SensorIncModul
    port map (
      quada => speeda_net,
      quada2 => positiona_net,
      quadb => speedb_net,
      quadb2 => positionb_net,
      dir => inkremnt_lis_jelfeldolgoz_2_érzékel_dir_net,
      dir2 => inkremnt_lis_jelfeldolgoz_2_érzékel_dir2_net,
      imp => inkremnt_lis_jelfeldolgoz_2_érzékel_imp_net,
      imp2 => inkremnt_lis_jelfeldolgoz_2_érzékel_imp2_net
    );

  inverter: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      ip(0) => logical1_y_net_x1,
      op(0) => speedpwm_net
    );

  inverter1: entity work.inverter_e5b38cca3b
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      clr => '0',
      ip(0) => convert5_dout_net_x0,
      op(0) => pospwm_net
    );

  positioncontrol_a26616fb47: entity work.positioncontrol_entity_a26616fb47
    port map (
      ce_1 => ce_1_sg_x13,
      changedir => convert8_dout_net_x2,
      clk_1 => clk_1_sg_x13,
      dirsensor => convert5_dout_net_x2,
      enanulsig => convert1_dout_net_x0,
      impulsesensor => convert7_dout_net_x2,
      nullsignal => null_x0_net,
      pidtsimpsignal => logical_y_net_x5,
      pwmensig => convert_dout_net_x1,
      q => register7_q_net_x1,
      refv16bitsig => register6_q_net_x1,
      constant_x1 => constant_op_net_x1,
      convert8_x0 => data_in_x11_net,
      counterposition => data_in_x9_net,
      dirposition => posdir_net,
      pwmsigout => convert5_dout_net_x0,
      sebesseg => data_in_x10_net
    );

  register1: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x0_net,
      en => "1",
      rst => "0",
      q => register1_q_net_x1
    );

  register2: entity work.xlregister
    generic map (
      d_width => 32,
      init_value => b"00000000000000000000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x1_net,
      en => "1",
      rst => "0",
      q => register2_q_net_x4
    );

  register3: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x2_net,
      en => "1",
      rst => "0",
      q => register3_q_net_x1
    );

  register4: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x4_net,
      en => "1",
      rst => "0",
      q => register4_q_net_x1
    );

  register5: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x3_net,
      en => "1",
      rst => "0",
      q => register5_q_net_x1
    );

  register6: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x5_net,
      en => "1",
      rst => "0",
      q => register6_q_net_x1
    );

  register7: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x6_net,
      en => "1",
      rst => "0",
      q => register7_q_net_x1
    );

  register8: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x7_net,
      en => "1",
      rst => "0",
      q => register8_q_net
    );

  register9: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_x8_net,
      en => "1",
      rst => "0",
      q => register9_q_net_x0
    );

  register_x0: entity work.xlregister
    generic map (
      d_width => 16,
      init_value => b"0000000000000000"
    )
    port map (
      ce => ce_1_sg_x13,
      clk => clk_1_sg_x13,
      d => data_out_net,
      en => "1",
      rst => "0",
      q => register_q_net_x1
    );

  sebessegcontrolmodul_6aa8047d99: entity work.sebessegcontrolmodul_entity_6aa8047d99
    port map (
      ce_1 => ce_1_sg_x13,
      clk_1 => clk_1_sg_x13,
      cseredirspeed => convert9_dout_net_x1,
      dirsensor => convert4_dout_net_x1,
      enacoupling => convert3_dout_net_x1,
      forgotalpsugara => register9_q_net_x0,
      impulsesensor => convert6_dout_net_x1,
      pidts32bitsig => register2_q_net_x4,
      pwmensig => convert2_dout_net_x1,
      pwmfrek16bit => register1_q_net_x1,
      q0_16bit => register3_q_net_x1,
      q1_16bit => register4_q_net_x1,
      q2_16bit => register5_q_net_x1,
      refspeed16bitsig => register_q_net_x1,
      speedposition => data_in_x10_net,
      addsub_x0 => data_in_x14_net,
      constant3_x0 => constant3_op_net_x1,
      convert2_x0 => data_in_x13_net,
      countersebesseg => data_in_x12_net,
      dirspeed => speeddir_net,
      pwmsigout => logical1_y_net_x1,
      tsimpulsesig => logical_y_net_x5
    );

end structural;
