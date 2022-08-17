clc
clear

xi=[0:0.5:3]';
fi=1./(1.25+cos(xi));

H=[fi fi.*xi.^2];
b=fi.^0;
c=H\b;
A=c(1)
B=c(2)

r=H*c-b; %vector de residuos
Error=sum(r.^2); %Error global
