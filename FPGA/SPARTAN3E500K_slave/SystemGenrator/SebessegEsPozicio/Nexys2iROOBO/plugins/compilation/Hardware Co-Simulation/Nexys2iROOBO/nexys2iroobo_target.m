%
% Filename:    nexys2iroobo_target.m
%
% Description: This file defines the supported and default compilation
%              settings for the Nexys2iROOBO
%

function settings = nexys2iroobo_target

  % Define parts supported by the target.
  part0.('family') = 'spartan3e';
  part0.('part') = 'xc3s1200e';
  part0.('speed') = '-4';
  part0.('package') = 'fg320';
  settings.('supported_parts').('allowed') = {part0};

  % Target has a fixed, free-running clock period.
  settings.('sysclk_period').('allowed') = '20';

  % Define post-generation callback function.
  settings.('postgeneration_fcn') = 'nexys2iroobo_postgeneration';

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
