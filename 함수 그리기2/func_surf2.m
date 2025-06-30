[X, Y] = meshgrid(1:0.1:10, 1:0.1:20);
Z = sin(X)+ cos(Y);
surf(X, Y, Z)