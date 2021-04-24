% demo of aliasing sampling at nyquist frquency

close all
clear tt_sf
samples = 10000;
samp_freq = 40;
nyq = samp_freq/2
samp_time = samples/samp_freq;
freq = 40;
t = [0:samples-1]; 
tt = t/10000; % each tic is 0.1 msec, therefore 1 sec shows on plot
size(tt);
sint = sin(tt);
radfreq = freq*(2*pi)/1; 
sint2 = sin(radfreq*tt);
% radial freq is radfreq, Hz is radfreq/(2*pi) 
plot(tt, sint2, 'k')
title('radfreq plot')
pause(1)
if nyq - freq < 0 alias = nyq - abs(nyq-freq), end 
cnt = 1; 
for ii = 1:samp_time:samples
  tt_sf(cnt) = ii/samples;
  cnt=cnt+1; 
end
if ii < samples tt_sf(cnt) = samples/10000; end
sint3 = sin(radfreq*tt_sf);
hold on
tt_sf_sze = size(tt_sf,2)

plot(tt_sf, sint3, 'r')


figure, plot(tt_sf, sint3, 'r.'), hold on, plot(tt, sint2, 'k')