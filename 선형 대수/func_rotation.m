p = [1 0; 2 0; 2 1; 1 1; 1 0];
plot(p(:,1), p(:,2), '.-', 'markersize', 20, 'linewidth', 2)
axis([-4 4 -4 4]); hold on

thetas = [30 70 180 225 270];

for i = 1:length(thetas)
    theta = thetas(i);
    ang = [cosd(theta) -sind(theta); sind(theta) cosd(theta)];
    trans = ang*p';
    trans = trans';
    plot(trans(:,1), trans(:,2), '.-', 'markersize', 20, 'linewidth', 2)
end