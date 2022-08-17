clc
clear
A=ones(2,4);
B=zeros(2,4);
C=[A B];
D=[A;B];
E=[1 2 3; 4 5 6; 7 8 9]
b=E(2,2)
c=E([2 3],[1 2])
d=E(2,:)
e=E(:, end-1)