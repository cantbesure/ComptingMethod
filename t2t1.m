%%�ö��ַ������f(x)=0�ĸ�
%% ���壬2014-3
%%    func�� ������
%%        l��r�� ���ֳ�ֵ
%%         p�� ����
%%        cnt������
p=0.5e-3;
cnt=0;

l=0;
r=1;

while(abs(r-l)>p)
    ffl=func(l);
    ffr=func(r);
    cnt=cnt+1;
    mid=(l+r)/2;
    ffm=func(mid);
    if(func(mid)==0)
        return ;
    else if (ffl*ffm<0)
            r=mid;
        else l=mid;
        end
    end
end

fprintf('Result=%f,Count=%d\n',mid,cnt);