function [ vysledek ] = derivacefinal( x, tol )

    h = 1;
    while abs(derivace1(x,h) - derivace2(x,h))>tol
        h = h/2;
    end  
    
    vysledek = derivace1(x,h);

end

