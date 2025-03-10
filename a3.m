% 指定区间
    a = 3; % 区间左端点
    b = 7; % 区间右端点
    
    % 检查区间端点值是否满足二分法的前提条件
    fa = f(a);
    fb = f(b);
    
    if fa * fb > 0
        disp('函数在指定区间内没有零点，不能使用二分法。');
        return;
    end
    
    % 设置误差容忍度
    tol = 1e-6;
    maxIter = 100; % 最大迭代次数
    iter = 0;
    c = (a + b) / 2;
    
    while abs(f(c)) > tol && iter < maxIter
        c = (a + b) / 2;
        fc = f(c);
        
        if fc == 0 || (b - a) / 2 < tol
            break;
        end
        
        if fa * fc < 0
            b = c;
            fb = fc;
        else
            a = c;
            fa = fc;
        end
        
        iter = iter + 1;
    end
    
    if iter == maxIter
        disp('达到最大迭代次数，可能没有找到零点。');
    else
        fprintf('找到的零点大约位于 x = %.6f\n', c);
    end