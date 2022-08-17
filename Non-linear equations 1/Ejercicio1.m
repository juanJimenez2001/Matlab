clc
clear

%Apartado 2
E_cota=1e-8;
n_max=5;
s=biseccion('fun1_2',0,1,E_cota,n_max);
n_max=10;
s=biseccion('fun1_2',0,1,E_cota,n_max);

%Apartado 4
n_max=30;
E_cota=1e-8;
s=biseccion2('fun1_2',0,1,E_cota,n_max)