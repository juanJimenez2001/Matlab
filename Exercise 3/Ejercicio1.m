clc
clear
%EJERCICIO 1
 x = rand(1,10)
 
x(x>=0.5) = 0.8;
x(x<0.5)= 0

% for k = 1:10
% 	if x(1, k) >= 0.5, 
%         x(1,k) = 0.8;
%     else
%         x(1, k) = 0;
%     end
% end
% x
