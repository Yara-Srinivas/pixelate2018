function [ p,a ] = getbot( img )
%img=rgb2lab(img);
global botclr1 botclr2 n blackpart
img1=threshold(img,botclr1);
img2=threshold(img,botclr2);

img2=bwareaopen(img2,2500);    %check thE area to REMOVE the blue circle;

%imshow(img1|img2)
%imshow(img2)
img1=bwlabel(img1);
img2=bwlabel(img2);
ar=regionprops(img1);
ar2=regionprops(img2);
p=(ar(1).Centroid+ar2(1).Centroid)/2;
a=(ar(1).Centroid-ar2(1).Centroid);

currentnode=retNode(img,p(1),p(2),n);          % CHANGED AFTER ROUND 1...................................................................
end

