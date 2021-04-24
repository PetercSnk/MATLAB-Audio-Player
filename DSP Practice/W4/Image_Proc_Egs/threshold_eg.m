close all, clear all;

% Simple Thresholding Demos

im = imread('rice.png');
figure, imshow(im);


% Show Histogram

figure, imhist(im);

% Get MATLAB to estimate threshold value
thresh_level = graythresh(im);

% Threshold and show
im_thresh= im2bw(im,thresh_level);
figure, imshow(im_thresh)



% Another Example

im = rgb2gray(imread('scan.jpg'));

figure, imshow(im);


% Show Histogram

figure, imhist(im);

% Get MATLAB to estimate threshold value
thresh_level = graythresh(im);

% Threshold and show
im_thresh= im2bw(im,thresh_level);
figure, imshow(im_thresh)

% And Another this does not work so well

im = imread('coins.png');
figure, imshow(im);

% Show Histogram

figure, imhist(im);

% Get MATLAB to estimate threshold value
thresh_level = graythresh(im);

% Threshold and show
im_thresh= im2bw(im,thresh_level);
figure, imshow(im_thresh)
