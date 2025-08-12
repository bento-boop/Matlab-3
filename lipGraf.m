function [ osax, osay ] = lipGraf( bodX, fX,a,b )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    osax = a:0.1:b;
    
    vel = size(osax);
    n = vel(2);

    osay = zeros(1,n);
    for i=1:n
        osay(i) = lip(bodX,fX,osax(i));
    end    
end

