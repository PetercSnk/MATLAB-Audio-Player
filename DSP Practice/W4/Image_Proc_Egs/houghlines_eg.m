close all, clear all;

%  Modified MATLAB Hough Demo Code --- See doc houghpeaks

I  = imread('circuit.tif');
rotI = imrotate(I,33,'crop');
BW = edge(rotI,'canny');
[H,T,R] = hough(BW);
P  = houghpeaks(H,5,'threshold',ceil(0.3*max(H(:))));


% Display the original image.
subplot(2,3,1);
imshow(I);
title('Original Image');

% Display the Edges image.
subplot(2,3,2);
imshow(BW);
title('Edges');




x = T(P(:,2)); y = R(P(:,1));


% Find lines and plot them
lines = houghlines(BW,T,R,P,'FillGap',5,'MinLength',7);
subplot(2,3,3);

imshow(rotI), hold on
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','blue');
title('Hough Transform Detected Edges');


% Display the Hough Peaks.
subplot(2,3,4:6);
imshow(H,[],'XData',T,'YData',R,...
            'InitialMagnification','fit');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
title('Hough Transform and Peaks');
plot(x,y,'s','color','white');
