clear; clc;
format long;

% 定义函数
g1 = @(x) (3*x^3 + 2*x^2 + x - 2)^(1/5);
g2 = @(x) (1/3 * (x^5 - 2*x^2 - x + 2))^(1/3);

% 初始化变量
x1 = 1; % 初值
x2 = 0;
er1 = 1;
er2 = 1;
iter1 = 0;
iter2 = 0;

% 迭代求解
while er1 > 1e-6
    x = g1(x1);
    er1 = abs(x - x1);
    x1 = x;
    iter1 = iter1 + 1;
end

while er2 > 1e-6
    x = g2(x2);
    er2 = abs(x - x2);
    x2 = x;
    iter2 = iter2 + 1;
end

% 输出结果
disp('迭代次数:');
disp(iter1);
disp('第1个不动点:');
disp(x1);
disp('迭代次数:');
disp(iter2);
disp('第2个不动点:');
disp(x2);
