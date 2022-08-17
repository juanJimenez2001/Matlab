clc
clear

xi=[0:0.5:3]';
fi=1./(1.25+cos(xi));

H=[xi.^0 xi.^1 xi.^2 xi.^3 xi.^4 xi.^5 xi.^6];
b=fi;
c=H\b;

xx=[0:0.01:3];
yy=c(1)*xx.^0+c(2)*xx.^1+c(3)*xx.^2+c(4)*xx.^3+c(5)*xx.^4+c(6)*xx.^5+c(7)*xx.^6;
plot(xx, yy, 'r', xi, fi, 'bo')