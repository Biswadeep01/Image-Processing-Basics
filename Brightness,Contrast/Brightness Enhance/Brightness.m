clear;
clc;
I = imread('test.jpg');
B = double(I)+50;
BR = double(I)-40;
figure,subplot(1,3,1),imshow(I);title('Originial Image');
subplot(1,3,2),imshow(uint8(B));title('Brightness Enhanced Image');
subplot(1,3,3),imshow(uint8(BR));title('Brightness Supressed Image');