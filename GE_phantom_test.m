
%% 0 
close all;
clear all;
clc;


%% 1 导入图像
load('noisy_phantom.mat')


%% 2 显示图像
I = fftshift(ifft2(data));
imshow(abs(I), [])

% 0 显示原始的k.空间数据
figure
subplot(131), imshow(real(data)), title('实部')
subplot(132), imshow(abs(data)),  title('绝对值')
subplot(133), imshow(imag(data)), title('虚部')

% 1 显示原始的k.空间数据, 加[]
figure
subplot(131), imshow(real(data), []), title('实部')
subplot(132), imshow(abs(data), []),  title('绝对值')
subplot(133), imshow(imag(data), []), title('虚部')

% 2 显示傅里叶变换后的重建图像
figure
subplot(131), imshow(real(I), []), title('实部')
subplot(132), imshow(abs(I), []),  title('绝对值')
subplot(133), imshow(imag(I), []), title('虚部')

% 3 显示正中间的剖线图
figure 
subplot(121), plot(abs(I(128, :))), title('x=128')
subplot(122), plot(abs(I(:, 128))), title('y=128')