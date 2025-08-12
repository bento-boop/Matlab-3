function [ vysl ] = integracefinal( a,b, tol )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    m = 2;
    while abs(lichobeznikoveSlozene(a,b,m) - SimpsonovoSlozene(a,b,m))>tol
        m = 2*m;
    end  
    
    vysl = lichobeznikoveSlozene(a,b,m);

end

