
%[y, fs] = audioread('source\audio\finesse.mp3');

file_read = dsp.AudioFileReader('source\audio\finesse.mp3');
device_write = audioDeviceWriter('SampleRate', file_read.SampleRate);
reverb = reverberator('SampleRate', file_read.SampleRate, 'PreDelay', 0.9, 'WetDryMix', 0.4);
scope = dsp.TimeScope( ...                        
                'SampleRate',file_read.SampleRate, ...       
                'TimeSpan',2, ...                             
                'BufferLength',file_read.SampleRate*2*2, ... 
                'YLimits',[-1,1], ...                         
                'TimeSpanOverrunAction',"Scroll");

while ~isDone(file_read)
    signal = file_read();
    %signal = reverb(signal);
    device_write(signal);
    figure(1)
    scope(signal)
    
    
end
release(file_read)
release(device_write)