clc
clear
A=[1 2 3 4;5 6 7 8;9 10 11 12]
B=A(3,:)
C=A(1,:);
D=[C;B]
E=A(1:2:end,end)
F=A(1,2:2:4);
G=A(3,2:2:4);
H=[F;G]
a=A(3,4:-1:3);
b=A(2,4:-1:3);
c=A(1,4:-1:3);
J=[a;b;c]
[n,m]=size(A)