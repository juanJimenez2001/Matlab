clc
clear

xx=[-1:0.01:1];
ff=fun1(xx);
k=1:4;
dx=2.^(1-k);
for n=1:4
    xi=-1:dx(n):1;
    fi=fun1(xi);
    pp=polNewton(xi,fi,xx);
    subplot(2,2,n);
    plot(xi,fi,'ro',xx,ff,'b',xx,pp,'r');
    error(n)=max(abs(ff-pp));
    fprintf("Usando %d nodos, el error de interpolación es= %.18f \n",length(xi),error(n));
    ppi=polNewton(xi,fi,xi);
    error_nodos=abs(ppi-fi);
    fprintf("Usando %d nodos, el maximo error en los nodos es= %.18f \n",length(xi),max(error_nodos));
    subplot(2,2,n);
    plot(error_nodos,'r');
end


