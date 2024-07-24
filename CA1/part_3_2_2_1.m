fs = 1000;
t = -2:1/fs:2;
a = 1;
y = a * ones(size(t));
plot(t,y)
xlim([-4 4])
ylim([-0.5 1.5])
xlabel('t')
ylabel('y')
title('Plot of y = 1')
grid on
