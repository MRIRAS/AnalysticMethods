
%% 0 
close all;
clear all;
clc;


%% 1 ����ͼ��
load('noisy_phantom.mat')


%% 2 ��ʾͼ��
I = fftshift(ifft2(data));
imshow(abs(I), [])

% 0 ��ʾԭʼ��k.�ռ�����
figure
subplot(131), imshow(real(data)), title('ʵ��')
subplot(132), imshow(abs(data)),  title('����ֵ')
subplot(133), imshow(imag(data)), title('�鲿')

% 1 ��ʾԭʼ��k.�ռ�����, ��[]
figure
subplot(131), imshow(real(data), []), title('ʵ��')
subplot(132), imshow(abs(data), []),  title('����ֵ')
subplot(133), imshow(imag(data), []), title('�鲿')

% 2 ��ʾ����Ҷ�任����ؽ�ͼ��
figure
subplot(131), imshow(real(I), []), title('ʵ��')
subplot(132), imshow(abs(I), []),  title('����ֵ')
subplot(133), imshow(imag(I), []), title('�鲿')

% 3 ��ʾ���м������ͼ
figure 
subplot(121), plot(abs(I(128, :))), title('x=128')
subplot(122), plot(abs(I(:, 128))), title('y=128')