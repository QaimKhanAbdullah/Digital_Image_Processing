x = imread('A.jpg');
[r,c,s] = size(x);
y = zeros(r,c,s);
a = imnoise(x,'salt & pepper', 0.19);
b = imnoise(x,'poisson');
c = imnoise(x,'gaussian',1,2)
d = imnoise(x,'localvar',y)
e = imnoise(x,'speckle',1)

subplot(1,6,1),imshow(x),title('Original Image');
subplot(1,6,2),imshow(a),title('Salt & Pepper');
subplot(1,6,3),imshow(b),title('Poisson');
subplot(1,6,4),imshow(c),title('Gaussian');
subplot(1,6,5),imshow(d),title('localVar');
subplot(1,6,6),imshow(e),title('Speckle');