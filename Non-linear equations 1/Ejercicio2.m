clc
clear

%Apartado 2
s=newton('fun1_2',0)

%Apartado 3
r=feval('fun1_2', s)
diferencia=r-s