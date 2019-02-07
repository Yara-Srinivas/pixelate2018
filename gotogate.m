function [ cent ] = gotogate()

global img black
blackpart=threshold(img,black);
bprops=regionprops(blackpart,'Area','Centroid');
[m,~]=size(bprops);

for i=1:m
    for j=i:m
        if(bprops(i).Area<bprops(j).Area)
            temp=bprops(i);
            bprops(i)=bprops(j);
            bprops(j)=temp;
        end
    end
end

cent=bprops(2).Centroid;
end


