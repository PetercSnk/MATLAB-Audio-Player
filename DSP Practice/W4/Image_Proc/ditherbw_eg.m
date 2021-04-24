% Load Image and Show
im = imread('lenabw.BMP'); 
imshow(im)

% Dither Image and Show Result
figure('Name', 'Dithered Image');
imdith = dither(im);
imshow(imdith);