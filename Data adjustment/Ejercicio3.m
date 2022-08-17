clc
clear

xi=[-0.44 0.09 0.92 0.23 -0.68 0.81 -0.85 0.55]';
yi=[0.12 0.09 0.48 -0.01 0.26 0.30 0.38 0.15]';

%1º funcion
H=[xi.^0 xi xi.^2];
b=yi;
c=H\b; %equivale a pasar a Ec. normales y resolver el sistema
A=c(1);
B=c(2);
C=c(3);

xx=[-1:0.01:2];
yy=A+B.*xx+C.*xx.^2;
plot(xi,yi,'ro',xx,yy,'b');

%2ºfuncion
H=[xi.^0 exp(xi) exp(-xi)];
b=yi;
c=H\b; %equivale a pasar a Ec. normales y resolver el sistema
A=c(1);
B=c(2);
C=c(3);

xx=[-1:0.01:2];
yy=A+B*exp(xx)+C*exp(-xx);
plot(xi,yi,'ro',xx,yy,'b');