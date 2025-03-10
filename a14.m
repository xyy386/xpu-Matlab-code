xk = [4, 5, 6, 7, 8];
 fk = sqrt(xk);    
n = length(xk); 
D = zeros(n, n); 
D(:, 1) = fk;
 for k = 2:n 
for i = 1:(n-k+1) 
D(i, k) = (D(i+1, k-1) - D(i, k-1)) / (xk(i+k-1) - xk(i));
 end 
end %  
 x = input('请输入待插值的x值: ');  
 N = D(1, 1); 
term = 1; 
for k = 2:n term = term * (x - xk(k-1)); N = N + D(1, k) * term; end  
 result = N; fprintf('牛顿插值结果为: %.6f\n', result); 