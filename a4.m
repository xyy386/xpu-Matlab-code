f = @(x) 1 ./ (x - 2);
    a = 1;
    b = 7;
    tol = 1e-6;
    max_iter = 100;
    iter = 0;
    while (b - a > tol) && (iter < max_iter)
        c = (a + b) / 2;
        if abs(c - 2) < tol
            break;
        elseif f(c) == 0             break;
        elseif f(a) * f(c) < 0 
            b = c; 
        else             a = c;         end
        
        iter = iter + 1;
    end
    
    if abs(b - a) <= tol || iter == max_iter
        fprintf('经过 %d 次迭代后，找到的零点近似值为 x = %.6f\n', iter, (a + b) / 2);
        fprintf('注意：由于函数在x=2处不连续，该结果可能不是精确的零点。\n');
    else
        fprintf('未能在给定的迭代次数内找到满足精度要求的零点。\n');
    end