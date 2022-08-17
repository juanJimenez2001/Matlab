clc
clear
n=[0:12];
x=pi;
f=x*cos(x)
k=((-1).^n)./(factorial(2*n)).*x.^(2*n+1);
g=sum(k)
fprintf('Valor exacto %15.12f  Valor aproximado %15.12f \n',f,g);
