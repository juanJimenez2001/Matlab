function [f]=f1(x,n)
y=abs(x);
f=1./(1+y.^n);
return
