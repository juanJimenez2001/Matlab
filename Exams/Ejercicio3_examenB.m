clc
clear

xi=[-3:3]';
fi=[0 2 5 8 4.5 2 0]';
wi=[2, 1, 1, 1, 1, 1, 2];

H=[xi.^2 xi.^3];
b=fi-8;
mp=diag(sqrt(wi));
H2=mp*H;
b2=mp*b;
c2=H2\b2

r=H2*c2-b2;