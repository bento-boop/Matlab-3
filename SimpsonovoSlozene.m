function [ vysledek ] = SimpsonovoSlozene( a,b,m )

    h = (b-a)/m;
    hodnota = h*(funkceF(a) + funkceF(b))/3;
    for i=1:m-1
        if mod(i,2) == 1
            hodnota = hodnota + 4*funkceF(a + i*h)*h/3;
        else
            hodnota = hodnota + 2*funkceF(a + i*h)*h/3;
        end    
    end   
    
    vysledek = hodnota;
end

