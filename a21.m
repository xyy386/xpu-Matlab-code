%第21题
function[t,y]=solve_ode()
ode=@(t,y)-15*y;
y0=1;
tf=[0 1];
[t,y]=ode45(ode,tf,y0);
plot(t,y);
