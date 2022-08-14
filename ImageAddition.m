%Image Addition%

x = imread('A.jpg');
[r,c,ch] = size(x);
P = imread('A.jpg');
p = imresize(P,[r,c]);
A = x + p;
subplot(1,3,1),imshow(x),title('Original Image 1');
subplot(1,3,2),imshow(p),title('Original Image 2');
subplot(1,3,3),imshow(A),title('Added Image');