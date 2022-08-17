clc
clear
A=rand(5,7);
for k=1:5, 
    for j=1:7,
     if A(k,j)<=0.4, 
         A(k,j)=0.2; 
     else
         A(k,j)=0.7;
     end
   end
end
A
