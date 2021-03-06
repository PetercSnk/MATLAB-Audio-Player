% Simple Sin Frequency Demo

figure;

samp_freq = 400;
dur = 8000; % 2 seconds
amp = 1;
phase = 0;
freq = 1;
s1 = mysin(amp,freq,phase,dur,samp_freq);

axisx = (1:dur)*360/samp_freq; % x axis in degrees

plot(axisx,s1);
set(gca,'XTick',[0:90:axisx(end)]);

fprintf('Initial Wave: \t Amplitude = %d\n \t\t Frequency = %d\n \t\t Phase = %d\n \t\t Duration (Samples) = %d\n \t\t Sample Frequency = %d\n\n', amp, freq, phase, dur, samp_freq);

% change frequency

freq = input('\nEnter Freqency (0-200):\n\n');

s2 = mysin(amp,freq,phase,dur,samp_freq);
hold on
plot(axisx,s2,'r');

set(gca,'XTick',[0:90:axisx(end)]);
