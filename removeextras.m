function [ im] = removeextras( img)

val=extract(img);
part=threshold(img,val);

area=imcrop(img);
areaval=extract(area);
areapart=threshold(area,areaval);
p=regionprops(areapart,'Area');
a=p(1).Area;
im=bwareaopen(part,a);
imtool(im);

end

