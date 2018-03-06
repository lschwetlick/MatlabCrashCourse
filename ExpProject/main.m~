%% My First PTB Experiment
clear
sca
%% Parameters
design=setParams()
design.trialList=trialListGen(design);
%% PTB Setup
PsychDefaultSetup(2);
Screen('Preference', 'SkipSyncTests', 1);
% screens = Screen('Screens')
screenNumber = 0;
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, design.bgCol);
%% Body
instructionText(window,design);
for t=1:trials
    
    fixationCross(window, design);
    targetPres(window, design);
    
end
%% Ende
endText(window, design);

sca