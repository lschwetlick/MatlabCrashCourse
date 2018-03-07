%% My First Experiment (w/o PTB)
clear
clc
%% Parameters
% vp=input('Versuchsperson Nr: ')
nTrial=30
trials=repelem([1,2],nTrial/2)
trials=trials(randperm(length(trials)))
%% Body
allNumbers=[];
for i=trials
    if i==1
        number=input('eine Zahl zwischen 1 und 5: ')
    else
        number=input('eine Zahl zwischen 6 und 10: ')
    end%if
    allNumbers=[allNumbers,number];
end%for
%% Ende
disp('Vielen Dank für die Teilnahme!')
% filename=strcat('vp', num2str(vp),'.mat')
% save(filename, 'allNumbers')
%% Auswertung
hist(allNumbers)