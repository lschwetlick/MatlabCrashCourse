%% My First Experiment (w/o PTB)
%% Parameters
vp=input('Versuchsperson Nr: ')
trials=10
%% Body
allNumbers=[];
for i=1:trials
    number=input('eine Zahl zwischen 1 und 10: ')
    allNumbers=[allNumbers,number];
end
%% Ende
disp('Vielen Dank für die Teilnahme!')
filename=strcat('vp', num2str(vp),'.mat')
save(filename, 'allNumbers')
%% Auswertung
hist(allNumbers)