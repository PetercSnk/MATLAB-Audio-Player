clear all;
close all;

sampfreq = 15;
rotfreq = 15;

rotstep= 360/rotfreq;

[im cmap] = imread('spokesR.gif');

[orign origm] = size(im);
offx = floor(orign/2);
offy = floor(orign/2);


% Create Movie of just 1 complete rotation of wheel --- NO SAMPLING
% Effectively  NYquist sample frequency is 15*15 = 225 Hz way above
% rotation frequency

%movie_wheel = avifile('aliasing_wheel_rot.avi', 'fps', 2, 'compression', 'none', 'colormap', cmap);

movie_wheel = VideoWriter('aliasing_wheel_rot.avi','Indexed AVI');

movie_wheel.FrameRate = 2;
movie_wheel.Colormap = cmap;

open(movie_wheel);

for i = 0:rotstep:360
IMR = imrotate(im,-1*i);

[n m] = size(IMR);
centrex = floor(n/2);
centrey = floor(m/2);

IMR = IMR(centrex-offx +1:centrex+offx,centrey-offy + 1 :centrey+offy);



writeVideo(movie_wheel,IMR);

end;


close(movie_wheel);



% Create Movie of rotating of wheel at sampling frequency
% movie_wheel = avifile('aliasing_wheel_sampfreq.avi', 'fps', 2, 'compression', 'none', 'colormap', cmap);

movie_wheel = VideoWriter('aliasing_wheel_sampfreq.avi','Indexed AVI');

movie_wheel.FrameRate = 2;
movie_wheel.Colormap = cmap;

open(movie_wheel);

rotstep = mod(360/(sampfreq/rotfreq),360)

for i = 0:15
    
rot = i*rotstep;
IMR = imrotate(im,-1*rot);

[n m] = size(IMR);
centrex = floor(n/2);
centrey = floor(m/2);

IMR = IMR(centrex-offx +1:centrex+offx,centrey-offy + 1 :centrey+offy);



writeVideo(movie_wheel,IMR);
end;


close(movie_wheel);



% Create Movie of rotating of wheel above sampling frequency

rotfreq = 29;

rotstep = mod(360/(sampfreq/rotfreq),360)

%movie_wheel = avifile('aliasing_wheel_oversampfreq.avi', 'fps', 2, 'compression', 'none', 'colormap', cmap);


movie_wheel = VideoWriter('aliasing_wheel_oversampfreq.avi','Indexed AVI');

movie_wheel.FrameRate = 2;
movie_wheel.Colormap = cmap;


open(movie_wheel);


for i = 0:15
    
rot = i*rotstep;
IMR = imrotate(im,-1*rot);

[n m] = size(IMR);
centrex = floor(n/2);
centrey = floor(m/2);

IMR = IMR(centrex-offx +1:centrex+offx,centrey-offy + 1 :centrey+offy);

writeVideo(movie_wheel,IMR);

end;

close(movie_wheel);


