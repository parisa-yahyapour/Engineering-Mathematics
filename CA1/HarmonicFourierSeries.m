function [f, t] = HarmonicFourierSeries(x, fx, Nshow, P)
t = linspace(-2*P, 2*P, 1000);
num_points = numel(x);
a0 = 2 * mean(fx);
disp('a0')
disp(a0)
an = zeros(Nshow, 1);
bn = zeros(Nshow, 1);

for n = 1:Nshow
    sum_cos = 0;
    sum_sin = 0;
    for i = 1:num_points
    sum_cos = sum_cos + fx(i) * cos(n * x(i));
    end
    mean_cos = sum_cos / num_points;
    an(n) = 2 * mean_cos;

    for i = 1:num_points
    sum_sin = sum_sin + fx(i) * sin(n * x(i));
    end
    mean_sin = sum_sin / num_points;
    bn(n) = 2 * mean_sin;
end
disp('an')
disp(an)
disp('bn')
disp(bn)
f = (a0/2);
for n = 1:Nshow
    f = f + an(n)*cos(n*t) + bn(n)*sin(n*t);
end
