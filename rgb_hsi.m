
clc;
clear all;
close all;

I = imread('A.jpg');
%imshow(I);
%I;
%imshow(redc)
hsv_image = rgb2hsv(I);
imshow(hsv_image);
rgb_image = hsv2rgb(hsv_image);
subplot(1,2,1),imshow(rgb_image),title('rgb Image');
subplot(1,2,2),imshow(hsv_image),title('HSI Image');




[W H Ch] = size(I)