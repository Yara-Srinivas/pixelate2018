function[s,e]=nodes(img,n)

start=extract(img);
brake=extract(img);
img1=prnt(img,start);
img2=bwlabel(img1);
a=regionprops(img2);
r=a.Centroid;


img3=prnt(img,brake);
img4=bwlabel(img3);
b=regionprops(img4);
g=b.Centroid;
[Y,X]=size(img1);
x1=r(1);
y1=r(2);
x2=g(1);
y2=g(2);

s=retNode(img1,x1,y1,n);
e=retNode(img1,x2,y2,n);
end