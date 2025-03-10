A=[1 2 1 4;4 2 2 1;2 0 4 3;-3 1 3 2];
b=[13;20;28;6];x=[0;0;0;0];
er=1;k=0;
while er>0.0005 
    er=0;k=k+1;
    for i=1:4
        s=0;t=x(i);x(i)=0;
        for j=1:4
            s=s+A(i,j)*x(j);
        end
        x(i)=t;
        y(i)=(b(i)-s)/A(i,i);
        er=max(abs(x(i)-y(i)),er);
    end
    x=y;
    x'
end