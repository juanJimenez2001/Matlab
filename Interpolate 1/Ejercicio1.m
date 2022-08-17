clc
clear
%H C = b C?
% Grado 3 ---> p(x)=a+bx+cx2+dx3
%Base {1, x, x2, x3}
%     1 0    0^2    0^3
%     1 0.25 0.25^2 0.25^3
% H = 1 0.5  0.5^2  0.5^3
%     1 0.75 0.75^2 0.75^3
xi=[0 0.25 0.5 0.75]';
H=[xi.^0 xi.^1 xi.^2 xi.^3];
b=[1 -1 2 0]';
c=inv(H)*b %tb puede usarse c=H\b
%p(x)=1-31.3333x+120x^2-106.6667x^3

%Grafica
xx=[-0.15:0.01:0.9];

%yy=p(xx) ??
yy=c(1)+c(2).*xx+c(3).*xx.^2+c(4).*xx.^3;
%alternativa 2 evaluacion p(xx)
Hxx=[xx.^0;xx.^1;xx.^2;xx.^3];
yy=c'*Hxx;
%alternativa 3 evaluacion p(xx)
%coeficientes orden decreciente grado 3,2,1,0
yy=polyval(c(end:-1:1),xx);


plot(xx, yy, 'g', xi, b, 'ro')




