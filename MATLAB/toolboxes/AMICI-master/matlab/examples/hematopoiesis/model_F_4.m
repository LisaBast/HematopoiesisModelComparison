
%%
% COMPILATION

[exdir,~,~]=fileparts(which('model_F_4.m'));
% compile the model
amiwrap('model_F_4','model_F_4_syms',exdir)
% add the model to the path
addpath(genpath([strrep(which('amiwrap.m'),'amiwrap.m','') 'models/model_F_4']))

