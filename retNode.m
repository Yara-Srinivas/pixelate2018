function [ node ] = retNode( img,x,y,n )
%returns the node in which x and y are located in 
    flag=1;
    flag2=1;
    i=1;
    j=1;
    [Y,X,~]=size(img);
    a=X/n;
    a=ceil(a);
    b=Y/n;
    b=ceil(b);
    while (flag==1)
       if x<(i*a)
       flag=0;
       end
       i=i+1;
    end
      
   
     while(flag2==1)
         if y<(j*b)
           flag2=0;
         end
       j=j+1;
     end  
    i=i-1;
    j=j-1;
    node=(i-1)*n+j;
end

