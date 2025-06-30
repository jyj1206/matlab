syms x
f = sin(x)/x;
T6 = taylor(f, x, 'Order', 8);
pretty(T6)