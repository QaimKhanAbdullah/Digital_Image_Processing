clear all; close all
x=imread('A.jpg');
y = imresize(x,[200 200]);
imshow(x)
[r,c,s] = size(y) ;
[m,n] = ginput() ;
g(min(n):max(n),min(m):min(m),:) = 1 ;
g = g * 255 ;
figure ; imshow(g)
not_g = max(max(max(g)))-g;