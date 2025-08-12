clear;
x = -8*pi:0.01:8*pi;
x2 = -8*pi:0.2:8*pi;
y = f(x2);
ypuv = f(x);
fy = ft(y);
mez = 10;

n = size(y,2);
for i=1:n
    if abs(fy(i))<mez
        fy(i) = 0;
    end
end    

ny = ift(fy);
hold on
    plot(x,ypuv,'r');
    plot(x2,ny,'k+');
hold off