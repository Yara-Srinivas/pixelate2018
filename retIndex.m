function [c,r] = retIndex( img,x,y,n )

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
    r=i-1;
    c=j-1;
end

