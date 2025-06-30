clear all;figure;axis(10*[-1 1 -1 1])

[x,y] = ginput; p = [x y]';
plot(p(1,:),p(2,:),'.-','markersize',20,'linewidth',2)
hold on

theta=180;
ang=[cosd(theta) -sind(theta);sind(theta) cosd(theta)];
trans=ang*p;
plot(trans(1,:),trans(2,:),'.-','markersize',20,'linewidth',2)
hold off