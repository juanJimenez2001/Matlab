clc
clear
x=6+randn(1,30); 
mean(x)
y=x(x>=5);
mean(y)
x((x>=4.5)&(x<5))=5;
x(x>9)=10;