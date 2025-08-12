% TOHLE JE VERZE KTEROU NAPSAL UČITEL
% function [ vysl ] = li( bodX,k,x )
% %UNTITLED2 Summary of this function goes here
% %   Detailed explanation goes here
%     citatel = 1;
%     jmenovatel = 1;
%     vel = size(bodX);
%     n = vel(2);
% 
%     for i=1:n
%         if i==k 
%             continue;
%         end    
%         citatel = citatel * (x - bodX(i));
%         jmenovatel = jmenovatel * (bodX(k) - bodX(i));
%     end    
% 
%     vysl = citatel / jmenovatel;
% end


% TOHLE NAPSAL CHATBOT
function y = li(bodX, fX, t)
% LI - vyhodnotí Lagrangeův interpolační polynom v bodech t
%   y = li(bodX, fX, t)
%   bodX ... vektor uzlů x_i (1xn nebo nx1), všechny různé
%   fX   ... vektor hodnot f_i stejné délky jako bodX
%   t    ... skalar/vektor/matice bodů, kde chceme P(t)
%   y    ... stejného tvaru jako t
%
% Princip:
%   P(t) = sum_{i=1..n} f_i * L_i(t),
%   L_i(t) = prod_{k!=i} (t - x_k)/(x_i - x_k)

    % --- kontrola a příprava vstupů ---
    bodX = bodX(:).';               % řádkový vektor
    fX   = fX(:).';
    n = numel(bodX);
    if numel(fX) ~= n
        error('li:badInput','bodX a fX musí mít stejný počet prvků.');
    end
    if numel(unique(bodX)) ~= n
        error('li:dupNodes','Uzlů v bodX se nesmí opakovat.');
    end

    tSize = size(t);
    t = t(:).';                     % počítáme jako řádek

    % --- vlastní výpočet P(t) ---
    y = zeros(size(t));
    for i = 1:n                     % POZOR: přes indexy 1..n
        Li = ones(size(t));         % čitatel báze L_i(t)
        denom = 1;                  % jmenovatel = prod_{k!=i}(x_i - x_k)
        xi = bodX(i);
        for k = 1:n                 % taky indexy 1..n
            if k == i, continue; end
            Li    = Li .* (t - bodX(k));
            denom = denom * (xi - bodX(k));
        end
        y = y + fX(i) * (Li / denom);
    end

    y = reshape(y, tSize);          % zpět do tvaru vstupu t
end

