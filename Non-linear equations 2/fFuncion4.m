function fx=fFuncion4(P, M, N, r)
fx=M-P*r./(1-(1+r).^(-N));
return 