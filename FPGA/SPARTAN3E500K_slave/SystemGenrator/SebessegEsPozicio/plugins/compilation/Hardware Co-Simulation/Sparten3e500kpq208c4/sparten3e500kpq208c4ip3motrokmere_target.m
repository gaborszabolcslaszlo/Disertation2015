%
% Filename:    sparten3e500kpq208c4ip3motrokmere_target.m
%
% Description: This file defines the supported and default compilation
%              settings for the Sparten3e500kpq208c4
%

function settings = sparten3e500kpq208c4ip3motrokmere_target

  % Define parts supported by the target.
  part0.('family') = 'spartan3e';
  part0.('part') = 'xc3s500e';
  part0.('speed') = '-4';
  part0.('package') = 'pq208';
  settings.('supported_parts').('allowed') = {part0};

  % Target has a fixed, free-running clock period.
  settings.('sysclk_period').('allowed') = '20';

  % Define post-generation callback function.
  settings.('postgeneration_fcn') = 'sparten3e500kpq208c4ip3motrokmere_postgeneration';

  % Set default target directory for this target.
  settings.('directory') = './netlist';

  % List supported synthesis tools.
  settings.('synthesis_tool') = 'XST';

  % Define pre-compile callback function.
  settings.('precompile_fcn') = 'xlJTAGPreCompile';

  % Define post-generation callback function.
  settings.('getimportblock_fcn') = 'xlGetHwcosimBlockName';

  % Disable the clock location constraint field.
  settings.('clock_loc').('allowed') = 'Fixed';

  % Define a hardware co-simulation settings GUI.
  settings.('settings_fcn') = 'xlJTAGXFlowSettings';
