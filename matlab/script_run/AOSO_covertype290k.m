%%
fn_data = '.\dataset\covertype290k.mat';
dir_rst = 'rst\AOSOLogitBoost\covertype290k';
% dir_rst = './';
%%
num_Tpre = 2000;
T = 50000;
cv = {0.1};
cJ = {20};
cns = {1};

h = batch_AOSOLogitBoost();
h.num_Tpre = num_Tpre;
h.T = T;
h.cv = cv;
h.cJ = cJ;
h.cns = cns;
run_all_param(h, fn_data, dir_rst);
clear h;
