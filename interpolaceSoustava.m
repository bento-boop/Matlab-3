clear;
x = [0 1 2 3];
y = [-1 2 3 0];

n = size(x,2);

A = zeros(n,n);
b = zeros(n,1);

for i=1:n
    for j=1:n-1
        A(i,j) = x(1,i)^(n-j);
    end
    A(i,n) = 1;
    b(i,1) = y(1,i);
end

p = A\b

ox = x(1,1)-1:0.001:x(1,n)+1;
m = size(ox,2);
oy = zeros(1,m);
for i=1:m
    oy(1,i) = polyval(p,ox(i));
end    

hold on
    plot(ox,oy,'k');
    plot(x,y,'r*');
hold off    
