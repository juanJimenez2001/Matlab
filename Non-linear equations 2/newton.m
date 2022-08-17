function s=newton(fx,x0,n_max)
x=x0; % Inicio
k=1;
while (k<=n_max)
    [f fp]=feval(fx,x);    
    if f==0 
        break
    end 
    xk1=x-f./fp;
    err=abs(xk1-x);
    errRel=err./abs(xk1);
    nCifras=abs(floor(-log10(errRel)));
    fprintf('Iteracion %d: valor=%.16f error=%5.2e nº cifras=%d\n', k, x, err, nCifras)
    k=k+1;
    x=xk1;
end
s=x;    
return
