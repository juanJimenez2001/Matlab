function [funcion]=funcion(x,h)
y=sin(x+h);
funcion=y-cos(x)./h;
return 