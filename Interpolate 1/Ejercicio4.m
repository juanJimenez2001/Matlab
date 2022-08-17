clc
clear
xi=[0 0.25 0.5 0.75];
yi=[1 -1 2 0];
dd1=[1, -8, 40, -106.67];
dd2=dif_div(xi,yi);

xx=[-0.15:0.01:0.9];
yy=dd2(1)+dd2(2).*(xx-xi(1))+dd2(3).*(xx-xi(1)).*(xx-xi(2))+dd2(4).*(xx-xi(1)).*(xx-xi(2)).*(xx-xi(3));
plot(xx, yy, 'g', xi, yi, 'ro')