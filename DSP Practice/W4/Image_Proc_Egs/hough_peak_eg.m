close all, clear all;

%  Modified MATLAB Hough Demo Code --- See doc houghpeaks

I  = imread('circuit.tif');
BW = edge(I,'canny');
[H,T,R] = hough(BW);
P  = houghpeaks(H,2);


% Display the original image.
subplot(3,1,1);
imshow(I);
title('Original Image');

% Display the Edges image.
subplot(3,1,2);
imshow(BW);
title('Edges');

% Display the Hough Peaks.
subplot(3,1,3);

imshow(H,[],'XData',T,'YData',R,'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
plot(T(P(:,2)),R(P(:,1)),'s','color','white');

title('Hough Transform and Peaks');