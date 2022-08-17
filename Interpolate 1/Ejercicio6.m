clc
clear
xi=[0,pi,2*pi];
fi=sin(xi);
dd=dif_div(xi,fi);

xx=[0:0.01:2*pi];
yy=dd(1)+dd(2).*(xx-xi(1))+dd(3).*(xx-xi(1)).*(xx-xi(2));
plot(xx, yy, 'g', xi, fi, 'ro')
