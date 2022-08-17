clc
clear

x=[-1:0.01:1];
f1=1./(1+(x.*x));
f2=exp(-abs(x));
plot(x,sin(x),'r',x,f1,'g',x,f2,'y',x,cos(x),'b');

%b
plot(x,sin(x), 'r');
hold on
plot(x,f1, 'g');
plot(x,f2, 'y');
plot(x,cos(x), 'b');
hold off
%c
subplot(2,2,1);
plot(x,sin(x), 'r');
subplot(2,2,2);
plot(x,f1, 'g');
subplot(2,2,3);
plot(x,f2, 'y');
subplot(2,2,4);
plot(x,cos(x), 'b');