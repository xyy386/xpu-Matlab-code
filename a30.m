% 定义函数
f = @(x) log(x);

% 定义 x 值和步长
x = 2;
h = 0.0001;

% 计算一阶导数
f_prime = (f(x + h) - f(x - h)) / (2 * h);

% 计算二阶导数 
f_double_prime = (f(x + h) - 2 * f(x) + f(x - h)) / (h^2);

% 显示结果
fprintf('f(x) = ln(x) 在 x = 2 处的一阶导数: %.6f\n', f_prime);
fprintf('f(x) = ln(x) 在 x = 2 处的二阶导数: %.6f\n', f_double_prime);