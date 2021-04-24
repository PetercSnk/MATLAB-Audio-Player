% Load Image and Show
im = imread('lenargb.bmp'); 
imshow(im)

% Dither Image and Show Result

[imdith,map] = rgb2ind(im,255);
        
figure('Name', '256 Colour Indices');  
imshow(imdith);
colormap(map)

% Dither Image and Show Result

[imdith,map] = rgb2ind(im,32);
        
figure('Name', '32 Colour Indices');  
imshow(imdith);
colormap(map)