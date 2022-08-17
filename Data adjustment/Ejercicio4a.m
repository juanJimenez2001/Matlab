clc
clear

ti=[0.69 1.46 1.82 2.67 2.85]';
hi=[8.19 11.34 11.50 5.05 2.97]';

H=[ti -(1/2)*(ti.^2)];
b=hi;
c=H\b;
A=c(1) %A=v0
B=c(2) %B=g

xx=[0:0.01:3];
yy=A.*xx-(1/2)*B.*xx.^2;

r=H*c-b %Vector residuo
Error=sum(r.^2); %Error global ajuste



