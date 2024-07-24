fs = 1000;
t = -2:1/fs:2;
y = double(t==0);
y1 = fft(y);
f = (-length(y)/2:length(y)/2-1) * fs/length(y);
y_shifted = fftshift(y1);
plot(f, abs(y_shifted));
xlabel('Frequency (Hz)');
ylabel('F(w)');
ylim([-5 5])
title('Fourier Transform of Dirac Delta');
grid on