clear;
clc;
G = rgb2gray(imread("test.jpg"));
C = G*.5;
D = G*5;
figure,subplot(1,3,1),imshow(I);title('Original Image');
subplot(1,3,2),imshow(C);title('Increased Contrast Image');
subplot(1,3,3),imshow(D);title('Decreased Contrast Image');