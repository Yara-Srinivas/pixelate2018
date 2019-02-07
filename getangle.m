function [ a ] = getangle( pt1,pt2 )
%  gives angle  between the line joining two entered points and the
%  horizontal azis
c1=complex(pt1(1),pt1(2));
c2=complex(pt2(1),pt2(2));
a=angle(c1/c2);
a=a*180/3.14;
end

