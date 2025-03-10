x = [-3.0, -1.5, 0.0, 1.5, 3.0];
y = [-0.1385, -2.1587, 0.8330, 2.2774, -0.5110];
% 定义拟合函数
f = @(p, x) p(1) * cos(x) + p(2) * sin(x);
% 设置初始参数
p0 = [0, 0];

% 使用lsqcurvefit进行拟合
p = lsqcurvefit(f, p0, x, y);
A = p(1);
B = p(2);

disp(['A = ', num2str(A)]);
disp(['B = ', num2str(B)]);
