clc
clear
n=[0:29];
x=0.5;
fprintf("Apartado A ------------------------------------------------------------------------------------\n")
sin=x-sum(((-1).^n).*(x.^(2*n+1))./(factorial(2*n+1)))
fprintf("Apartado B ------------------------------------------------------------------------------------\n")
s=0;
for n=0:29
    s=s+((-1).^n).*(x.^(2*n+1))./(factorial(2*n+1));
end
sin=x-s
fprintf("Apartado C ------------------------------------------------------------------------------------\n")
s=0; 
temp=1; 
n=0; 
while(temp>1e-18),  
    temp=((-1).^n).*(x.^(2*n+1))./(factorial(2*n+1));
    s=s+temp;
    n=n+1; 
end
sin=x-s