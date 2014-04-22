function [ x1,k ] = jacobi( A ,b ,x0)
%JACOBI Summary of this function goes here
%   Detailed explanation goes here
x=x0;
k=0;
D=diag(diag(A));
Bj=D^-1*(D-A);
fj=D^-1*b;
p=0.0001;
x1=Bj*x+fj;
while norm(x1-x)>p
    x=x1;
    x1=Bj*x+fj;
    k=k+1;
end
fprintf('Count=%d\n',k);
end