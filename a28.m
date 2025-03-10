syms x 
f=x.^3+2*x.^2-1;
df_dx=diff(f,x);
disp(['导数是: ',char(df_dx)]);
x_vaule=1:10;
y_vaule=x_vaule.^2+2*x_vaule+1;
disp(y_vaule)

