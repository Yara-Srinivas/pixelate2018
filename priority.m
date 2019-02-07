function [ primat ] = priority( img,yellow,black,green)
station=retand(img,yellow,green);
station=bwareaopen(station,700);%$$$$$$$$$$$$$$$$$$$$$$$$$$$44
imtool(station);       %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$44
priorityzone=retand(img,yellow,black);
priorityzone=bwareaopen(priorityzone,500);  %$$$$$$$$$$$$$$$$$$$$$$$$$
imtool(priorityzone);                           %$$$$$$$$$$$$$$$$$$$$$$$$$$$$

stationlabel=bwlabel(station);
priorityzonelabel=bwlabel(priorityzone);

stationprops=regionprops(stationlabel,'BoundingBox','Centroid');
priorityzoneprops=regionprops(priorityzonelabel,'BoundingBox','Centroid');
[m,~]=size(stationprops);
min=0;
for i=1:m
    for j=i:m
        if(priorityzoneprops(i).Centroid(2)>=priorityzoneprops(j).Centroid(2))
            temp=priorityzoneprops(i);
            priorityzoneprops(i)=priorityzoneprops(j);
            priorityzoneprops(j)=temp; 
        end
    end
end    
    
   

arr=zeros(m,m);
for i=1:m
    bb1=priorityzoneprops(i).BoundingBox;
    shape1=imcrop(priorityzonelabel,bb1);
    for j=1:m
        shape2=imcrop(stationlabel,stationprops(j).BoundingBox);
        shape2=imresize(shape2,size(shape1));
        temp=xor(shape1,shape2);
        [arr(i,j),~]=size(find(temp==1));
        
        
    end    
end

primat=zeros(3,m);

for i=1:m
    min=arr(i,1);
    p=1;
    for j=1:m
        if(arr(i,j)<min)
            min=arr(i,j);
            p=j;
        end
    end
    primat(1,i)=p;
    primat(2,i)=stationprops(p).Centroid(1);
    primat(3,i)=stationprops(p).Centroid(2);
end

end
