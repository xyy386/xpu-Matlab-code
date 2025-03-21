% 生成网格数据
[x,y] = meshgrid(-2:0.1:2,-2:0.1:2);

% 定义函数 Z
z = x.^2 + y.^2;

% 绘制 3D 曲面图
figure;
surf(x,y,z);

% 定义匿名函数
f = @(x,y) x.^2 + y.^2;

% 计算 f(3, 4)
disp(f(3,4));