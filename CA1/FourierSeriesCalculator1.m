function [f, t] = FourierSeriesCalculator1(Num, P, a, Nshow)
t = linspace(-2*P, 2*P, 1000);
a0 = (1/(P)) * integral(@(x) x.^a, -P, P);
disp('a0')
disp(a0)
an = zeros(Num, 1);
bn = zeros(Num, 1);
for n = 1:Num
    an(n) = (1/P) * integral(@(x) x.^a .* cos((pi*n*x)/P), -P, P);
    bn(n) = (1/P) * integral(@(x) x.^a .* sin((pi*n*x)/P), -P, P);
end
disp('an')
disp(an)
disp('bn')
disp(bn)
f = (a0/2);
for n = 1:Nshow
    f = f + an(n)*cos(pi*n*t/P) + bn(n)*sin(pi*n*t/P);
end
end
