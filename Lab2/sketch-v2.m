lm1 = imread('pic.jpg');
lm2 = imread('pic3.jpg');

for frame = 1:100
    wx = frame;

    w1 = wx/100;

    w2 = 1-w1;

    lm_result = (lm1*w1)+(lm2*w2);

    I_bw(:,:,:,frame) = lm_result;

    %imshow(I_bw(:,:,:,frame));
end


mov = immovie(I_bw);
implay(mov,20);

v = VideoWriter('newfile2.avi');
v.FrameRate = 20;
open(v);
writeVideo(v,mov);
close(v)
