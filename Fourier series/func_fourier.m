k = 2;
line([-pi 0], [-k -k]); hold on; line([0 pi], [k k]);
axis([-4 4 -3 3])

x = -pi:0.01:pi; a0 = 0; fs = a0;

n_max = 300;

for n = 1:n_max
    fs = fs + 0*cos(n*x) + (2*k / (n * pi) * (1 - cos(n*pi)) * sin(n*x));
end
plot(x, fs, 'r')