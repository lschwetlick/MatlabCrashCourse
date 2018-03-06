% Clear the workspace and the screen
sca;
clear

% Here we call some default settings for setting up Psychtoolbox
PsychDefaultSetup(2);
% Typical LCD screens dont sync well. This will usually work once the code
% runs in the lab, but for now we disable syncing  
Screen('Preference', 'SkipSyncTests', 1);
screenNumber = 0;

% Get Relevant Parameters
design=setParams();
% Open an on screen window using PsychImaging and color it in rgb.
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, design.bgCol);

% ADD FUNTION TO TEST HERE


sca;