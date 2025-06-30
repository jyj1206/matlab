% 복소수 생성 및 기본 연산
z = 3 + 4i; % 복소수 z = 3 + 4i
disp(['복소수: ', num2str(z)]);

% (1) 복소수의 절댓값 및 위상각
magnitude = abs(z); % 복소수의 크기
angle_rad = angle(z); % 위상각 (라디안)
disp(['크기: ', num2str(magnitude)]);
disp(['위상각 (라디안): ', num2str(angle_rad)]);

% (2) 복소수의 실수부와 허수부
real_part = real(z); % 실수부
imag_part = imag(z); % 허수부
disp(['실수부: ', num2str(real_part)]);
disp(['허수부: ', num2str(imag_part)]);

% (3) 복소수의 실수 여부 확인
is_real = isreal(z); % 복소수인지 실수인지 확인
disp(['z가 실수인가? ', num2str(is_real)]);