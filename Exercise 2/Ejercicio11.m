clc
clear
A=zeros(2,1000);
for j=2:1000
    x=randn(2,1);
    for i=1:2
        A(i,j)=A(i,j-1)+x(i);
    end
end
x=A(1,:);
y=A(2,:);
plot(x,y);

