cnt = 0;
for i = 1:100
    for j = i:100
        if gcd(i, j) == 4
            cnt = cnt + 1;
        end
    end
end
cnt