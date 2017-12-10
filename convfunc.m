function [out1,out2] = convfunc(in1, in2, in3, in4, in5, in6)
    nx0=in1;
    nxf=in2;
    nh0=in3;
    nhf=in4;
    n = nx0+nh0:nxf+nhf;
    xorg=in5;
    horg=in6;

    a=length(xorg)+length(horg)-1;
    x=[zeros(1,length(horg)) xorg];
    h=[fliplr(horg) zeros(1,length(xorg))];

    temp=zeros(1,a);
    for i=1:a
        x=[x(end) x(1:end-1)];
        temp(i)=sum(x.*h);  
    end
    out1 = temp;
    out2 = n;
end