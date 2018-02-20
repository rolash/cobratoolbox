%This script creates the variables through which the required parameters 
%and files are inputted to the metagenomic pipeline (MgPipe). Input 
%variables should be changed by the user according to what specified in the 
%documentation. Running this script will automatically launch the pipeline. 

% Federico Baldini, 2017-2018


%REQUIRED INPUT VARIABLES
modPath='Y:\Federico\Eldermet\191017\models\'; %path to microbiota models
infoPath='Y:\Federico\HMP\Run_Almut_17_03_31_with10_new_strains\'; %path to the information files
resPath='Y:\Federico\testingMgPipe\'; %path to results directory 
objre={'EX_biomass(e)'}; %name of objective function of organisms
sdiet='EUAverageDiet' %standard diet type
figform = '-depsc' %the output is vectorized picture, change to '-dpng' for .png
nwok = 3; %number of cores dedicated for parallelization 
autofix = 1 %autofix for names mismatch
compmod = 0; % if outputs in open formats should be produced for each section (1=T)
patstat = 0; %if documentations on patient health status is provided (0 not 1 yes)
rdiet = 0 %to enable also rich diet simulations 
cobrajl = 0 
FVAtype = 0;
%END OF REQUIRED INPUT VARIABLES

%%
%PIPELINE LAUNCHER -> Please don't modify this section !
autorun = 1
if autorun==1
    parpool(nwok)
    disp('Well done! Pipeline successfully activated and running!')
    MgPipe
else
    warning('autorun function was disabled. You are now running in manual / debug mode. If this is not what you wanted, change back to ‘autorun’=1. Please note that the usage of manual mode is strongly discouraged and should be used only for debugging purposes.')
    edit('MgPipe.m')
end