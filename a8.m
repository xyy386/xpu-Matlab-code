function root = steffensenMethod(f, p0, tol)
    % f 是要求根的函数，p0 是初始近似值，tol 是精度要求
    p1 = p0;
    p2 = p0;
    diff = 1;
    while abs(diff) > tol
        f0 = feval(f, p0);
        if p0 == p1
            % 处理首次迭代
            p_minus1 = p0 - 0.0001;
            f_minus1 = feval(f, p_minus1);
            df = (f0 - f_minus1) / (p0 - p_minus1);
        else
            df = (feval(f, p0) - feval(f, p1)) / (p0 - p1);
        end
        p2 = p0 - f0 / df;
        diff = p2 - p0;
        p1 = p0;
        p0 = p2;
    end
    root = p0;
end

% 定义要求根的函数 f(x) = sin(x^3)
f = @(x) sin(x^3);

% 初始近似值
p0 = 0.5;

% 精度要求
tol = 1e-10;

root = steffensenMethod(f, p0, tol);
disp(root);