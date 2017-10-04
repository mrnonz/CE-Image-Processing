Input_image = imread('pic.jpg');

R = Input_image(:,:,1);
G = Input_image(:,:,2);
B = Input_image(:,:,3);

figure(1);

plot3(R,G,B,'x','markers',3);

grid on;

xlabel('R');
ylabel('G');
zlabel('B');
