% create a grey scale ramp image and show it

wDeg = 1;  %size of image (in degrees)
nPix = 200;  %resolution of image (pixels);
[greyramp_im,y] = meshgrid(linspace(-wDeg/2,wDeg/2,nPix+1));
greyramp_im = y(1:end-1,1:end-1);
T = graythresh(greyramp_im)
bin_im = imbinarize(greyramp_im, 0.01);

figure(1)
clf

subplot(1, 3, 1)
imshow(greyramp_im);

subplot(1, 3, 2)
imshow(bin_im);

subplot(1, 3, 3)
imhist(greyramp_im)



colormap(gray);

