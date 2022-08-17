function s=raiz_Ej2b(fx, a, b)
xn=b;
zn=a;
err=1;
n=1;
while(err>=1e-10)
    [f fp]=feval(fx,xn);
    xn1=xn-f./fp;
    [fz fzp]=feval(fx,zn);
    zn1=zn-fz./fp;
    err=abs(xn-zn);
    fprintf('Iter %d  Sol %.15f  Error %e\n', n, xn, err)
    n=n+1;
    xn=xn1;
    zn=zn1;
end
s=xn;
return