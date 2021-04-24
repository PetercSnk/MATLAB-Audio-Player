
clear all;
close all;

infile = 'acoustic.wav';

% read in wav sample
[ x, Fs] = audioread(infile);

%set Parameters for Shelving Filter
% Change these to experiment with filter

G = 4;
fcb = 300;
Q = 3;
type = 'Base_Shelf';

[b a] = shelving(G, fcb, Fs, Q, type);


yb = filter(b,a, x);


% write output wav files
audiowrite('out_bassshelf.wav', yb, Fs);

% plot the original and equalised waveforms

figure(1)
hold on
plot(yb,'b');
plot(x,'r');
title('Bass Shelf Filter Equalised Signal');


fct = 600;
Q = 3;
type = 'Treble_Shelf';


[b a] = shelving(G, fct, Fs, Q, type);


yt = filter(b,a, x);


% write output wav files
audiowrite('out_treblehelf.wav', yt, Fs);


figure(2)
hold on
plot(yb,'g');
plot(x,'r');
title('Treble Shelf Filter Equalised Signal');