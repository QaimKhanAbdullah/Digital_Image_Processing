clear all;
close all;

X = imread('A.jpg');
Y = rgb2gray(X);
SobelFilter = edge(Y,'sobel');
PrewittFilter = edge(Y,'Prewitt');
[ed1, th, gx, gy] = edge(Y,'sobel');
%subplot(1,3,1),imshow(Y),title('GreyScale Image');
%subplot(1,3,2),imshow(SobelFilter),title('Sobel Filtered Image');
%subplot(1,3,3),imshow( PrewittFilter),title('Prewitt Filtered Image');

subplot(1,3,1),imshow(Y),title('GreyScale Image');
subplot(1,3,2),imshow(gx*5),title('Sobel Filtered Image');
subplot(1,3,3),imshow( gy*5),title('Prewitt Filtered Image');