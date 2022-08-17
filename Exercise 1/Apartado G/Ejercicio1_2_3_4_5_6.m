clc
clear
A=[1 2; -1 1]; 
B=[-1 0; 0 1];
Z=[1 1;3 1];
Y=[4 1;1 1];
x=[2 3]; 
y =[-1 1]; 
C=A*B
E=A*x'
p=x*y'
F=Y*Z;
G=Z*Y;
if F~=G,
    fprintf("La multiplicacion matrical no es conmutativa\n");
end

if(A*B)'==(B'*A')
    fprintf("Se cumple la propiedad\n")
end

if(A*A*A*A)==(A^4)
    fprintf("Se cumple la equivalencia\n")
end
    