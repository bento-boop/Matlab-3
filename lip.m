function [ vysl ] = lip( bodX,fX,x )
    vel = size(bodX);
    n = vel(2);
    
    pol = 0;
    for i=1:n
        pol = pol + fX(i)*li(bodX,i,x);
    end    
    vysl = pol;
end

