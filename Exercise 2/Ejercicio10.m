clear
clc
n=7;
A=ones(n+1,n+1);
for i=2:n+1
   for j=2:n+1
      A(i,j)=A(i-1, j)+A(i, j-1);
   end;
end;
A