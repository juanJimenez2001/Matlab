function dd=dif_div(xi,fi)
 N=length(xi);
 D=zeros(N);
 D(:,1)=fi;
 for k=2:N
     for j=1:N-k+1
         dif=D(j,k-1)-D(j+1,k-1);
         dx=xi(j)-xi(j+k-1);
         D(j,k)=dif/dx;
     end
 end
 dd=D(1,:);
 return

function fi=dif_hermite(xi,fi,fpi)
L = length(xi);
xi = reshape([xi ; xi],1,2*L);
fi = reshape([fi ; fi],1,2*L); 
fpi = reshape([fpi ; fpi],1,2*L);
% Calculo de dif divididas 
L=2*L;    % Número de Datos 
for k=2:L        % Calculo dif orden k-1
  for j=L:-1:k,  % Barro de abajo arriba para no estropear datos 
    dx=xi(j)-xi(j-k+1);      % resta de abcisas x's    
    if (dx==0),    % Valores xi iguales => usar derivada
       fi(j) = fpi(j); 
    else           % Valores xi diferentes =< definicion  usual
       dif = (fi(j)-fi(j-1));   % resta de diferencias contiguas    
       fi(j) = dif/dx;          % Diferencias divididas 
    end   
  end 
end  
