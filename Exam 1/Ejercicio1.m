clc
clear
n=[0:15];
h=10.^(-n);
x=1.2;

sh_exacto=cos(x);
sh_aprox1=f1(x,h);
E_abs1= abs(sh_exacto-sh_aprox1);
E_rel1=E_abs1./abs(sh_exacto);

sh_aprox2=f2(x,h);
E_abs2= abs(sh_exacto-sh_aprox2);
E_rel2=E_abs2./abs(sh_exacto);

loglog(h,E_rel1,'b-*', h, E_rel2, 'g-o');






