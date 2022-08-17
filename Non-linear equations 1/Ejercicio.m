clc;

clear;

fun1_1(0)*fun1_1(1);

s=biseccion('fun1_2',0,1,1e-8,30)

y=newton('fun1_2',0)

z=fRaiz(1,2)

w=miraiz2_1012(1,2)

%Ejercicio 5

fej5_clase1012(0)*fej5_clase1012(2) %Comprobamos que tiene raiz

xx=[0:0.01:2];

yy=1-xx+xx.^3;

plot(xx,yy);
