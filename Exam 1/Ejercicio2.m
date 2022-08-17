clc
clear
n=[0:30];
k=[0:30];
d=31;
f=sum(sqrt(12).*((-1/3).^k)./(2*k+1));
fprintf('El valor calculado sumando %d términos es de: %.21f para el valor de pi %.21f con un error relativo %e \n', d, f);

