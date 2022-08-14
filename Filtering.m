close all;
clear all;
h1 = ones(3) / 120;
h2 = fspecial('gaussian',5,5);
x = imread('A.jpg');

%x = rgb2gray(x);
g1 = imfilter(x,h1);
g2 = imfilter(x,h2);
%g3 = medfilt2(x);
%g4 = conserv(x);
subplot(1,3,1),imshow(x),title('Original Image');
subplot(1,3,2),imshow(g1),title('G1');
subplot(1,3,3),imshow(g2),title('G2 ');
%subplot(1,4,4),imshow(g3),title('Median Filter');

