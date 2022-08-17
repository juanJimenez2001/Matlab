function [ s ] = miraiz1(x0,a)
n=1;
err=1;
while (err > 1.e-16 && n<=20) 
 err=abs(x0-a^(1/2))/abs(a^(1/2));
 fprintf('ITERACIÓN %d RAÍZ %.20f  ERROR %e \n',n, x0,err)
 x0=1/2*(x0+a/x0);
 n=n+1;
end
s=x0;
end