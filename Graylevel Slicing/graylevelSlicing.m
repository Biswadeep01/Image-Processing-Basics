clear;
clc;
G = rgb2gray(imread('test.jpg'));
G = imresize(G, [256 256]);
X = double(G);
[m,n] = size(X);
L = double(255);
a = double(round(L/1.25));
b = double(round(2*L/2));
for i=1:m
        for j =1:n
            if(X(i,j)>=a & X(i,j)<=b)
                z(i,j) = L;
            else
                z(i,j)=X(i,j);
            end
        end
end
for i=1:m
        for j =1:n
            if(X(i,j)>=a & X(i,j)<=b)
                q(i,j) = L;
            else
                q(i,j)=0;
            end
        end
end
figure, subplot(1,2,1),imshow(uint8(X));title('Input Image');
subplot(1,2,2),imshow(uint8(z));title('Gray-level Sliced Image With BG');
subplot(1,2,3),imshow(uint8(q));title('Gray-level Sliced Image Without BG');