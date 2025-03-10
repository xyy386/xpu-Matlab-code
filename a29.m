
data = rand(1, 1000);

mean_value = mean(data);

std_dev = std(data);

figure;
histogram(data, 'Normalization', 'probability');
title('均匀分布随机数的直方图');
xlabel('数值');
ylabel('概率密度');

disp(['平均值: ', num2str(mean_value)]);
disp(['标准差: ', num2str(std_dev)]);