function [fx, fp] = fFuncion1(x)
fx=x.^2-exp(-x)-1;
if nargout==1,  return; end  
fp = 2*x+exp(-x);
return