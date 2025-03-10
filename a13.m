% 定义数据点
x = [4.0, 5.0, 6.0, 7.0, 8.0]; % x值
y = [2.00000, 2.23607, 2.44949, 2.64575, 2.82843]; % 对应的y值

% 定义插值多项式
n = length(x);
xi = 4.0:0.1:8.0; % 要插值的点
yi = zeros(size(xi)); % 初始化插值结果

for i = 1:n
    L = ones(size(xi));
    for j = 1:n
        if j ~= i
            L = L .* ((xi - x(j)) ./ (x(i) - x(j)));
        end
    end
    yi = yi + y(i) * L;
end

% 输出插值结果
disp('插值结果 yi：');
disp(yi);