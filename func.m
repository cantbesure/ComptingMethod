%%用二分法求解f(x)=0的根
%% 李铄，2014-3
%%    func： 函数名
%%        x ： 自变量
%%       rst： 结果

function [ rst ] = func( x )
%FF Summary of this function goes here
%   Detailed explanation goes here
rst=exp(1).^x+10.*x-2;

end

