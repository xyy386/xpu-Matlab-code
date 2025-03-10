% 定义函数 f(x) 和它的导数 f'(x)
f = @(x) x^2 - sin(x + 0.15) - x; % g(x) - x
df = @(x) 2*x - cos(x + 0.15) - 1; % f'(x)
% 初始猜测
x0 = 0.5; % 可以根据需要调整初值
tolerance = 1e-6; % 容忍度
max_iter = 100; % 最大迭代次数
% 牛顿迭代法
for iter = 1:max_iter
    x1 = x0 - f(x0) / df(x0); % 更新 x
    if abs(x1 - x0) < tolerance % 检查收敛
        fprintf('找到不动点: %.6f\n', x1);
        fprintf('迭代次数: %d\n', iter);
        break;
    end
    x0 = x1; % 更新当前点
end
if iter == max_iter
    fprintf('未收敛，达到最大迭代次数。\n');
end