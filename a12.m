A = [1, 3, 5, 7; 2, -1, 3, 5; 0, 0, 2, 5; -2, -6, -3, 1];
B = [1; 2; 3; 4];
[L, U] = lu(A);
y = L \ B;
X = U \ y;
disp(X);
