clc
clear

xi=[0:2]';
yi=[1, 2.72, 7.39]';
xx=[0:0.01:2];

%1
H1=[(xi-1).*(xi-3) xi.*(xi-3) xi.*(xi-1)];
b1=yi;
c1=H1\b1;

%2
px=c1(1).*(xx-1).*(xx-3)+c1(2).*xx.*(xx-3) +c1(3).*xx.*(xx-1);
plot(xx, px, 'g', xi, yi, 'r*')

%3
fx=exp(xx);
error3=abs(fx-px);
plot(xx, error3, 'r')

%4
xi2=[0:0.5:2]';
yi2=exp(xi2);

H2=[(xi2-1).*(xi2-3) xi2.*(xi2-1)];
b2=yi2+ xi2.*(xi2-3);
c2=H2\b2;
px4=c2(1).*(xx-1).*(xx-3)-xx.*(xx-3)+c2(2).*xx.*(xx-1);

%5
r2=H2*c2-b2; %vector de residuos
Error5=sum(r2.^2); %Error global

%6
wi=[1, 10, 10, 10, 1]';
mp=diag(sqrt(wi));
H3=[(xi2-1).*(xi2-3) xi2.*(xi2-1)];
H3=mp*H3;
b3=mp*b2;
c3=H3\b3;

ppx=c3(1)*(xx-1).*(xx-3)-xx.*(xx-3)+c3(2)*xx.*(xx-1);

plot(xx, ppx, 'g', xi2, yi2, 'ro', xx, px4, 'b')

%7
x=0.8;
pX4=c2(1).*(x-1).*(x-3)-x.*(x-3)+c2(2).*x.*(x-1);
ppX=c3(1)*(x-1).*(x-3)-x.*(x-3)+c3(2)*x.*(x-1);
fX=exp(x);

error1=abs(fX-pX4);
error2=abs(fX-ppX);

