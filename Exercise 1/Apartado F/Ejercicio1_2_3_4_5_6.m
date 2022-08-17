clc
clear
fprintf("%.5f\n",pi)
e = exp(1);
fprintf("%.2f\n",e)
fprintf("%.8f\n",e)
x = 174;
fprintf("%d %4d %04d %+d %.2f %e \n", x, x, x, x, x, x)
A = [2 -15 3 127; -97 32 0 3];
fprintf("%d %d \n",A)
fprintf("================================= \n")
fprintf("%d %d %d %d\n",A')
fprintf("================================= \n")
fprintf("%4d %4d %4d %4d\n",A')
fprintf("================================= \n")
x = [1:0.2:2];
y=log(x);
A=[x;y];
fprintf("log(%.1f) = %.3f \n",A)
fprintf("================================= \n")
a=0.1;
b=single(a);
fprintf("%.20f \n%1.20f \n",a,b)