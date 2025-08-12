x = 0*pi:0.01:4*pi;
y = f(x);

for i=1:size(y,2)
    y(i)=y(i)+rand;
end
ypuv = y;
fy = ft(y);
mez = 50;

n = size(y,2);
for i=1:n
    if abs(fy(i))<mez
        fy(i) = 0;
    end
end    
ny = ift(fy);
hold on
plot(x,ypuv,'r-');
plot(x,ny,'k',LineWidth=2);
hold off