%Scaling%

clear all; close all
x=imread('A.jpg');
[r,c,s] = size(x);
a = imresize(x,[r*4 c*4]);
y = imresize(x,[r/8 c/8]);
subplot(1,3,1),imshow(x),title('Original Image');
subplot(1,3,2),imshow(a),title('Scaled Image by 4');
subplot(1,3,3),imshow(y),title('Scaled Image by 8');