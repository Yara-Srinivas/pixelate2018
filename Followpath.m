function [ path ] = Followpath(img,part,endpoint,n)    %part = extracted values of the colour of which occupancy is to be created
global botclr1 botclr2 

occ=occupancy(img,part,n);
[p,~]=getbot(img);
[r,c]=retIndex(img,p(1),p(2),n);
occ(r,c)=1;

[r2,c2]=retIndex(img,endpoint(1),endpoint(2),n);
start_node=retNode(img,p(1),p(2),n);
end_node=retNode(img,endpoint(1),endpoint(2),n);
occ(r2,c2)=1;

%create occupancy (image,values of extracted part,n) where n is global variable 
 adjmat=adjacensy(occ);             %create adjacensy  (occupancy) 
try 
 path=djikstra(adjmat,start_node,end_node);
catch
 path=[end_node;start_node];                                                                %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
end

path                            %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
 [m,~]=size(path);
j=m-1;                           %&&&&&&&-1  laga hai
while(j>=1)
    cent=node2centroid(path(j));
   path(j)
    goto(cent);
    path(j);                               %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    j=j-1;
end   
    
end

