%%�õ��������f(x)=0�ĸ�
%% ���壬2014-3
%%    func�� ������
%%        x0�� ������ֵ
%%        cnt������
cnt=0;
x0=0;
while true
    x=funciter(x0);
    cnt=cnt+1;
    if (abs(x0-x)<=p)
        fprintf('Result=%f,Count=%d\n',x,cnt);
        return ;
    else
        x0=x;
    end
end
