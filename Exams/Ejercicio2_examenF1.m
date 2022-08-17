clc
clear

xi=[0:0.5:3]';
fi=1./(1.25+cos(xi));

H=[xi.^0 xi.^2];
b=fi;
c=H\b;
A=c(1)
B=0;
C=c(3)

r=H*c-b; %vector de residuos
Error=sum(r.^2); %Error global