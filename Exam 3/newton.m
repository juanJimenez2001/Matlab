function s=newton(fx,x0)
x=x0; % Inicio
err=1;
n=1;
while (err>=1e-15)
    [f fp]=feval(fx,x);    
    if f==0 
        break
    end 
    xk1=x-f./fp;
    err=abs(xk1-x);
    fprintf('Iteración %d Raíz N-R %.16f Error %e \n', n, x, err)
    n=n+1;
    x=xk1;
end
s=x;    
return
