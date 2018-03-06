%% My First PTB Experiment
clear
sca
%% Parameters
vp=input('Versuchsperson Nr: ')
trials=10
bgCol=[0.9,0.9,0.9];

%% PTB Setup
PsychDefaultSetup(2);
Screen('Preference', 'SkipSyncTests', 1);
% screens = Screen('Screens')
screenNumber = 0;
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, bgCol)  ;
%% Body
allNumbers=[];
for t=1:trials
    disp(t)
    Screen('fillRect', window, bgCol,[]);
    DrawFormattedText(window, 'eine Zahl zwischen 1 und 10: ');
    %Flip to the screen
    Screen('flip', window);
    WaitSecs(0.5)
    [secs, keyCode] = KbWait();
    key=KbName(keyCode);
    allNumbers=[allNumbers,key];
end
%% Ende
sca
disp('Vielen Dank für die Teilnahme!')
filename=strcat('vp', num2str(vp),'.mat')
save(filename, 'allNumbers')
%% Auswertung
hist(allNumbers)