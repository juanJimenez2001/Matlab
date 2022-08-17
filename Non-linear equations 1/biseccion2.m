function s=biseccion2(fn,a,b,E_cota,n_max)
% Método de la bisección.
% Entrada: f nombre de la función 
%          [a,b] intervalo de búsqueda/incertidumbre
%          E_cota es la tolerancia
%          n_max es el numero maximo de iteraciones
% Salida:  s es la aproximación de la raiz
 
fa=feval(fn,a);fb=feval(fn,b); % Evaluo la función f en a y en b.
if fa*fb > 0
    fprintf('La función no tiene raices simples en el intervalo [a,b]\n')
    return
end
%CALCULAR  n_iter_cota PARA QUE EL ERROR SEA MENOR QUE E_cota
n_iter_cota=0;
e=0;
a1=a;
b1=b;
while e<E_cota
    n_iter_cota=n_iter_cota+1;
    e=abs(b1-a1)/2;
    c=(a1+b1)/2;
    fc=feval(fn,c);
    if fa*fc < 0
        b1=c;
    else
        a1=c;
        fa=fc;  % Ahorramos una evaluacion en la siguiente iteracion
    end
    fprintf('Nº de iteracion %i: error=%f\n', n_iter_cota, e)
end
n=min(n_iter_cota,n_max);
for i=1:n
    c=(a+b)/2;
    fc=feval(fn,c);
    if fa*fc < 0
        b=c;
    else
        a=c;
        fa=fc;  % Ahorramos una evaluacion en la siguiente iteracion
    end
end
s=a; % pueder ser s=b o s=(a+b)/2,
fprintf('La raiz aproximada es %12.8f\n',s)
return
