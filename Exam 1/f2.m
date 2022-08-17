function [f2]=f2(x,h)
f2=2*cos(x+h/2).*sin(h/2)./h;
return 