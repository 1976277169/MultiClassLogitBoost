%%
% settings
% settings_labpc
settings_labserver
%%
name = 'VTDropoutLogitBoost_mex';
fn = {...
  [name,'.cpp'],...
  'utilCPP.cpp',...
  fullfile(dir_src,'MLData.cpp'),...
  fullfile(dir_src,'VTDropoutLogitBoost.cpp')
  };
%% Debug
% outnamed = sprintf('-output %s', [name,'d']);
% cmdd = sprintf('mex -g %s %s %s %s',...
%   fn{:});
% cmdd = sprintf('%s %s',...
%   cmdd, opt_cmdd);
% eval(cmdd);
% copyfile([name,'.',mexext], './../private/');
%% Release
outname = sprintf('-output %s', name);
cmd = sprintf('mex -O %s %s %s %s',...
  fn{:});
cmd = sprintf('%s %s',...
  cmd, opt_cmd);
eval(cmd);
copyfile([name,'.',mexext], './../private/');