%% config
name = 'isolet';
algoname1 = 'pCoSampVTLogitBoost';
dir_root1 = fullfile('.\rst',algoname1);
fn1 = 'T5000_v1.0e-001_J20_ns1_rf5.14e-002_rb1.00e-002_wrb1.10e+000.mat';

dir_data = 'D:\Users\sp\data\dataset3_mat';
%% load
ffn1 = fullfile(dir_root1,name,fn1);
tmp = load(ffn1);
it1 = tmp.it;
err_it1 = tmp.err_it;
abs_grad1 = tmp.abs_grad;
% abs_grad1 = tmp.loss_tr;
% F1 = tmp.F;
num_it1 = tmp.num_it;
time_tr1 = tmp.time_tr;

tree_node_cc = tmp.tree_node_cc;
tree_node_sc = tmp.tree_node_sc;
clear tmp;
%% examples & class
for i = 1 : numel(tree_node_sc)
  sc(i) = tree_node_sc{i}(1);
end
for i = 1 : numel(tree_node_cc)
  cc(i) = tree_node_cc{i}(1);
end
%% 
%%
% figure('name',name); 
% title('#examples');
% hold on;
% plot(sc,'marker','x','linewidth',2);
% hold off;
% grid on;
%% print examples & class
% navg = mean(sc);
% cavg = mean(cc);
% fprintf(name);fprintf('\n');
% fprintf('avg examples = %d\n',navg);
% 
% tmp_fn = fullfile(dir_data, [name,'.mat']);
% tmp = load(tmp_fn);
% ntr = size(tmp.Xtr,2);
% clear tmp;
% fprintf('ntr = %d\n', ntr);
% fprintf('rs = %d\n', navg/ntr);
%% class 
%%
% figure;
% title('nrc');
% hold on;
% plot(nr_wtc,'marker','o','linewidth',4,'color','r');
% hold off;
% grid on;
%% plot error
% figure('name',name); title error; hold on;
% plot(it1,err_it1, 'color','r','lineWidth', 2, 'marker','.');
% grid on;
%% plot grad
% figure('name',name);  
% title('||grad||_1'); 
% hold on;
% plot(it1, log10( eps + abs_grad1(it1) ), 'color','r','marker','.');
% hold off;
% grid on;