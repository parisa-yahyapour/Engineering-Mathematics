fs = 1000;
t = -2:1/fs:2;
y = cos(pi*t);

plot(t,y)
xlim([-4 4])
ylim([-1.5 1.5])
xlabel('t')
ylabel('cos(pi*t)')
title('Plot of cos(pi*t)')
grid on