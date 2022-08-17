clc
clear
x=[0:0.01:1];
fx=fFuncion1(x);
plot(x, fx, 'r')
fFuncion1(0)*fFuncion1(1)
fFuncion1(0.5)*fFuncion1(1)

s=raizEjA(0.5)

s=newton('fFuncion1',2)