f=@(x)sin(x^2);
x=1;
h=1e-5;
first_derivative=(f(x+h)-f(x-h))/(2*h);
second_derivative=(f(x+h)-2*f(x)+f(x-h))/(h^2);
fprintf('f''(1)=%.5f\n',first_derivative);
fprintf('f''''(1)=%.5f\n',second_derivative);