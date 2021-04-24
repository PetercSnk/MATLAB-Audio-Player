clear all, close all;

M= 256; N = 256;
im = zeros(M,N);


figure(1)
imshow(im)
hold on

plot([0 M],[0 N],'w');


F=getframe;

im = F.cdata(2:M-1,2:N-1);



[H,T,R] = hough(im);
figure
imshow(imadjust(mat2gray(1-H)),'XData',T,'YData',R,...
'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
colormap(hot);