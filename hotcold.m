function trec=hotcold(wh,wc)
% Devuelve la temperatura de receptor obtenida con hot-cold test
th=300;
tc=77;
y=wh/wc;
trec=(th-y*tc)/(y-1);
end