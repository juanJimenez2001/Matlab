clc
clear

xx=[-pi/2:pi/2];
ff=abs(xx);
xi=[-pi/2:pi/4:pi/2]';

%Apartado 1
H1=[xi.^0 xi.^1 xi.^2 xi.^3 xi.^4];
b1=abs(xi);
c1=H1\b1;
px1=c1(1)+c1(2)*xx+c1(3)*xx.^2+c1(4)*xx.^3+c1(5)*xx.^4;

%Apartado 2
H2=[xi.^0 cos(xi) cos(2*xi) sin(xi) sin(2*xi)];
b2=abs(xi);
c2=H2\b2;
px2=c2(1)+c2(1)*cos(xx)+c2(1)*cos(2*xx)+c2(1)*sin(xx)+c2(1)*sin(2*xx);

%Apartado 3
plot(xx, ff, 'r', xi, b1, 'r*', xx, px1, 'b', xx, px2, 'g')

%Apartado 4
error1=abs(ff-px1);
error2=abs(ff-px2);
plot(xx, ff, 'g', xx, error1, 'ro', xx, error2, 'bo')
