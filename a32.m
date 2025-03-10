%法一
x = [1, 2, 3, 4];
y = [2.2, 2.8, 3.6, 4.5];
n = length(x);
sum_x = sum(x);
sum_y = sum(y);
sum_xy = sum(x.*y);
sum_x2 = sum(x.^2);
a = (n*sum_xy - sum_x*sum_y)/(n*sum_x2 - sum_x^2)
b = (sum_y - a*sum_x)/n
%法二
x = [1, 2, 3, 4];
y = [2.2, 2.8, 3.6, 4.5];
p=polyfit(x,y,1);
a=p(1)
b=p(2)