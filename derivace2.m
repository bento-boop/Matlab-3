function [ vysledek ] = derivace2( x ,h )

    vysledek = (funkceF(x+h/2)-funkceF(x-h/2))/h;

end

