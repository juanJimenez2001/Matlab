clc
clear
%Apartado 1
x=[-2:0.01:2];
fx=feval('fFuncion2',x);
plot(x, fx, 'r')

fFuncion2(0.5)*fFuncion2(1)

%Apartado 2
s=raiz_Ej2(1)

%Apartado 3
s=raiz_Ej2b('fFuncion2', 0.5, 1)