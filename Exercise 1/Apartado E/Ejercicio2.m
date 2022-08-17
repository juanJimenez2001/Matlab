clc
clear
x = [ 2 4 7 5 9 3];
x(x<=4)=0
clear
x = [ 2 4 7 5 9 3];
x(x>5)=x(x>5)+2
clear
x = [ 2 4 7 5 9 3];
m=mean(x);
y=x;
y(x>=m)=1; y(x<m)=0
clear
x = [ 2 4 7 5 9 3];
x(rem(x,2)==0)=0
clear
x = [ 2 4 7 5 9 3];
y=x(x>3)
clear
x = [ 2 4 7 5 9 3];
x((2<=x)&(x<5))=x((2<=x)&(x<5))*(-1)
