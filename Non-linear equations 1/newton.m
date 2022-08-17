function s=newton(fx,x0,n_max)
% Entrada: fx nombre de la función (debe devolver f(x) y f'(x))
%          x0 punto de arranque
%          n_max es el numero maximo de iteraciones
% Salida:  s es la aproximación de la raiz
 
if nargin==2, 
    n_max=10; 
end % Si el usuario no introduce ni E_cota ni n_max, n_max=20
  % Asignar n_max=min de n_max y el número necesario para alcanzar la tolerancia
 
x=x0; % Inicio
for k=1:n_max
    [f fp]=feval(fx,x);    % Obtengo valores de f(x) y f'(x)
    if f==0, break;end   % Ya estoy en la raiz
   % CALCULAR AQUÍ LA ITERACION DE NEWTON: xk+1=xk-f(xk)/f’(xk)
    end
s=x;    % Devuelvo el último término de la sucesión
return
