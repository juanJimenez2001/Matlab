clc
clear

T=[25, 100, 150, 300]';
V=[1.4, 0.075, 0.010, 0.00075]';

%ln(v)=ln(A)-BT
H=[T.^0 -T];
b=log(V);
C=H\b;
A=exp(C(1))
B=C(2)

T1=200;
V1=A*exp(-B*T1)