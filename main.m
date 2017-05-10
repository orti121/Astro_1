clear
load('medidas.mat')

%%% Hot-Cold test %%%
hot=0.615;
cold=0.424;
trec=hotcold(hot,cold); %Temperatura de receptor calculada por nosotros.
tsoft=426.7; %Temperatura de receptor entregada por el software del telescopio.
errp=100*abs((trec-tsoft)/tsoft);
disp('-------------------------')
disp('Resultados Hot-Cold Test')
disp('-------------------------')
disp(['Trec calculada = ' sprintf('%0.3f',trec) 'K'])
disp('Trec software = 426.7K')
disp(['Diferencia porcentual = ' sprintf('%0.2f',errp) '%'])
disp('------------o------------')
disp(' ')
%%%%%%%%%%%%%%%%%%%%%

%%% Antenna Dipping %%%
tauw=dip(elev,power);

disp('-------------------------')
disp('Resultados Antenna Dipping')
disp('-------------------------')
disp(['Tau = ' sprintf('%0.3f',tauw)])
disp('------------o------------')
disp(' ')

%%%%%%%%%%%%%%%%%%%%%%%