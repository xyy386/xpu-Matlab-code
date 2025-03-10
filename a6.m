f = @(x) x^3 - 7;
df = @(x) 3*x^2;

x0 = 2;

tolerance = 1e-8;
max_iterations = 100;

for i = 1:max_iterations
    x1 = x0 - f(x0) / df(x0);
    if abs(x1 - x0) < tolerance
        break;
    end
    x0 = x1;
end

fprintf('7的3分之1次方的值约为 %.10f\n', x1);
7的3分之1次方的值约为 1.9129311828