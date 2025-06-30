x = -10:0.01:10; 
y = 0;
for n = 0:10
    % 실제 함수 그리기
    % plot(x, sin(x), 'r', 'linewidth', 2, 'DisplayName', 'sin(x)');  % sin(x)
    plot(x, cos(x), 'r', 'linewidth', 2, 'DisplayName', 'cos(x)'); % cos(x)
    hold on;
    
    % Taylor 급수로 근사한 y 계산
    %y = y + ((-1)^n / factorial(2*n+1) * (x.^(2 * n + 1))); % sin(x)
    y = y + ((-1)^n/factorial(2*n) * (x.^(2 * n))); % cos(x)
    
    % 근사 함수 그리기
    plot(x, y, 'b', 'DisplayName', ['Taylor Approx (n = ' num2str(n) ')']);
    
    % 축 및 범례 설정
    axis([-10 10 -2 2]);
    legend('show'); % 범례 표시
    pause(0.5); % 잠시 멈춤
    hold off;
end
