a = 2;
b = 4;
x0 = 4;
tol = 0.01;

osaX = a:0.01:b;
osaY = f(osaX);

hold on
plot(osaX,osaY);

x = x0;

while abs(f(x))>tol
    xp = x-1:0.01:x+1;
    yp = primka(xp,df(x),-df(x)*x+f(x));
    plot(xp,yp,'g');

    x = x - f(x)/df(x);
    plot([x],[f(x)],'k+');
    pause(1);
end   

x

plot([x],[f(x)],'r*');

hold off
    