a = 2;
b = 4;
tol = 0.01;

osaX = a:0.01:b;
osaY = f(osaX);

hold on
plot(osaX,osaY);

x = (a+b)/2;

while abs(f(x))>tol
    x = (a+b)/2;
    plot([x],[f(x)],'k+');
    pause(1);
    if f(a)*f(x)<0
        b = x;
    else
        a = x;
    end    
end    

plot([x],[f(x)],'r*');

hold off
x
    