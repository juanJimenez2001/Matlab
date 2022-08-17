function [fx, fp] = fFuncion2(x)
fx=x.^2-exp(-x);
if nargout==1,  return; end  
fp = 2*x+exp(-x);
return