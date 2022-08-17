clc
clear
P=150000;
M=800;
N=25*12;

%Apartado 2
R=[1:8];
r=R/12;
fx=fFuncion4(P, M, N, r);
plot(R, fx, 'r')

%Aparatado 3
fFuncion4(P, M, N, 1)*fFuncion4(P, M, N, 8)