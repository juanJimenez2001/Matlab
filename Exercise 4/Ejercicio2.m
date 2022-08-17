clc
clear
n=[0:10];
x=10.^(-n);
f=sqrt(1+x.^2)-1;
g=(x.^2)./(sqrt(1+x.^2)+1);
%Errores
E_abs=abs(g-f);
E_rel=E_abs./abs(g);
%Cota E_rel
Cota_e=eps./abs(g);
%Cifras significativas
n_cifras= floor(-log10(E_rel))
%Graficas
loglog(x, E_rel ,'bo', x , Cota_e,'r*');
figure;
semilogx(x,n_cifras);