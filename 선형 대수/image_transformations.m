% 이미지 로드 및 크기 확인
A = imread('image.jpg');

% 창 위치 및 크기 조정
figure('Position',  [200, 200, 800, 500]);

% original image 출력
subplot(1, 2, 1);
image(A)
title('original image')


% 상하/좌우 변환 입력
answer = input("Enter lrflip or tbflip : ", "s");
[rows, cols, ch] = size(A);

% 변환 행렬 설정
if strcmp(answer, 'tbflip')
    ang = [1 0
           0 -1];
elseif strcmp(answer, 'lrflip')
    ang = [-1 0  
            0 1];
else
    error('Wrong input. Please enter a valid option.');
end

transformed_A = zeros(rows, cols, ch, 'uint8');

% 중심 좌표
h = (1 + cols) / 2; 
k = (1 + rows) / 2;

for x = 1:cols
    for y = 1:rows
        coord = [x - h; y - k]; 
        trans = ang * coord;
        trans = trans';
        new_x = trans(1) + h; % 변환된 x 좌표
        new_y = trans(2) + k; % 변환된 y 좌표
        transformed_A(new_y, new_x, :) = A(y, x, :); % y축 -> rows, x축 -> cols
    end
end

subplot(1, 2, 2);
image(transformed_A)
title('transformed image')