A = [1 2 1 4;2 0 4 3;4 2 2 1; -3 1 3 2];
b = [13; 28; 20; 6];
x = zeros(4, 1);
er=1;k=0;
while er>0.0005
    er=0;k=k+1;
    for i=1:4
        s=0;t=x(i);x(i)=0;
        for j=1:4
            s=s+A(i,j)*x(j);
        end
        x(i)=(b(i)-s)/A(i,i);
        er=max(abs(x(i)-t),er);
    end
    x'
end