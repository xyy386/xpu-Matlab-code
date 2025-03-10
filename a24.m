clear
clc
x1=input('输入积分下限：');
x2=input('输入积分上限：');
n=input('输入分割数：');
if x1<x2
   
   if x2<=0.5
      x=x1:(x2-x1)/n:x2;
      y=x;
      I=trapz(x,y);
   elseif x1>=0.5
      x=x1:(x2-x1)/n:x2;
      y=1-x;
      I=trapz(x,y);
   else
      x=x1:(x2-x1)/n:0.5;
      y=x;
      I1=trapz(x,y);
      t=0.5:(x2-x1)/n:x2;
      y=1-t;
      I2=trapz(t,y);
      I=I1+I2;
   end
end
I





