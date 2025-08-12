function [ vysledek ] = derivace1( x ,  h)

    vysledek = (funkceF(x+h)-funkceF(x))/h;

end

