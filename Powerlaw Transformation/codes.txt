G = rgb2gray(imread("test.jpg"));
gamma =0.75;
e = double(G).^gamma;
figure,subplot(1,2,1),imshow(G);title('Original Image');
subplot(1,2,2),imshow(uint8(e));title('Powerlaw Transformation Image');


/*gamma>1 = brighter image, 
gamma<1 = darker image */