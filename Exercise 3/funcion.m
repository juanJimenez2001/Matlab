function [funcion]=funcion(x,n)
y=abs(x);
funcion=1./(1+y.^n);
return 