sampleFreq = 22025;
nsec = 10;
freq220 = 220;
freq440 = 440;
freq880 = 880;
duration = nsec * sampleFreq;
n = 0:duration;

y220 = sin((2*pi*n*freq220)/sampleFreq);
y440 = sin((2*pi*n*freq440)/sampleFreq);
y880 = sin((2*pi*n*freq880)/sampleFreq);

subplot(3,2,1);
plot(y220(1:500));
title('sin 220HZ')
subplot(3,2,3);
plot(y440(1:500));
title('sin 440HZ')
subplot(3,2,5);
plot(y880(1:500));
title('sin 880HZ')

y220 = cos((2*pi*n*freq220)/sampleFreq);
y440 = cos((2*pi*n*freq440)/sampleFreq);
y880 = cos((2*pi*n*freq880)/sampleFreq);

subplot(3,2,2);
plot(y220(1:500));
title('cos 220HZ')
subplot(3,2,4);
plot(y440(1:500));
title('cos 440HZ')
subplot(3,2,6);
plot(y880(1:500));
title('cos 880HZ')




