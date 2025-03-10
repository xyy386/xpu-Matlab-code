f = @(x) sin(1./x);
a = 1/(7*pi);
b = 1/(4*pi);
n = 5000;
h = (b - a)/n;
sum1 = 0;
for i = 1:n - 1
    x = a + i*h;
    sum1 = sum1 + f(x);
end
integral = h/2 * (f(a) + 2*sum1 + f(b));
fprintf('The approximate value of the integral is: %.10f\n', integral);