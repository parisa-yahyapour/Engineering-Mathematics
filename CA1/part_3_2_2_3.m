fs = 1000;
t = -2:1/fs:2;
a = 1;
y = a * ones(size(t));
y1 = fft(y);
f = (-length(y)/2:length(y)/2-1) * fs/length(y);
y_shifted = fftshift(y1);
plot(f, abs(y_shifted));
xlabel('Frequency (Hz)');
ylabel('F(w)');
ylim([-10 500]);
title('Fourier Transform of f(t) = 1');
grid on