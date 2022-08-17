function [f,fp]=fun1_2(x)
% Devuelve el valor de la función cuyo raiz se busca en x
% Opcionalmente devuelve el valor de su derivada.
f = x - cos(x);  % Función a evaluar f(x) = x-cos(x) 
if nargout==1,  return; end  % No se requiere derivada 
fp = 1+sin(x);   % Si nos lo piden calculamos derivada en x
return
