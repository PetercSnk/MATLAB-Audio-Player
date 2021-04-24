
close all, clear all;


% Creat vidObj to store movie

% Prepare the new file.
vidObj = VideoWriter('hough_anim.avi');
open(vidObj);

% Hough Line to r, theta space animation demo

r = 3;
theta = pi/4;

x = 0:0.5:10;

y = r/sin(theta) - x/tan(theta);

M = 10; N = round(max(y) - min(y));
im = zeros(M*10,N*10);


subplot(1,2,1)
plot([x(1) x(end)], [y(1) y(end)], '-k');
hold on
axis equal
grid on


i = 1;

for x_pt = x
   y_pt =  r/sin(theta) - x_pt/tan(theta);
   subplot(1,2,1)
   plot(x_pt,y_pt,'o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','r','MarkerSize',10);
   
   % Create an 'image' with a point at (x_pt,y_pt) and Hough Transform it
   
   
   im((round(x_pt)+1)*10,round(y_pt-min(y) +1)*10)= 1;
   
   [H,T,R] = hough(im);
   P  = houghpeaks(H,1);
   subplot(1,2,2);

   imshow(imadjust(mat2gray(1-H)),'XData',T,'YData',R,...
   'InitialMagnification','fit');
    xlabel('\theta'), ylabel('\rho');
    axis on, axis normal, hold on;
    plot(T(P(:,2)),R(P(:,1)),'o','LineWidth',2,'MarkerEdgeColor','g','MarkerFaceColor','b','MarkerSize',10);
    %axis([-1 11 min(y) max(y)]);
   
   doit = input('Press Any Key to Continue');
   shg;
   subplot(1,2,1)
   plot(x_pt,y_pt,'o','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','b','MarkerSize',10);
   
   Mov(i) = getframe(gcf); % Load M with current frame
   writeVideo(vidObj,Mov(i));
   i = i+1; % next frame
 
end


implay(Mov); % play movie.

%save movie close the file.
close(vidObj);


shg