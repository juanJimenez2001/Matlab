function [fx, fp] = fFuncion3(x)
fx=x-exp(-x);
if nargout==1,  return; end  
fp = 1+exp(-x);
return