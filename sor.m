function [ x1 ] = sor( A,b,x0,w )
%SOR Summary of this function goes here
%   Detailed explanation goes here
x=x0;
k=0;
D=diag(diag(A));
L=-1*tril(A,-1);
U=-1*triu(A,1);
Bg=(D-w*L)^-1*(w*U+(1-w)*D);
fg=w*(D-w*L)^-1*b;
p=0.0001;
x1=Bg*x+fg;
while norm(x1-x)>p
    x=x1;
    x1=Bg*x+fg;
    k=k+1;
end
fprintf('Count=%d\n',k);
end


