Num = 10;
P = pi;
a = 3;
Nshow = 10;
[f, t] = FourierSeriesCalculator1(Num, P, a, Nshow);
plot(t, f);
xlabel('Time');
ylabel('f(x)');
title('Fourier Series Approximation of x^3');