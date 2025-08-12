function [ vysledek ] = Gaussovo( a,b )
    bod1 = (a+b)/2 - (b-a)*sqrt(3)/6;
    bod2 = (a+b)/2 + (b-a)*sqrt(3)/6;
    vysledek = (b-a)/2 * (funkceF(bod1) + funkceF(bod2) ) ;
end

