% from: http://www.peterscarfe.com/ptbtutorials.html
% Clear the workspace and the screen
sca;
close all;
clear

% Here we call some default settings for setting up Psychtoolbox
PsychDefaultSetup(2);
% Typical LCD screens dont sync well. This will usually work once the code
% runs in the lab, but for now we disable syncing  
Screen('Preference', 'SkipSyncTests', 1);

% Get the screen numbers. This gives us a number for each of the screens
% attached to our computer.
screens = Screen('Screens');

% To draw we select the maximum of these numbers. So in a situation where we
% have two screens attached to our monitor we will draw to the external
% screen.
screenNumber = max(screens);
screenNumber = min(screens);

% Open an on screen window using PsychImaging and color it in rgb.
red=[1,0,0];
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, red)  ;

% Now we have drawn to the screen we wait for a keyboard button press (any
% key) to terminate the demo.
KbStrokeWait;
 
% Screen('fillRect', window, [0,1,1],[]);
% % Flip to the screen. This command basically draws all of our previous
% % commands onto the screen.
% Screen('flip', window)
% 
% KbStrokeWait;


% Clear the screen.
sca;