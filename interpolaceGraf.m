a = -1;
b = 4;

osaX = [0 1 2 3];
osaY = [-1 2 3 0];


[gx,gy] = lipGraf(osaX,osaY,a,b);
hold on
plot(osaX,osaY,'b*');
plot(gx,gy,'r');
hold off



