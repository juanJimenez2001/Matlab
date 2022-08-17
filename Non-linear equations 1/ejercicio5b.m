function [s]=ejercicio5b(x0, tolerancia, nmax)
xn=x0;
xn1=0;
err=1;
n=1;
while(err>tolerancia && n<=nmax)
    xn1= (xn+1).^(1/3);
    err=abs(xn1-xn);
    fprintf('ITERACIÓN %d RAÍZ %.20f  ERROR %e \n',n, xn,err)
    xn=xn1;
    n=n+1;
end
s=xn;
end