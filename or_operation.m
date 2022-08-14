%OR operation%

x = imread('A.jpg');
blackImage = im2bw(x);
[r,c,ch] = size(blackImage);
blackImage2 = imresize(blackImage,[r,c]);


D = or(blackImage,blackImage2);
imshow(D);