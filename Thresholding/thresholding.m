G = rgb2gray(imread('test.jpg'));
[m,n]=size(G);
t = input('Enter the threshold parameter: ');
Enter the threshold parameter: 120
for i=1:m
    for j=1:n
        if G(i,j)<t
            T(i,j)=0;
        else
            T(i,j)=255;
        end
    end
end
figure,subplot(1,2,1),imshow(G);title("Original Image");
subplot(1,2,2), imshow(uint8(T)); title("Threshold Image");
