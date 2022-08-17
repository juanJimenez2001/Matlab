clc
clear

xi=[-3:3]';
fi=[0 2 5 8 4.5 2 0]';

H=[xi.^0 xi.^2 xi.^3 xi.^4 xi.^5 xi.^6];
b=fi;
c=H\b;
A=c(1);
B=0;
C=c(2);
D=c(3);
E=c(4);
F=c(5);
G=c(6);
VC=[A,B,C,D,E,F,G] %vector coeficientes