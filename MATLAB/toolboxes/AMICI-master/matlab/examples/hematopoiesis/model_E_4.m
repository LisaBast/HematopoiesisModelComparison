
%%
% COMPILATION

[exdir,~,~]=fileparts(which('model_E_4.m'));
% compile the model
amiwrap('model_E_4','model_E_4_syms',exdir)
% add the model to the path
addpath(genpath([strrep(which('amiwrap.m'),'amiwrap.m','') 'models/model_E_4']))

