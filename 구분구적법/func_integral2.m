fun = @(x) exp(-x).*sin(x);

q = integral(fun, a, b)
q2 = integral(fun, a, inf)