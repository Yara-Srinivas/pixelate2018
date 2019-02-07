function [node] = closestnode(d,v,N)
%returns the closest node to thecurrent node
%used in djikstra

min=Inf;
node=-1;
for j=1:N
       if (d(j,1)<min & v(j,1)~=1)
             min=d(j,1);
            
             node = j;
             
             
             
       end    
end

end


    