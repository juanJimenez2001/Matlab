clc
clear
xi=[-0.44, 0.09, 0.92, 0.23, -0.68, 0.81, -0.85, 0.55]';
yi=[0.12, 0.09, 0.48, -0.01, 0.26, 0.3, 0.38, 0.15]';
wi=[0.5, 0.1, 1, 0.1, 0.7, 1, 1, 0.5];

%con pesos
H=[xi.^0 xi xi.^2];
mp=diag(sqrt(wi));
H2=mp*H;
b2=mp*yi;
c2=H2\b2;

%sin pesos
b=yi;
c=H\b;

%comparacion grafica
xx=[-1:0.01:1];
yy=c(1)+c(2).*xx+c(3).*xx.^2;
y2=c2(1)+c2(2).*xx+c2(3).*xx.^2;

plot(xi, yi, 'r+', xx,yy,'g',xx,y2,'b');
