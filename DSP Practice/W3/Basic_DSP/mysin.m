function s = mysin(amp,freq,phase,dur, samp_freq)
% example function to so show how amplitude,frequency and phase
% are changed in a sin function
% Inputs: amp - amplitude of the wave
%         freq - frequency of the wave
%         phase - phase of the wave in degree
%         dur - duration in number of samples
%         samp_freq - sample frequncy


x = 0:dur-1;
phase = phase*pi/180;

s = amp*sin( 2*pi*x*freq/samp_freq + phase);