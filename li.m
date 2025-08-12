function [ vysl ] = li( bodX,k,x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    citatel = 1;
    jmenovatel = 1;
    vel = size(bodX);
    n = vel(2);
    
    for i=1:n
        if i==k 
            continue;
        end    
        citatel = citatel * (x - bodX(i));
        jmenovatel = jmenovatel * (bodX(k) - bodX(i));
    end    

    vysl = citatel / jmenovatel;
end

