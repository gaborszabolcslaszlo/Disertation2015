%
% Filename:    xltarget.m 
%
% Description: Defines the target compilation entry point for the
%              Nexys2iROOBO

function s = xltarget
  s.('name') = 'Nexys2iROOBO';
  s.('target_info') = 'nexys2iroobo_target';
  s.('libgen_info') = 'nexys2iroobo_libgen';
  s.('sbd_xml') = 'nexys2iroobo.xml';
