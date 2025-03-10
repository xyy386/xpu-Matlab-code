function RLC_RK4
h = 0.05; 
t_end = 2; 
N = round(t_end / h); 
tspan = 0:h:t_end; 
y0 = [0; 0]; 
y = zeros(2, N+1);
y(:, 1) = y0;
for i = 1:N
k1 = f(tspan(i), y(:, i));
k2 = f(tspan(i) + h/2, y(:, i) + h/2 * k1);
k3 = f(tspan(i) + h/2, y(:, i) + h/2 * k2);
k4 = f(tspan(i) + h, y(:, i) + h * k3);
y(:, i+1) = y(:, i) + h/6 * (k1 + 2*k2 + 2*k3 + k4);
end
plot(tspan, y(1, :));
xlabel('Time (t)');
ylabel('Charge Q(t)');
title('Charge in an RLC Circuit Over Time');
end
function dydt = f(t, y)
x1 = y(1);
x2 = y(2);
dydt = zeros(2, 1);
dydt(1) = x2;
dydt(2) = -125*x1 - 20*x2 + 9*sin(5*t);
end