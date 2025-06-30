k = 2; 
line([0 k], [0 k]); hold on; line([-k 0], [k 0]);
axis([-k k -1 3])

x = -k:0.01:k;
a0 = 2; fs = a0/2;
for n=1:20
	if mod(n, 2) == 0
		an = 0;
    else
		an = -8/((n*pi)^2);
	end
	fs = fs + an * cos(n*pi*x/2) + 0*sin(n*pi*x/2);
end

plot(x, fs, 'k')