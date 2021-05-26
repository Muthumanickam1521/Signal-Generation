%a Program to Generate a Signal Equal to the Sum of Two Sine Waves with the
%Following Characteristics
%
%3-Seconds duration
%Sample frequency = 2KHz
%Sinusoid wave 1 : frequency 50Hz(low), Amplitude 10, Phase = 0
%Sinusoid wave 2 : frequency 950Hz(high), Amplitude 1, Phase = 0

%Put-Ins
r = 25000;                         %Sampling rate
tp = 1/r;                          %Time period
Wl = 250;                          %Wavelength
t = (0: Wl - 1)*tp;

%Useful Relations
W1 = 10*sin(2*pi*50*t);            %Wave signal 1
W2 = 5*sin(2*pi*950*t);            %Wave signal 2
W = W1 + W2;                       %Resultant wave signal

%Plottings
subplot(3, 1, 1);
plot(t, W1, 'c');
title('50Hz Sinusoidal signal');
xlabel('Time duration [s]');
ylabel('Signal amplitude [m]');

subplot(3, 1, 2);
plot(t, W2, 'r');
title('950Hz Sinusoidal signal');
xlabel('Time duration [s]');
ylabel('Signal amplitude [m]');

subplot(3, 1, 3);
plot(t, W, 'g');
title('Resultant Sinusoidal signal');
xlabel('Time duration [s]');
ylabel('Signal amplitude [m]');