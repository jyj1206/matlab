clear all;
clf
r = 0.9; 
map = @(r, x) r * x .* (1-x);
x = 0:0.01:1; plot(x, map(r, x), 'k');
hold on; plot(x, x, 'r')

x0 = rand;
x1 = map(r, x0); plot(x0, x0, 'o');
n = 30;
for i = 1:n
    line([x0 x0], [x0 x1]);
    line([x0 x1], [x1 x1]);
    x0 = x1; x1 = map(r, x0);
end
