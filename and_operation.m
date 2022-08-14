%AND operation%

x = imread('A.jpg');
blackImage = im2bw(x);
[r,c,ch] = size(blackImage);
blackImage2 = imresize(blackImage,[r,c]);


D = and(blackImage,blackImage2);
subplot(1,2,1),imshow(blackImage),title('Original Image 1');
subplot(1,2,2),imshow(D),title('Original Image 2');
