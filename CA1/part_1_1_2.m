t = -10:1:10;
y = sign(1./(t.^2));
plot(t, y);
xlabel('t');
ylabel('sgn(t)');
title('Plot of the sign function');
grid on;
