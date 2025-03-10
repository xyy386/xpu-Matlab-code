 f = @(x) sin(1./x);
a = 1/7*pi;
b = 1/4*pi;
n = 2^6; % 为了达到小数点后10位的精度，这里取n=64（2^6）
h = (b - a) / n;
integral_approx = f(a) + f(b);
for i = 1:2:n-1
    integral_approx = integral_approx + 4 * f(a + i*h);
end
for i = 2:2:n-2
    integral_approx = integral_approx + 2 * f(a + i*h);
end
integral_approx = integral_approx * h / 3;
fprintf('积分近似值为：%.10f\n', integral_approx);
