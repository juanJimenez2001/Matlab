clc
clear

xx=[-2:0.01:2];
ff=fun2(xx);
k=1:4;
dx=2.^(1-k);
for n=1:4
    xi=-2:dx(n):2;
    fi=fun2(xi);
    pp=polNewton(xi,fi,xx);
    subplot(2,2,n);
    plot(xi,fi,'ro',xx,ff,'b',xx,pp,'r');
    error(n)=max(abs(ff-pp));
    fprintf("Usando %d nodos, el error de interpolación es= %.18f \n",length(xi),error(n));
    ppi=polNewton(xi,fi,xi);
    error_nodos=abs(ppi-fi);
    fprintf("Usando %d nodos, el maximo error en los nodos es= %.18f \n",length(xi),max(error_nodos));
    %subplot(2,2,n);
    %plot(error_nodos,'r');
end