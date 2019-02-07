function [ arr ] = nbr(node,adjmat,v,N)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

j=1;
arr=zeros(4,1);
for i=1:N
    if (adjmat(node,i)==1&&(v(i,1)~=1))
        arr(j,1)=i;
        j=j+1;
    end
    
end
end

