%% 
% name = 'mnist';
% fn_data = fullfile('D:\Users\sp\data\dataset_mat',[name,'.mat']);
% dir_rst = fullfile('D:\Users\sp\code_work\gitlab\MulticlassLogitBoost\matlab\rst\pSampVTLogitBoost',name);

% name = 'pendigits';
% fn_data = fullfile('.\dataset',[name,'.mat']);
% dir_rst = fullfile('.\rst\pSampVTLogitBoost',name);

name = 'optdigits';
fn_data = fullfile('.\dataset',[name,'.mat']);
dir_rst = fullfile('.\rst\pSampVTLogitBoost',name);
%%
num_Tpre = 2000;
T = 700;
cv  = {0.1};
cJ = {20};
cns = {1};
crs = {0.75};
crf = {0.75};
crc = {0.5};
%%
h = batch_pSampVTLogitBoost();
h.num_Tpre = num_Tpre;
h.T = T;
h.cv = cv;
h.cJ = cJ;
h.cns = cns;
h.crs = crs;
h.crf = crf;
h.crc = crc;
run_all_param(h, fn_data, dir_rst);
clear h;