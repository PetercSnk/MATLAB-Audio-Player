close all, clear all;

% demo to show how noise affects edge detections


im = imread('text.png');



% Show Image

figure,imshow(im);
title('Original Image');

edge_im = edge(im,'zerocross');

figure,imshow(edge_im);
title('Edge Detected Original Image');


% now addnoise to the image

im_noisy = imnoise(double(im),'salt & pepper', 0.12);



figure,imshow(im_noisy);
title('Noisy Image');

edge_im_noisy = edge(im_noisy,'zerocross');

figure,imshow(edge_im_noisy);
title('Edge Detected Noisy Image');