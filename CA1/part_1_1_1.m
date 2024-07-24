t = linspace(-50, 50, 1000);
sin_value = sin((pi/8)*t);
cot_value = cot((pi/4)*t);
y = cot_value.*sin_value;
plot(t, y);
xlabel('t');
ylabel('value');
title('cot((pi/4)t)sin((pi/8)t)');
grid on;
