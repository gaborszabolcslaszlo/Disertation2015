%
% Filename:    sparten3e500kpq208c4_postgeneration.m
%
% Description: Defines board-specific parameters (e.g. ucf file, 
%              non-memory mapped ports) before invoking the 
%              generic JTAG post-generation callback function.

function st = sparten3e500kpq208c4_postgeneration(params)

  % Device position in the boundary scan chain (beginning at 1).
  params.('boundary_scan_position') = '1';

  % Instruction register length of every scan chain device. 
  params.('instruction_register_lengths') = '[6, 8]';

  % Constraints file to use for this compilation target.
  params.('ucf_template') = 'sparten3e500kpq208c4.ucf'; 

  % Define non-memory mapped ports.
  non_mm_ports.('LED') = {'out', 4};
  non_mm_ports.('Rst') = {'in', 1};
  non_mm_ports.('Pmod1') = {'in', 8};
  non_mm_ports.('Pmod2') = {'out', 8};
  params.('non_memory_mapped_ports') = non_mm_ports;

  % You may use your own top-level netlist file by uncommenting the 
  % following line and setting the 'vendor_toplevel' field accordingly.
  % params.('vendor_toplevel') = 'sparten3e500kpq208c4_toplevel';

  % If you use your own top-level, you must tell SysGen what netlist 
  % files are required.  Set the 'vendor_netlists' field to a cell 
  % array listing the required file names. 
  % params.('vendor_netlists') = {'sparten3e500kpq208c4_toplevel.ngc','sparten3e500kpq208c4.edf'};

  % Invoke the JTAG post-generation callback function to run
  % Xilinx tools and create a run-time co-simulation token.
  try
    st = xlJTAGPostGeneration(params);
  catch
    errordlg(['-- An unknown error was encountered while running ' ...
             'the JTAG hardware co-simulation flow for the ' ...
             'Sparten3e500kpq208c4']);
    st = 1;
  end
