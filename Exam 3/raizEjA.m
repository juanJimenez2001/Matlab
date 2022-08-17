function s= raizEjA(x)
n=1;
vector=zeros(1,100);
while (n<=100)
    xn1=exp(-x).*cos(x);
    fprintf('Iteración %d Raíz %.16f \n',n,x)
    vector(n)=x;
    x=xn1;
    n=n+1;
end
s=x;
err=abs(s-vector);
n=[1:100];
semilogy(err, n, 'r')
k=err(2:75)/err(1:74)
return