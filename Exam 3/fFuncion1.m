function [fx, fp] = fFuncion1(x)
fx=x-exp(-x).*cos(x);
if nargout==1,  return; end  
fp=1+exp(-x).*cos(x)+exp(-x).*sin(x);
return