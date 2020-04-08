function [opt,model_str,j_end,j_sim_end,nl_end] = getAppSettings_hierarchy(opt)

opt.group = 'healthy';%MDS
opt.realdata = true;%false;%

%% model states
opt.models_implemented = {'model_B','model_C','model_D','model_E','model_F','model_G','model_H','model_I','model_J'};
% opt.models_implemented = {'model_A','model_B','model_C','model_D','model_E','model_F','model_G','model_H','model_I','model_J'};
opt.model = opt.models_implemented{1}; %updated later, only for initialization
model_str = opt.models_implemented;
j_sim_end = length(model_str); %index for model schemes

opt.fitDeadCells = false;%true;
% for fitting number of divisions:
opt.n_divStates = 7;
if opt.n_divStates>1
    opt.modelAccumulateInLastState = true;
else
    opt.modelAccumulateInLastState = false;
end
opt.fit_repetitions_seperately = true;%important for loading test parameter in case data is simulated otherwise: false;%

%% transformation of parameters:
% opt.parScale ='log10'; 
opt.parScale ='partly_log10'; %everything log10 transformed except initital conditions
% opt.parScale='none';

%% constraints on parameters:
opt.applyParConstraints = false;

%% noise model:
% opt.noiseType = 'LogLaplace'; %--> issues with convergence
opt.noiseType = 'LogNormal'; %--> most appropriate

%% optimization settings
opt.PLcalculation = false;%true; %calculation of profile likelihoods
opt.CI_levels = [0.9,0.95,0.99]; %levels for PL-confidence intervals
opt.optimizationMode = 'hierarchical';%'standard';%
opt.testGradient = true;%false;

%% for plotting the (simulated/ experimental) data
% opt.dataType = 'totalNumbers'; 
% opt.dataType = 'percentages'; 
% opt.dataType = 'logTotalNumbers';
opt.dataType = 'log2TotalNumbers';
% opt.dataType = 'log10TotalNumbers';
        
%% storing restructured data/ adapted simulation files/ results
opt.save = true;
opt.exportData4Monolix= false;%true;    
opt.exportData4Python = true;%false;
opt.exportResults4Python = true;%false;%if set to false, data will be plotted with MATLAB

opt.fitInitialConds=true;%false;
if opt.realdata == true
    opt.fileName = '2019_07_data.xlsx';
%     [opt.individuals,~] = getIndividuals(opt.fileName,opt.group,opt.fit_repetitions_seperately,false);
%     opt.individuals = {'215_1','460_1','354_1','140_1'};
    opt.individuals = {'353_1','345_1','559_1','560_1','482_1','522_1'};
    opt.n_individuals = length(opt.individuals);
    opt.n_intermediateStates = 4;%:5;
%     opt.n_intermediateStates = 3; 
    opt.applyNoise = false;
    opt.noiseLevel='';
else
    opt.model_sim = opt.models_implemented{1}; %only initialization, updated later
    [opt] = getSimulationSettings(opt);
    opt.applyNoise = true;%false;
    if opt.applyNoise == true
        opt.noiseLevel = {'realistic','strong','middle','weak'};
    end
    opt.n_individuals=1;
    opt.n_replicates=1; %determine nr of samples
    opt.n_repetitions=1;%determine nr of repititions (different initial conditions, but same rates)
    opt.individuals = cellstr(num2str([1:opt.n_individuals]'));
    opt.n_intermediateStates = 3;
end

j_end = length(model_str); %index for model schemes

if opt.fitInitialConds
    if opt.fit_repetitions_seperately
        opt.n_initialConds_N=1;
    elseif opt.realdata == false
        opt.n_initialConds_N = opt.n_repetitions;
    else
        opt.n_initialConds_N=1; %updated later
    end
else
    opt.n_initialConds_N=0;
end

%how many noise level iterations?
if opt.applyNoise
    if iscell(opt.noiseLevel)
        nl_end = length(opt.noiseLevel);
    else
        nl_end=1;
        opt = getNoiseSettings(opt,opt.noiseLevel);
    end
else
    nl_end=1;
end

opt.structuralIdentifiability=false;
opt.validation=false;

%for plotting: specify colors for cell types
opt.c_map =[204 0 0; %HSCs
            255 128 0; %MPP 
            0 51 102;  %MLP
            102 0 204; %CMP 
            0 153 76;  %GMP 
            87 215 247;  %MEP
            255 224 14; %mature cells
            160 160 160]./255;%dead cells dunkler

%AMICI options
opt.amiOptions = amioption('sensi',1,...
                           'maxsteps',1e9,...
                           'atol', 1e-8, ...
                           'rtol', 1e-6);
end