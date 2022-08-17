clc
clear
x=rand(1,1000);
x(x>0.5)=1;
x(x>=0.5)=0;

a=rand(50);
b=rand(50);
a(a>b)=b(a>b);
