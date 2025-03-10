T = 2;          
M = 40;       
h = T / M;     
t = 0:h:T;    
% 初始化变量
x1 = zeros(1, M+1);  % x(t)
x2 = zeros(1, M+1);  % x'(t)
% 初始条件
x1(1) = 0;      % x(0) = 0
x2(1) = 0;      % x'(0) = 0
% 欧拉方法迭代
for n = 1:M
    x1(n+1) = x1(n) + h * x2(n);  
    x2(n+1) = x2(n) + h * (8 * sin(5 * t(n)) - 25 * x1(n));  
end


% 绘制结果
figure;
plot(t, x1, 'b-', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Displacement x(t)');
title('Displacement of the Spring-Mass System');
grid on;
