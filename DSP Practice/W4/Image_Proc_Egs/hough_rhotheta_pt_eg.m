clear all,close all;

% Simple Hough Transform Example
% Hough Transform of a Point

M= 256; N = 256;
im = zeros(M,N);
x = 128, y = 128
im(x,y) = 1;


imshow(1-im); % Invert image for plots
axis on, axis normal;
xlabel('x'), ylabel('y');

[H,T,R] = hough(im);

figure
imshow(imadjust(mat2gray(1-H)),'XData',T,'YData',R,...
'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');

axis on, axis normal, hold on;
colormap(hot);
