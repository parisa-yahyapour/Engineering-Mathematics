fs = 1000;
t = -2:1/fs:2;
y = cos(pi*t);

y1 = fft(y);
f = (-length(y)/2:length(y)/2-1) * fs/length(y);

plot(f, abs(y1))
xlim([-4 4])
xlabel('Frequency (Hz)');
ylabel('F(w)');
title('Fourier Transform f(t) = cos(pi*t)');
grid on