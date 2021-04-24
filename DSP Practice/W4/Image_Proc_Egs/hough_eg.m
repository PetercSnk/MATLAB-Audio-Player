close all, clear all;

% Modified MATLAB Hough Demo Code --- See doc hough

RGB = imread('gantrycrane.png');

% Convert to intensity.
I  = rgb2gray(RGB);

% Extract edges.
BW = edge(I,'canny');
[H,T,R] = hough(BW,'RhoResolution',0.5,'Theta',-90:0.5:89.5);

% Display the original image.
subplot(3,1,1);
imshow(RGB);
title('Gantrycrane Image');

% Display the Edges image.
subplot(3,1,2);
imshow(BW);
title('Gantrycrane Edge');

% Display the Hough matrix.
subplot(3,1,3);
imshow(imadjust(mat2gray(H)),'XData',T,'YData',R,...
      'InitialMagnification','fit');
title('Hough Transform of Gantrycrane Image');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(hot);