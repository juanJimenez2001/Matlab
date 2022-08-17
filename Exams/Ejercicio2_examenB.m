clc
clear

xi=[-3:3]';
fi=[0 2 5 8 4.5 2 0]';

H=[xi.^2 xi.^3];
b=fi-8;
c=H\b

x=0;
p0=8+c(1)*x.^2+c(2)*x.^3;
desviacion=abs(8-p0);

r=H*c-b; %vector de residuos