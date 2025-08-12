function [ vysledek ] = ift( x )
    n = size(x,2);
    F = zeros(1,n);
        
    for k=1:n
        s = 0;
        for i=1:n
            s = s + x(i)*1/n * exp(-(2*pi*(i-1)*1i*(k-1))/n);
        end  
        F(k) = s;
    end    
    vysledek = F;
end

