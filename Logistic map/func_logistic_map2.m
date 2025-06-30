clear all; clf
r = 3.828;
map = @(r,x) r * x.*(1-x);
xx = []; 

x0 = rand;
xx = [1 x0; xx];
n = 300;
for i = 2:n
	x1 = map(r, x0);
	xx = [i x1; xx]; x0 = x1;
end
plot(xx(:, 1), xx(:,2), 'o')
