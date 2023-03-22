clc;
clear;
I=imread('test.jpg');
N=8;
Z=256;
B=zeros(256,256);
for r=1:N:256
    for c=1:N:256
        B(r:r+N-1,c:c+N-1)=I(r:r+N-1,c:c+N-1);
        C=dct2(B);
        D=1/Z*idct2(C);
    end;
end;
figure,subplot(1,3,1),imshow(I);title("Original Image");
subplot(1,3,2),imshow(D);title("Compressed Image");
subplot(1,3,3),imshow(C);title("DCT Matrix");
imwrite(D, "CompressedImage.jpg");
imwrite(C, "DCT_Matrix.jpg");