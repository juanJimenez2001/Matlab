clc
clear

[r1,r2]=fun1_2(0);
[r3,r4]=fun1_2(1);
r1=[r1*r3, r2*r4]

[r1,r2]=feval('fun1_2',0);
[r3,r4]=feval('fun1_2',1);
r2=[r1*r3, r2*r4]
