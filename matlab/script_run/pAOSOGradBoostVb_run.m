%%
% name = 'optdigits';
% name = 'zipcode38';
% name = 'optdigits05';
name = 'pendigits49';
% name = 'mnist10k05';
% dir_data = 'D:\Users\sp\data\dataset2_mat';
dir_data = 'D:\Data\dataset2_mat';
fn_data = fullfile(dir_data, [name,'.mat']);
dir_rst = fullfile('.\',...
  'rst\pAOSOGradBoostVb',name);
%%5
num_Tpre = 5000;
T = 5000;
cv  = {0.1};
cJ = {8};
cns = {1};
%%% sample
crs = {1.1};
cwrs = {1.1};
%%% feature
crf = {0.05};
%%
h = batch_pAOSOGradBoostVb();
h.num_Tpre = num_Tpre;
h.T = T;
h.cv = cv;
h.cJ = cJ;
h.cns = cns;
% sample
h.cwrs = cwrs;
h.crs = crs;
% feature
h.crf = crf;
run_all_param(h, fn_data, dir_rst);
clear h;
