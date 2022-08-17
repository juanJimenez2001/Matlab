clc
clear
%H C = b C?
% Grado 3 ---> p(x)=a+b*cos(2PIx)+c*sin(2PIx)+d*cos(4PIx)
%Base {1, cos(2PIx), sin(2PIx), cos(4PIx)}
%     1   1    0   1
%     1   0    1  -1
% H = 1  -1    0   1
%     1   0   -1  -1
xi=[0 0.25 0.5 0.75]';
H=[xi.^0 cos(2*pi*xi) sin(2*pi*xi) cos(4*pi*xi)];
b=[1 -1 2 0]';
c=inv(H)*b 

xx=[-0.15:0.01:0.9];
yy=c(1)+c(2).*cos(2*pi*xx)+c(3).*sin(2*pi*xx)+c(4).*cos(4*pi*xx);
plot(xx, yy, 'g', xi, b, 'ro')



