%%用迭代法求解f(x)=0的根
%% 李铄，2014-3
%%    func： 函数名
%%        x0： 迭代初值
%%        cnt：计数
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
