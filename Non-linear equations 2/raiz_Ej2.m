function s=raiz_Ej2(xk)
err=1;
n=1;
while (err>=1e-10)
    xk1=sqrt(exp(-xk));
    err=abs(xk-xk1);
    fprintf('Iteracion %d: valor=%.16f error=%5.2e\n', n, xk, err)
    n=n+1;
    xk=xk1;
end
s=xk;
return 