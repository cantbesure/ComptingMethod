%%��Newton���������f(x)=0�ĸ�
%% ���壬2014-3
%%    funnew�� ������
%%        x �� �Ա���
%%       rst�� ���

function [ rst ] = funcnew( x )
%FUNCNEW Summary of this function goes here
%   Detailed explanation goes here
rst=x-(exp(1).^x+10.*x-2)/(exp(1).^x+10);

end

