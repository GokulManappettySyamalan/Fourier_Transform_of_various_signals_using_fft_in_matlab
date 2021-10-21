%Sine wave
Fm=10;
Fs=50*Fm;
T=1/Fs;
t=0:T:2-t; %10 seconds
nfft=256;
Fr=(0:nfft/2-1)*Fs/nfft;

g_1=sin(2*pi*Fm*t);
subplot(5,3,1);
plot(t,g_1);
xlim([0 2.5]);
ylim([-1.2 1.2]);
xlabel('Time');
ylabel('Amplitude');
title('Sine wave of Frequency 10Hz');

subplot(5,3,2)
fg_1=fft(g_1,nfft);
fg_1=fg_1(1:nfft/2);
mfg_1=abs(fg_1);

plot(Fr,mfg_1);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave');

subplot(5,3,3)
stem(Fr,mfg_1);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Sine Wave');

g_2=cos(2*pi*Fm*t);
subplot(5,3,4);
plot(t,g_2);
xlim([0 2.5]);
ylim([-1.2 1.2]);
xlabel('Time');
ylabel('Amplitude');
title('Cosine wave of Frequency 10Hz');

subplot(5,3,5)
fg_2=fft(g_2,nfft);
fg_2=fg_2(1:nfft/2);
mfg_2=abs(fg_2);

plot(Fr,mfg_2);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Co-sine Wave');

subplot(5,3,6)
stem(Fr,mfg_2);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Co-sine Wave');


ncycle=10;
t_s=0:1/Fs:ncycle*1/Fm-1/Fs;
g_3=sign(sin(2*pi*Fm*t_s));
subplot(5,3,7);
plot(t_s,g_3);
xlim([0 2.5]);
ylim([-1.2 1.2]);
xlabel('Time');
ylabel('Amplitude');
title('Square wave of Frequency 10Hz');


subplot(5,3,8);
fg_3=fft(g_3,nfft);
fg_3=fg_3(1:nfft/2);
mfg_3=abs(fg_3);

plot(Fr,mfg_3);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Square Wave');

subplot(5,3,9)
stem(Fr,mfg_3);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Square Wave');



%fs=80; %Sampling Frequency
%t_g=-0.5:1/Fs:0.5;
t_g=-2:1/Fs:2;
sigma_1=0.08; %standard deviation
g_4=1/(sqrt(2*pi)*sigma_1)*(exp(-t_g.^2/(2*sigma_1^2)));
subplot(5,3,10);
plot(t_g,g_4);
xlim([-1.5 1.5]);
ylim([0 5]);
xlabel('Time');
ylabel('Amplitude');
title(['Gaussian Pulse of Standard Variation=', num2str(sigma_1),'s']);



subplot(5,3,11)
fg_4=fft(g_4,nfft);
fg_4=fg_4(1:nfft/2);
mfg_4=abs(fg_4);

plot(Fr,mfg_4);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Gaussian Pulse');

subplot(5,3,12)
stem(Fr,mfg_4);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Gaussian Pulse');






subplot(5,3,13)
%fs=500; %sampling frequency
%t=0:1/fs:1; %time base - upto 1 second
f0=1;% starting frequency of the chirp
f1=Fs/20; %frequency of the chirp at t1=1 second
g_5 =chirp(t,f0,1,f1);
plot(t,g_5);
title('Chirp Signal');
xlim([0 1.2]);
ylim([-1.2 1.2]);
xlabel('Time');
ylabel('Amplitude');



subplot(5,3,14)
fg_5=fft(g_1,nfft);
fg_5=fg_5(1:nfft/2);
mfg_5=abs(fg_5);

plot(Fr,mfg_5);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Chirp Wave');

subplot(5,3,15)
stem(Fr,mfg_5);
ylim([0 200]);
xlabel('Frequency');
ylabel('Magnitude');
title('	Fourier Transform of Chirp Wave');

