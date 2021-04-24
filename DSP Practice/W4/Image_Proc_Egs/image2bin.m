m = imread('moon.jpg');
m2d = rgb2gray(m);


T = graythresh(m2d);
b = imbinarize(m2d, T);

figure(1)
clf

subplot(1, 3, 1)
imshow(m2d);

subplot(1, 3, 2)
imshow(b);

subplot(1, 3, 3)
imhist(m2d)