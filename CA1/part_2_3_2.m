Num = 50;
P = pi;
a = 2;
Nshow = 10;
[f, t] = FourierSeriesCalculator1(Num, P, a, Nshow);
plot(t, f);
xlabel('Time');
ylabel('f(x)');
title('Fourier Series Approximation of x^2 (Num = 50_)');