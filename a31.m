function LagrangeInterpolation()
    n = 5; 
    x = linspace(0, pi, n); 
    y = sin(x); 
    x_interp = linspace(0, pi, 100); 
    y_interp = zeros(size(x_interp));
    for i = 1:length(x_interp)
        y_interp(i) = lagrange(x, y, x_interp(i));
    end
    figure;
    hold on;
    plot(x, y, 'ro'); 
    plot(x_interp, y_interp, 'b-');
    plot(x_interp, sin(x_interp), 'g--'); 
    hold off;
    xlabel('x');
    ylabel('y');
    legend('插值点','插值多项式','原函数 sin(x)');
    title('拉格朗日插值法近似 sin(x)');
end
function L = lagrange(x, y, xi)
    n = length(x);
    L = 0;
    for i = 1:n
        Li = 1;
        for j = 1:n
            if j ~= i
                Li = Li * (xi - x(j)) / (x(i) - x(j));
            end
        end
        L = L + y(i) * Li;
    end
end