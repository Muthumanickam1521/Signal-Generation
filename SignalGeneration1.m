
%-----------------------------------------------------------------------------------------
%a Program to Generate a Sinusoidal Signal with a Frequency of 50Hz of 100 Samples
%and a Random Noise Signal of 100 Samples
%-----------------------------------------------------------------------------------------

%Put-Ins
r = 1000;
tp = 1/r;                                                                                                              
Wl = 100;
t = (0: Wl-1)*tp;

%Useful Relations
S = sin(2*pi*50*t);
N = (1/20)*randn(size(t));
X = S + N;

%Plottings
subplot(3, 1, 1);
plot(t, S, 'g');
xlabel('Time [s]');
ylabel('Signal amplitude [m]');
title('50Hz Sinusoidal Signal');

subplot(3, 1, 2);
plot(t, N, 'r');
xlabel('Time [s]');
ylabel('Noise amplitude [m]');
title('Random Frequency Signal');

subplot(3, 1, 3);
plot(t, X, 'k');
xlabel('Time [s]');
ylabel('Noisy signal amplitude [m]');
title('Noisy Signal');

Spower = var(S);
SpowerdB = 10*log(Spower);

Npower = var(N);
NpowerdB = 10*log(Npower);

Xpower = var(X);
XpowerdB = 10*log(Xpower);
