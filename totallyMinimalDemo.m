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
% screenNumber=0;
screenNumber = min(screens);

% Open an on screen window using PsychImaging and color it in rgb.
red=[1,0,0];
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, red);

frames= 1:50:5000;
anfangX=0;
anfangY=0;
bgCol=red;
squareCol=[1,1,0];
rectSize=[0,0,50,50];

for i=frames
    Screen('FillRect', window, bgCol)
    rect=CenterRectOnPoint(rectSize, anfangX+i, anfangY+i);
    Screen('FillRect', window, [0,0,1], rect)
    Screen('flip', window) 
    WaitSecs(0.1)
end

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