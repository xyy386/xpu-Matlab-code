x=[-2 -1 0 1 2];
y=[1 2 3 3 4];
p=polyfit(x,y,1);
A=p(1);
B=p(2);
fprintf('拟合曲线方程为：y=%.2fx+%.2f\n',A,B);

y1=polyval(p,x);
f=[x;y1];
disp(f)