clc
clear
a=1;
b=1/sqrt(2);
t=1/4;
x=1;
i=1;
tic
while(abs(a-b)> 1e-15), 
    y=a;
    a=(a+b)/2;
    b=sqrt(b*y);
    t=t-(x*(y-a)^2);
    x=2*x;
    PI=(a+b)^2/(4*t);
    e=pi-PI;
    fprintf("Iter nª: %.0f  Aproximacion: %.20f  Error: %13d\n",i,PI,e);
    i=i+1;
end
toc
fprintf("\n");
fprintf("Apartado D ------------------------------------------------------------------------------------\n")
fprintf("\n");
a=1;
b=1/sqrt(2);
t=1/4;
x=1;
i=1;
tic
for k=1:10
    y=a;
    a=(a+b)/2;
    b=sqrt(b*y);
    t=t-(x*(y-a)^2);
    x=2*x;
    PI=(a+b)^2/(4*t);
    dif=pi-PI;
    fprintf("Iter nª: %2.0f  Aprox: %.20f  Error: %13d\n",i,PI,dif);
    i=i+1;
end
toc

