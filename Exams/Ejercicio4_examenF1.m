clc
clear

x=[0:0.01:3];
fx=1./(1.25+cos(x));
qx=0.1753+0.3638.*x.^2;
ux=1./(1.5839-0.1523.*x.^2);
plot(x, fx, 'r', x, qx, 'k', x, ux, 'g')