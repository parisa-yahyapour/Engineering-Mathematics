fs = 1000;
t = -2:1/fs:2;
y = cos(pi*t);

y1 = fft(y);
f = (-length(y)/2:length(y)/2-1) * fs/length(y);

y_shifted = fftshift(y1);

plot(f, abs(y_shifted));
xlabel('Frequency (Hz)');
ylabel('F(w)');
ylim([-5 5]);
title('Fourier Transform of f(t) = cos(pi*t)');
grid on