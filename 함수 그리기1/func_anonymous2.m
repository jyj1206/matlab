myfunction = @(x, y) (x.^2 + y.^2 + x*y);
x = 1;
y = 10;
z = myfunction(x, y);
z % 100 + 1 + 10 = 111