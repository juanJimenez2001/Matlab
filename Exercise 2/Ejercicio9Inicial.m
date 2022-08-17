clc
clear
a=1;
b=1/2^(1/2);
t=1/4;
x=1;
y=a;
a=(a+b)/2;
b=sqrt(b*y);
t=t-x*(y-a)^2;
x=x*2;

PI=(a+b)^2/4*t;

if abs(a-b)> 1e-15
    y=a;
    a=(a+b)/2;
    b=sqrt(b*y);
    t=t-x*(y-a)^2;
    x=x*2;
    PI=(a+b)^2/4*t;
end


