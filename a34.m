t0 = 0;
tf = 10;
y0 = 1;
h = 0.1;

t = t0:h:tf;

y = zeros(size(t));
y(1) = y0;

f = @(t, y) y * sin(t);

% 改进欧拉法求解
for i = 1:length(t)-1
    y_pred = y(i) + h * f(t(i), y(i));
    
    y(i+1) = y(i) + h * (f(t(i), y(i)) + f(t(i) + h, y_pred)) / 2;
end

plot(t, y, 'b-', 'LineWidth', 2)
xlabel('t')
ylabel('y(t)')
title('改进欧拉法求解 y''(t) = y sin(t)')
grid on

% 计算真实解
y_true = exp(cos(t0) - cos(t));

hold on
plot(t, y_true, 'r--', 'LineWidth', 2)
legend('改进欧拉法解', '真实解')
hold off