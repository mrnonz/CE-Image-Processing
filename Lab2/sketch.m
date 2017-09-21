RGB = imread('pic.png');
I = rgb2gray(RGB);
Wx = [-1 -2 -1;0 0 0;1 2 1];
Wy = [-1 0 1;-2 0 2;-1 0 1];
Csame1 = conv2(I,Wx,'same');
Csame2 = conv2(I,Wy,'same');

Gxy = sqrt(Csame1.^2+Csame2.^2);

l_bw(:,:,:,1) = (Gxy > 1500);
l_bw(:,:,:,2) = (Gxy > 1300);
l_bw(:,:,:,3) = (Gxy > 1100);
l_bw(:,:,:,4) = (Gxy > 900);
l_bw(:,:,:,5) = (Gxy > 700);
l_bw(:,:,:,6) = (Gxy > 500);
l_bw(:,:,:,7) = (Gxy > 300);
l_bw(:,:,:,8) = (Gxy > 150);
l_bw(:,:,:,9) = (Gxy > 50);
l_bw(:,:,:,10) = (Gxy > 0);

mov = immovie(l_bw,gray(256));
implay(mov);
