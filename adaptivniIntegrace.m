function [ vysledek ] = adaptivniIntegrace( a,b,tol )

    cely = SimpsonovoSlozene(a,b,2);
    x = (a+b)/2;
    levy = SimpsonovoSlozene(a,x,2);
    pravy = SimpsonovoSlozene(x,b,2);
    
    if abs(cely-levy-pravy)>tol
        vysledek = adaptivniIntegrace(a,x,tol) + adaptivniIntegrace(x,b,tol);
    else
        vysledek = cely;
    end    

end

