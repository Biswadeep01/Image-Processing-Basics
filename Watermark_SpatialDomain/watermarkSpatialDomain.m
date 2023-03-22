I = im2gray(imread('test.jpg'));
W = im2gray(imread('wm.jpg'));
[m1 n1] = size(W);
i1= 1;
j1= 1;
p= 1;
c= I; 
iii= 1;
jjj= 1;
for ff= 1:8,
	for i= 1:32,
		jjj= 1;
		for j= j1:j1+n1-1,
			I(i, j)= bitand(I(i, j), 254);
			temp= bitand(W(i, jjj),2^(ff-1));
			temp= temp/(2^(ff-1));
			c(i, j)= bitor(I(i, j), temp);
			jjj= jjj+1;
		end
	end
	j1= j1+32;
end
figure,subplot(2,2,1),imshow(I);title("Original Image");
subplot(2,2,2),imshow(W);title("Watermark Image");
subplot(2,2,3),imshow(c);title("Output Image");