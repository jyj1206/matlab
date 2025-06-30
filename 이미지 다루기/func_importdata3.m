clear; clf;
A = importdata('image.jpg');
[n m k] = size(A);
for i = 1:200
    for j = 1:m
        if A(i, j, 1) > 150 & A(i, j, 1) < 190 % R
            A(i, j, 1) = 0; 
        end
        if A(i, j, 2) > 120 & A(i, j, 2) < 180 % G
            A(i, j, 2) = 72;
        end
        if A(i, j, 3) > -1 & A(i, j, 3) < 40 % B
            A(i, j, 3) = 186;
        end
    end
end
image(A)