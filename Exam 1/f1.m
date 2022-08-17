function [f1]=f1(x,h)
y=sin(x+h);
f1=(y-sin(x))./h;
return 