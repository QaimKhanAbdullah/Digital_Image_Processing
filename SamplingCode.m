clc;
clear all;
close all;
x = imread('A.jpg');
subplot(1,2,1),imshow(x),title('Image 1');
[r, c ,s ] = size(x);
N =1;
y = zeros(size(x));
y(1:N:r,1:N:c,:) = x(1:N:r,1:N:c,:);
%figure
%imshow(y*0.01);
z = y(1:N:r,1:N:c,:);
%figure
subplot(1,2,2),imshow(y*0.01),title(['Sample Image', num2str(N)]);
subplot(1,2,3),imshow(z*0.005),title('Image 3');
%imshow();