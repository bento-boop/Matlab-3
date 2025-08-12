a = 0;
b = 10;
poc = 1;

n = 10;

[xn,yn] = diro(a,b,n,poc);

xnp = a:0.01:b;
ynp = zeros(1,size(xnp,2));


size(xnp,2);
for i=1:size(xnp,2)
    ynp(1,i) = fce(xnp(1,i));
end

hold on
    plot(xn,yn,'black*');
    plot(xnp, ynp,'r');
hold off