function [opt] = getNoiseSettings(opt,noiseLevel)
    switch noiseLevel 
        case 'weak'
            switch opt.noiseType 
                case 'LogLaplace'
                    opt.sigma=0.4/sqrt(2);
                case 'LogNormal'
                    opt.sigma=0.4;
            end
        case 'middle'
            switch opt.noiseType 
                case 'LogLaplace'
                    opt.sigma=0.8/sqrt(2);
                case 'LogNormal'
                    opt.sigma=0.8;
            end
        case 'strong'
            switch opt.noiseType 
                case 'LogLaplace'
                    opt.sigma=1.2/sqrt(2);
                case 'LogNormal'
                    opt.sigma=1.2;
            end
        case 'realistic'
            if strwcmp(opt.noiseType,'Log*')
                opt.sigma=getRealisticNoiseLevelFromRealDataFitResults(opt);
            end
        otherwise
            opt.sigma=[];
            error('noise level option not implemented! Specify in function getAppSettings first!')
    end
    
    function [sigma] = getRealisticNoiseLevelFromRealDataFitResults(opt)
        c_path=cd();
        HO_str = '';
        if strwcmp(opt.optimizationMode,'hierarchical')
            HO_str = 'HO_';
        end 
        ic_str = '';
        if opt.fitInitialConds 
           ic_str = '_fit_iC';  
        end

        cd(opt.c_path)
        cd('../')
        cd('./model_comparison_analysis')
        d_path=cd();
        [individuals,~] = getIndividuals('2019_07_data.xlsx',opt.fit_repetitions_seperately);
        
        path=['./results_hierarchy_comparison_BIC_',num2str(opt.n_divStates),'divs_',num2str(opt.n_intermediateStates),'iS_',HO_str,'LogNormal',ic_str];
        cd(path)

        d=dir(path); 
        isub = [d(:).isdir];
        hierarchy_FolderNames = {d(isub).name}';
        hierarchy_FolderNames(ismember(hierarchy_FolderNames,{'.','..'})) = [];
        S=[]; 
        % model='model_';
        % h_id = find(strwcmp(hierarchy_FolderNames,['*',model,'*']));

        h_id = find(strwcmp(hierarchy_FolderNames,[opt.model_sim,'_model']));
        if ~isempty(h_id)
            cd(hierarchy_FolderNames{h_id});
            d=dir([path,'/',hierarchy_FolderNames{h_id}]); 
            isub = [d(:).isdir];
            IndividualFolderNames = {d(isub).name}';
            IndividualFolderNames(ismember(IndividualFolderNames,{'.','..'})) = [];
            for i_id=1:length(IndividualFolderNames)
                if strwcmp(IndividualFolderNames{i_id},strcat('*',individuals))
                    cd(IndividualFolderNames{i_id});
                    load('analytical_results.mat');
                    if length(size(noise))==4
                        sigma_HO = [];
                        for i=1:size(noise,4)%noise: 1 x n_observables x 1 x repetition*replicates
                            sigma_HO = [sigma_HO;sqrt(noise(1,:,1,i))];%sigma_HO: repetition*replicates x n_observables 
                        end
                    else
                        sigma_HO = sqrt(noise);
                    end
                    S = [S; sigma_HO];
                    cd('../')
                end
            end
        end
        cd('../')
        cd(c_path)



        if strcmp(opt.noiseType,'Loglaplace')
            sigma = mean(S)./sqrt(2);
        else
            sigma = mean(S);
        end
        sigma=round(sigma*10)/10;
    end
    
end