function [ d ] = Distance(pt1,pt2)

x1=pt1(1);
y1=pt1(2);
x2=pt2(1);
y2=pt2(2);
e=x1-x2;
f=y1-y2;
d=sqrt(e*e+f*f);
end

