%
% Filename:    nexys2iroobo_postgeneration.m
%
% Description: Defines board-specific parameters (e.g. ucf file, 
%              non-memory mapped ports) before invoking the 
%              generic JTAG post-generation callback function.

function st = nexys2iroobo_postgeneration(params)

  % Device position in the boundary scan chain (beginning at 1).
  params.('boundary_scan_position') = '1';

  % Instruction register length of every scan chain device. 
  params.('instruction_register_lengths') = '[6, 8]';

  % Constraints file to use for this compilation target.
  params.('ucf_template') = 'nexys2iroobo.ucf'; 

  % Define non-memory mapped ports.
  non_mm_ports.('JA1') = {'out', 8};
  non_mm_ports.('JB1') = {'in', 8};
  non_mm_ports.('JC1') = {'in', 8};
  params.('non_memory_mapped_ports') = non_mm_ports;

  % You may use your own top-level netlist file by uncommenting the 
  % following line and setting the 'vendor_toplevel' field accordingly.
  % params.('vendor_toplevel') = 'nexys2iroobo_toplevel';

  % If you use your own top-level, you must tell SysGen what netlist 
  % files are required.  Set the 'vendor_netlists' field to a cell 
  % array listing the required file names. 
  % params.('vendor_netlists') = {'nexys2iroobo_toplevel.ngc','nexys2iroobo.edf'};

  % Invoke the JTAG post-generation callback function to run
  % Xilinx tools and create a run-time co-simulation token.
  try
    st = xlJTAGPostGeneration(params);
  catch
    errordlg(['-- An unknown error was encountered while running ' ...
             'the JTAG hardware co-simulation flow for the ' ...
             'Nexys2iROOBO']);
    st = 1;
  end
