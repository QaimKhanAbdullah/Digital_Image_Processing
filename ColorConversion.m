%Thi sprogram creates 3 images of color red, blue, green respectively from an rgb color%

x = imread('A.jpg');
xr = x;
xr(:,:, [2,3]) = 0;
xg = x;
xg(:,:,[1,3]) = 0;
xb = x;
xb(:,:,[1,2]) = 0;
xt = x;
xt(:,:,2);
subplot(1,5,1),imshow(x),title('Original')
subplot(1,5,2),imshow(xr),title('Red')
subplot(1,5,3),imshow(xg),title('Green')
subplot(1,5,4),imshow(xb),title('Blue')
subplot(1,5,5),imshow(xt),title('xt')