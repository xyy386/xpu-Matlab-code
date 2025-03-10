% 定义要求平方根的数
x = 8;
% 初始值
p0 = 3;
% 设置迭代精度
tol = 1e-6;
% 迭代次数计数
k = 0;
while k<=100
    % 牛顿迭代公式
    p = 0.5 * (p0 + x / p0);
    % 判断是否满足精度要求
    if abs(p - p0) < tol
        break;
    end
    p0 = p;
    k = k + 1;
end
disp(['经过',num2str(k),'次迭代后，sqrt(8)的近似值为：',num2str(p)]);

