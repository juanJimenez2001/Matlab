clc
clear

%Paso 1
n=(0:20);
x=10.^-n;


%Paso 2 Valor "exacto"
sh_exacto=sinh(x);

%Paso 2 Valor "aproximado"
sh_aprox=(exp(x)-exp(-x))/2;

%Errores
E_abs= abs(sh_exacto-sh_aprox);
E_rel=E_abs./abs(sh_exacto);

%Graficas
semilogy(n,E_rel,'bo')

%Numero de cifras significativas
ncifras0=floor(-log10(E_rel(1)));
ncifras8=floor(-log10(E_rel(9)));
ncifras16=floor(-log10(E_rel(17)));

%Cota error relativo
Cota_er=eps./sinh(x);

loglog(x,Cota_er,'r',x,E_rel,'bo')


