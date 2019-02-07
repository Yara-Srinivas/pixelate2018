function [val] = extract( img )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
img2=imcrop(img);
img2=rgb2lab(img2);
val=zeros(3,2);
val(1,1)=max(max(img2(:,:,1)));
val(1,2)=min(min(img2(:,:,1)));
val(2,1)=max(max(img2(:,:,2)));
val(2,2)=min(min(img2(:,:,2)));
val(3,1)=max(max(img2(:,:,3)));
val(3,2)=min(min(img2(:,:,3)));


end

