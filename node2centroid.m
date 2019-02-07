function [ cent ] = node2centroid( node)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

global n img
[a, b ,~] = size(img);
i=ceil(node/n);
j=rem(node,n);
if j==0
    j=5;
end
c1=a*(i-.5)/n;
c2=b*(j-.5)/n;
cent=floor([c1,c2]);
end

