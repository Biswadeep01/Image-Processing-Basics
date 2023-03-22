G = rgb2gray(imread("test.jpg"));
L = 255;
C = L/log10(1+L);
d = C*log10(1+double(G));
figure,subplot(1,2,1),imshow(G);title('Original Image');
subplot(1,2,2),imshow(uint8(d));title('Log Transformation Image');