close all, clear all;
% Load Image
im = imread('tire.tif'); % tire.tif is a MATLAB Example Image

% Histogram Equalise IMage
eqim = histeq(im);

% Show both Images
imshow(im)
figure, imshow(im)

% Compute and display histograms of Images

figure; imhist(im)
figure; imhist(eqim)


% Another Examples

im = rgb2gray(imread('Unequalized_Hawkes_Bay_NZ.jpg')); % tire.tif is a MATLAB Example Image

% Histogram Equalise IMage
eqim = histeq(im);

% Show both Images
imshow(im)
figure, imshow(eqim)

% Compute and display histograms of Images

figure; imhist(im)
figure; imhist(eqim)