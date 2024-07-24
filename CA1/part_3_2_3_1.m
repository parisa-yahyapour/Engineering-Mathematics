fs = 1000;
t = -2:1/fs:2;
y = double(t==0);
plot(t,y)
xlim([-2 2])
ylim([-1.5 1.5])
xlabel('t')
ylabel('y')
title('Plot of y = 1')
grid on
