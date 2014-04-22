%%用Newton迭代法求解f(x)=0的根
%% 李铄，2014-3
%%    funnew： 函数名
%%        x ： 自变量
%%       rst： 结果

function [ rst ] = funcnew( x )
%FUNCNEW Summary of this function goes here
%   Detailed explanation goes here
rst=x-(exp(1).^x+10.*x-2)/(exp(1).^x+10);

end

