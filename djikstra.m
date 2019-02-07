
function [ path ] = djikstra(adjmat,s,e)    %uses djikstra to return path 


[N,~]=size(adjmat);    %adjmat is the adjacency of the occupancy of the image       %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
d=Inf(N,1);           %distance matrix is initialized by INF
v=zeros(N,1);         %visited matrix
p=zeros(N,1);         %parent of next node is stored 
d(s,1)=0;             %distance of starting node is set to 0
for i=1:N
    p(i,1)=-1;
end
flag=1;
while (flag==1)    
    node=closestnode(d,v,N);                %  $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
    if node==e
        break;
    end  
    
    v(node,1)=1;
    
     for i=1:N
        if(adjmat(node,i)==1&&v(i)~=1)
            if(d(i,1)>d(node,1)+1)
                d(i,1)=d(node,1)+1;
                p(i,1)=node;
            end
        end
    end   
 end


j=1;
path=[];
path(j,1)=e;
while 1
    j=j+1;
    path(j,1)=p(path(j-1,1))
    if path(j,1)==s
        break;
    end
end
end


     
            
       



