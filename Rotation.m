%Rotation%

clear all; close all
x=imread('A.jpg');
r1 = imrotate(x,45);
r2 = imrotate(x,-45);
subplot(1,3,1),imshow(x),title('Original Image');
subplot(1,3,2),imshow(r1),title('Rotated Image by 45');
subplot(1,3,3),imshow(r2),title('Rotated Image by -45');