fun = @(x) exp(-x).*sin(x);
x = 0:0.01:10;
plot(x, fun(x))

a = 0; b=10;
n=100000;
isum=0;
for i = 1:n
    isum = isum + fun(a+((b-a)/n)*(i-1))*((b-a)/n);
end
isum

