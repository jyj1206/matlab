[X, Y] = meshgrid(-2:.2:2);
Z = X.*exp(-X.^2 - Y.^2);
[DX, DY] = gradient(Z, .2, .2);
quiver(X, Y, DX, DY)