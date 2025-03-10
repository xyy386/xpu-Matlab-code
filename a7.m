f =inline('4*x.^3 - 2*x - 6');
f1 = inline('12*x.^2-2');
x0 = 1.5;
er = 1;
k = 100;
while er >= 1*10^-10
 x1 = x0 - f(x0)/f1(x0);
 er = abs(x1-x0);
 x0 = x1;k = k+1;
end
x = x0;
y = x.^2;
disp(['The point on the parabola y = x^2 closest to (3,1) is (', num2str(x,10), ', ', num2str(y,10), ')']);