%%高斯消元
%%李铄 2014-4
%%  gaus:函数名
%%    A：系数矩阵
%%    b：常系数向量
%%    X：解向量

function [ X ] = gaus( A,b )
%GAUS Summary of this function goes here
%   Detailed explanation goes here
    B=[A b];
    n=length(b);
    RA=rank(A);
    RB=rank(B);
    r=RB-RA;
    if r>0
        disp('No Answer')
        return
    end
    if RA==RB
        if RA~=n
            disp('Endless')
        else 
            X=zeros(n,1);
            for j=1:n-1
                for k=j+1:n
                    m=B(k,j)/B(j,j);
                    B(k,j:n+1)=B(k,j:n+1)-B(j,j:n+1)*m;
                end
            end
            b=B(1:n,n+1);
            A=B(1:n,1:n);
            X(n)=b(n)/A(n,n);
            for l=n-1:-1:1
                X(l)=(b(l)-sum(A(l,l+1:n)*X(l+1:n)))/A(l,l);
            end
        end
    end
end

