% Angenommen wir wollen ein Experiment bauen wo Boxen entweder grün oder 
% blau sind und entweder links oder rechts erscheinen 
%% Parameter
trialN = 20;
farbenN=4;
seitenN=2;

%%
trials= 1:20;

farbe= repelem([1:farbenN], trialN/farbenN);

seite= repmat([1:seitenN], 1,trialN/seitenN);

trialList = horzcat(farbe', seite');
rng(1234)
randIx= randperm(size(trialList,1));
trialList= trialList(randIx,:);
trialList= horzcat(trials', trialList)