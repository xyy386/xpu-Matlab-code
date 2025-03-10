f = @(x) exp(x) - 4 * x^2;
f1= @(x) exp(x) - 8 * x;
f2= @(x) exp(x) - 8; 
x0=2;
tol=1e-6;
max=100;
for i =1:max
x1=x0-f1(x0)/f2(x0);
if abs(x1-x0)<tol
break;
end
x0=x1;
end
disp(['极值点近似值为：',num2str(x1)]);
