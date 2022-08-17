clc 
clear

% a)
xi=[-1, -0.5, 0.5, 1]'; 
xx=[-1:0.01:1];
fi=log(xi.^2+xi+15)./(10*xi.^3-25*xi.^2+xi-2);
fx=log(xx.^2+xx+15)./(10*xx.^3-25*xx.^2+xx-2);

H=[xi.^0 xi.^1 xi.^2 xi.^3];
b=fi;
c=H\b;

yy=c(1)+c(2)*xx+c(3)*xx.^2+c(4)*xx.^3;
%plot(xx, yy, 'g.', xx, fx, 'b.', xi, fi, 'sr')

% b)
xi=[-1, -0.5, 0, 0.5, 1]';
fi=log(xi.^2+xi+15)./(10*xi.^3-25*xi.^2+xi-2);

H1=[xi.^0 xi.^1 xi.^2 xi.^3 xi.^4];
b1=fi;
c1=H1\b1;

yy1=c1(1)+c1(2)*xx+c1(3)*xx.^2+c1(4)*xx.^3+c1(5)*xx.^4;
%plot(xx, yy, 'g.', xx, fx, 'b.', xi, fi, 'sr', xx, yy1, 'b-.')

%c
H2=[log(xi.^2+xi+1) xi.^0 xi.^2];
c2=H2\fi;
r=H2*c2-fi;
error=sum(r.^2);
yy2=c2(1)*log(xx.^2+xx+1)+c2(2)+c2(3)*xx.^2;

plot(xx, fx, 'b.', xi, fi,'sr', xx, yy, 'g.',xx, yy1, 'g-.', xx, yy2, 'b-.')





