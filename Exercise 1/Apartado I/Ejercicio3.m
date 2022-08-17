clc
clear
X=[0:0.01:pi];
F1= sin((3*X)+(X.^2));
num=sin(1+X);
ab=abs(num);
op=ab./(1+X);
F2=sqrt(op);
%A
plot(X,F1,'b',X,F2,'r');
%b
plot(X,F1,'b');
hold on
plot(X,F2,'r');
hold off