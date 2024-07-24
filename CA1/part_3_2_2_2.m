fs = 1000;
t = -2:1/fs:2;
a = 1;
y = a * ones(size(t));
y1 = fft(y);
f = (-length(y)/2:length(y)/2-1) * fs/length(y);
plot(f, y1)
xlabel('Frequency (Hz)');
ylabel('F(w)');
xlim([-1000 1000]);
ylim([-10 10]);
title('Fourier Transform of f(t) = 1');
grid on