function x=mgauss(A,b)
n=length(b);
for k=1:(n-1)
    m=A(k+1:n,k)/A(k,k);
    A(k+1:n,k+1:n)= A(k+1:n,k+1:n)-m*A(k,k+1:n);
    b(k+1:n)=b(k+1:n)-m*b(k);
    A(k+1:n,k)=zeros(n-k,1);
end
x=zeros(n,1);
x(n)=b(n)/A(n,n);
for k=n-1:-1:1
    sum_term=0;
   for j=k+1:n
       sum_term=sum_term+A(k,j)*x(j);
   end
    x(k)=(b(k)-sum_term)/A(k, k);
end
A=[1 2 1 4;
    2 0 4 3; 
    4 2 2 1;
    -3 1 3 2];
b=[13;28;20;6];
x=mgauss(A,b);
disp(x);