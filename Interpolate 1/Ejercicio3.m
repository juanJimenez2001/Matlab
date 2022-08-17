clc
clear
%H C = b C?
% Grado 3 ---> p(x)=a+b*e^x+c*e^-x+d*cos(pi*x)
%Base {1, e^x, e^-x, cos(pi*x)}
%     1   e^-1   e      -1
%     1   1      1       1 
% H = 1   e      e^-1   -1 
%     1   e^2    e^-2    1
xi=[-1 0 1 2]';
H=[xi.^0 exp(xi) exp(-xi) cos(pi*xi)]
b=[0 -1 2 1]';
c=H\b;
xx=[-1:0.01:3];
yy=c(1) + c(2).*exp(xx) + c(3).*exp(-xx) + c(4).*cos(pi*xx);
plot(xx, yy, 'g', xi, b, 'ro')
