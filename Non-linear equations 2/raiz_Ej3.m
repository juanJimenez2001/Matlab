function s=raiz_Ej3(x)
n=1;
xk=x;
vector=zeros(1,70);
while (n<=70)
    xk1=exp(-xk);
    vector(n)=xk;
    n=n+1;
    xk=xk1;
end
error=abs(xk-vector);
n=[1:70];
semilogy(error, n, 'bo:')
k=error(10:50)/error(9:49)
s=xk;
return 