function magphasresponse(h) 
FS=40000;
FoSi='Fontsize';
fosi=10;
if nargin==0
%  h=[-0.06, 0, 0.3, 0.5, 0.3, 0, -0.06];
  h=[-.1 .15 .3 .15 -.1];
end

hmax=max(h);
hmin=min(h);
dh=hmax-hmin;
hmax=hmax+.1*dh;
hmin=hmin-.1*dh;

N=length(h);
%n=0:N-1;
% denominator polynomial:
a=zeros(1,N);
a(1)=1;

figure(1)
subplot(221)
stem(0:N-1,h)
axis([-1 N, hmin hmax])
title('(a) Impulse Response h(n)',FoSi,fosi);
xlabel('n \rightarrow',FoSi,fosi)
grid on;

subplot(223)
zplane(h,a)
title('(c) Pole/Zero plot',FoSi,fosi);
xlabel('Re(z)',FoSi,fosi)
ylabel('Im(z)',FoSi,fosi)

subplot(222)
[H,F] =freqz(h,a,1024,'whole',FS);
plot(F/1000,abs(H))
xlabel('f in kHz  \rightarrow',FoSi,fosi);
ylabel('|H(f)| \rightarrow',FoSi,fosi);
title('(b) Magnitude Response |H(f)|',FoSi,fosi);
grid on;

subplot(224)
plot(F/1000,unwrap(angle(H))/pi)
xlabel('f  in kHz \rightarrow',FoSi,fosi)
ylabel('\angle H(f)/\pi \rightarrow',FoSi,fosi)
title('(d) Phase Response \angle H(f)',FoSi,fosi);
grid on;

print -deps2 magphaseresponse

