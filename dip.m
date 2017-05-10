function tau=dip(elev,power)
%%% Recibe datos de elevación y su potencia asociada, además de la
%%% temperatura de receptor obtenida con el hot-cold test para calcular el
%%% tau y el ruido de sistema.
elevrads=elev*2*pi/180;
wh=power(11);
wsky=power(1:10);
deltaw=wh-wsky;
lnw=log(deltaw);
x=1./sin(elevrads);

p=polyfit(x,lnw,1);
tau=abs(p(1));

plot(x,lnw)
title('Potencia de ruido atmosférico')
ylabel('ln(delta W)')
xlabel('1/sin(elev.)')

end
