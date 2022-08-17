clc
clear
cifras=0;
E_abs=0;
E_rel=0;
suma=0;
k=0;
 while (cifras<13)
     f=sum(sqrt(12).*((-1/3).^k)./(2*k+1));
     suma=suma+f;
     E_abs=(pi-suma);
     E_rel=E_abs./abs(pi);
     cifras=floor(-log10(E_rel));
     fprintf('Sumando %d términos obtenemos %d cifras significativas \n',k,cifras);
     k=k+1;
 end