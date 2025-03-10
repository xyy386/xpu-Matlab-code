% 定义函数 f(x) 和其导数
syms x;
f = x^4 - 3*x^3 + 2;
f1= diff(f, x);       % f'(x)
f2 = diff(f1, x); % f''(x)

% 转换为匿名函数
f1_fun = matlabFunction(f1); % f'(x)
f2_fun = matlabFunction(f2); % f''(x)

% 初始猜测
x0 = 2; % 你可以更改初始值
tol = 1e-6; % 收敛条件
max_iter = 100; % 最大迭代次数

% 牛顿法迭代
for iter = 1:max_iter
    % 计算 f'(x0) 和 f''(x0)
    f1_val = f1_fun(x0);
    f2_val = f2_fun(x0);
    
    % 更新公式 x = x - f'(x) / f''(x)
    x1 = x0 - f1_val / f2_val;
    
    % 检查收敛
    if abs(x1 - x0) < tol
        fprintf('牛顿法收敛到解 x = %.6f, 迭代次数 = %d\n', x1, iter);
        break;
    end
    
    % 更新当前值
    x0 = x1;
end

% 如果未收敛
if iter == max_iter
    fprintf('牛顿法未收敛到指定精度\n');
end 