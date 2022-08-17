clc
clear
xi=[-1 0 1 2]';
yi=[-2 -1 0 3]';

%Calcular H
%Base --> {1 x^2}

H=[xi.^0 xi.^2];
b=yi;
c=H\b; %equivale a pasar a Ec. normales y resolver el sistema
A=c(1);
B=c(2);

xx=[-1:0.01:2];
yy=A+B.*xx.^2;
plot(xi,yi,'ro',xx,yy,'b');

r=H*c-b %Vector residuo
Error=sum(r.^2) %Error global ajuste
