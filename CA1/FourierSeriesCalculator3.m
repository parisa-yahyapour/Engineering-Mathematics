function [f, t] = FourierSeriesCalculator3(Num, P, a, Nshow)
t = pi;
a_0 = (1/(P)) * integral(@(x) x.^a, -P, P);
disp('a0')
disp(a_0/2)
a_n = zeros(Num, 1);
b_n = zeros(Num, 1);
for n = 1:Num
    a_n(n) = (1/P) * integral(@(x) x.^a .* cos((pi*n*x)/P), -P, P);
    b_n(n) = (1/P) * integral(@(x) x.^a .* sin((pi*n*x)/P), -P, P);
end
f = (a_0/2);
for n = 1:Nshow
    f = f + a_n(n)*cos(pi*n*t/P) + b_n(n)*sin(pi*n*t/P);
end
disp('f')
disp(f)

end
