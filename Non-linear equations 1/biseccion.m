function s=biseccion(fn,a,b,E_cota,n_max)
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
% n_iter_cota=
n_iter_cota=100;   % Valor por defecto, hasta que se calcule n_iter_cota
n=min(n_iter_cota,n_max);
for i=1:n
    c=(a+b)/2
    fc=feval(fn,c);
    if fa*fc < 0
        b=c;
    else
        a=c;
        fa=fc;  % Ahorramos una evaluacion en la siguiente iteracion
    end
end
s=a % pueder ser s=b o s=(a+b)/2,
fprintf('La raiz aproximada es %12.8f\n',s)
return
