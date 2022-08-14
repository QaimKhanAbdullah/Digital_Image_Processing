%Translation%

clear all; close all
x=imread('A.jpg');
[r,c,s] = size(x) ;
y1 = x(1:80,1:80,:) ;
y2 = x(1:80,80+1:c,:) ;
y3 = x(80+1:r,1:80,:) ;
y4 = x(80+1:r,80+1:c,:) ;
yy = [ y4 y3 ; y2 y1 ];

subplot(1,2,1),imshow(x),title('Original Image');
subplot(1,2,2),imshow(yy),title('Translated Image');