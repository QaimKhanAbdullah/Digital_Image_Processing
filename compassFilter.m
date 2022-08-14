%Applying compass Filter%

X = imread('A.jpg');
y = rgb2gray(X);
sx1 = [-2.2 0.5 3.5 ; -2 0 2 ; 2.2 -0.5 -3.5] ;
sa1 = [ 0.5 1.5 2.5 ; -1.5 0 1.5 ; -2.5 -1.5 -0.5 ] ;

sx2 = rot90(sx1) ; sa2 = rot90(sa1) ;
sx3 = rot90(sx2) ; sa3 = rot90(sa2) ;
sx4 = rot90(sx3) ; sa4 = rot90(sa3) ;

sy1 = [1.5 2.5 1.5 ; 0.5 0.5 0.5 ; -1.5 -2.5 1.5] ;
sb1 = [ 2.5 1.5 0.5 ; 1.5 0.5 -1.5 ; 0.5 -1.5 -2.5 ] ;

sy2 = rot90(sy1) ; sb2 = rot90(sb1) ;
sy3 = rot90(sy2) ; sb3 = rot90(sb2) ;
sy4 = rot90(sy3) ; sb4 = rot90(sb3) ;
g1x = conv2(y,sx1,'same') ; g1y = conv2(y,sy1,'same') ;
g2x = conv2(y,sa1,'same') ; g2y = conv2(y,sb1,'same') ;
g3x = conv2(y,sx2,'same') ; g3y = conv2(y,sy2,'same') ;
g4x = conv2(y,sa2,'same') ; g4y = conv2(y,sb2,'same') ;
g5x = conv2(y,sx3,'same') ; g5y = conv2(y,sy3,'same') ;
g6x = conv2(y,sa3,'same') ; g6y = conv2(y,sb3,'same') ;
g7x = conv2(y,sx4,'same') ; g7y = conv2(y,sy4,'same') ;
g8x = conv2(y,sa4,'same') ; g8y = conv2(y,sb4,'same') ;
g1 = sqrt(g1x.^2 + g1y.^2) ;
g2 = sqrt(g2x.^2 + g2y.^2) ;
mg = max(g1,g2) ;
M = mg*0.0005 ;
MM = im2bw(M,0.25) ;

subplot(1,3,1),imshow(Y),title('Orig Grey Image');
subplot(1,3,2),imshow(M),title('Grey Image');
subplot(1,3,3),imshow( MM),title('Black & White Image');