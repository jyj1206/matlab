[x, y] = meshgrid(-5:0.1:5,-4:0.1:6);
z = 4*y - y.^2 - 12*x + x.^3;
contour(x, y, z, 30)