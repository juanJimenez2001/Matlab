clc
clear

x=[0:0.1:pi];
h=10^-8;

ValorExacto=cos(x);
E_rel1 = (abs(ValorExacto-f1(x,h))./abs(ValorExacto));
E_rel2 = (abs(ValorExacto-f2(x,h))./abs(ValorExacto));

ncifras1=floor(-log10(E_rel1))
ncifras2=floor(-log10(E_rel2))

plot(x,ncifras1,'b*');
figure
plot(x, ncifras2, 'go');

