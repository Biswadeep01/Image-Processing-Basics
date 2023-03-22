clear;
clc;
I = rgb2gray(imread('test.jpg'));
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
figure,subplot(2, 2, 1), imshow(I);title('Original Image');
subplot(2, 2, 2), imshow(R);title('Red Component Image');
subplot(2, 2, 3), imshow(G);title('Green Component Image');
subplot(2, 2, 4), imshow(B);title('Blue Component Image');