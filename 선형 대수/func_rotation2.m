X = [-6 -6 -7 0 7 6 6 -3 -3 0 0;
    -7 2 1 8 1 2 -7 -7 -2 -2 -7]

subplot(1, 2, 1)
trans(X, 0) % 회전 변환을 하지 않은 이미지
title('original image')

subplot(1, 2, 2)
trans(X, 270) % 270도 회전 변환을 적용한 이미지
title('rotationed image')

function trans(X, theta)
    X(:, end+1) = X(:, 1);

    ang = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];

    trans = ang * X;
    plot(trans(1, :), trans(2, :), '.-', 'markersize', 20, 'lineWidth', 2)
    axis(10 * [-1 1 -1 1])
    axis square
end

