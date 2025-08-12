function [ osax, vysledek ] = diro( a,b,n,poc )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    h = (b-a)/n;
    ox = zeros(1,n+1);
    fi = zeros(1,n+1);
    
    ox(1) = a;
    fi(1) = poc;
    
    for i=2:n+1
        ox(i) = a + (i-1)*h;
        fi(i) = fi(i-1) + h * drce(a+(i-2)*h,fi(i-1));      
    end   
    
    osax = ox;
    vysledek = fi;
end

