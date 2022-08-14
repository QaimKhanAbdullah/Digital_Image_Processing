%This program resizes the image %

x = imread('A.jpg');
y = imresize(x,.5) % This reduces the image size to 50%
z = imresize(x,[200,200]) %This reduces the image size to 200 by 200


subplot(1,3,1),imshow(x),title('Original Image');
subplot(1,3,2),imshow(y),title('Reduced Image by 50%');
subplot(1,3,3),imshow(z),title('Reduced Image by N by N');