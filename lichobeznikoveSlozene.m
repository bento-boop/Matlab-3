function [ vysledek ] = lichobeznikoveSlozene( a,b,m )
    h = (b-a)/m;
    hodnota = h*(funkceF(a) + funkceF(b))/2;
    for i=1:m-1
        hodnota = hodnota + funkceF(a + i*h)*h;
    end   
    vysledek = hodnota;
end

