clear all; clf
map = @(r,x) r*x.*(1-x);
for r = 2:0.001:4
	x0 = rand;
	for j = 1:10000
		x1 = map(r, x0); x0 = x1;
	end
	pp = [];
	for j = 1:100
		x1 = map(r, x0); pp = [r x1;pp];
		x0 = x1;
	end
	plot(pp(:,1), pp(:,2), '.', 'markersize', 2);
hold on
end
		