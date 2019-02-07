function [ adjmat] = adjacensy( ar)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
[n,~]=size(ar);
N=n*n;
adjmat=zeros(N,N);
rshape=reshape(ar,[N,1]);
for i=1:N
    l=i-n;
    r=i+n;
    t=i-1;
    b=i+1;
    
    if(rshape(i,1)~=0)
        if(i==1)
                if(rshape(2,1)==1)
                    adjmat(1,2)=1;
                   %adjmat(2,1)=1;
                end
                if(rshape(n+1,1)==1)
                    adjmat(1,n+1)=1;
                     %adjmat(n+1,1)=1;
                end
         end    
             if(i==n)
                 if(rshape(i-1,1)==1)
                     adjmat(i,i-1)=1;
                      %adjmat(i-1,i)=1;
                 end
                 if(rshape(i+n,1)==1)
                     adjmat(i,i+n)=1;
                     % adjmat(i+1,i)=1;
                 end
             end
         if(i==N-n+1)                      %for corner
                 if(rshape(i-n,1)==1)
                     adjmat(i,i-n)=1;
                      %adjmat(i-n,i)=1;
                 end
                 if(rshape(i+1,1)==1)
                     adjmat(i,i+1)=1;
                     % adjmat(i+1,i)=1;
                 end
         end
        if(i==N)                        %for corners
               if(rshape(i-n,1)==1)
                   adjmat(i,i-n)=1;
                   % adjmat(i-n,i)=1;
               end
               if(rshape(i-1,1)==1)
                   adjmat(i,i-1)=1;
                    %adjmat(i-1,i)=1;
               end
        end
        if(rem(i,n)==0&&i~=n&&i~=N)  %for edges
            if(rshape(i-1,1)==1)
                adjmat(i,i-1)=1;
                % adjmat(i-1,i)=1;
            end
            if(rshape(i+n,1)==1)
                adjmat(i,i+n)=1;
                 %adjmat(i+n,i)=1;
            end   
            if(rshape(i-n,1)==1)
                adjmat(i,i-n)=1;
                 %adjmat(i-n,i)=1;
            end
        end
        if(i>1&&i<n)
            if(rshape(i+n,1)==1)
                adjmat(i,i+n)=1;
                 %adjmat(i+n,i)=1;
            end
            if(rshape(i+1,1)==1)
                adjmat(i,i+1)=1;
                 %adjmat(i+1,i)=1;
            end   
            if(rshape(i-1,1)==1)
                adjmat(i,i-1)=1;
                 %adjmat(i-1,i)=1;
            end
        end
        if(i~=1&&i~=N-n+1&&rem(i,n)==1)
            if(rshape(i+1,1)==1)
                adjmat(i,i+1)=1;
                % adjmat(i+1,i)=1;
            end
            if(rshape(i+n,1)==1)
                adjmat(i,i+n)=1;
                % adjmat(i+n,i)=1;
            end   
            if(rshape(i-n,1)==1)
                adjmat(i,i-n)=1;
                % adjmat(i-n,i)=1;
            end
        end
        if(i>N-n+1&&i<N)
            if(rshape(i-1,1)==1)
                adjmat(i,i-1)=1;
                % adjmat(i-1,i)=1;
            end
            if(rshape(i-n,1)==1)
                adjmat(i,i-n)=1;
                % adjmat(i-n,i)=1;
            end   
            if(rshape(i+1,1)==1)
                adjmat(i,i+1)=1;
                % adjmat(i+1,i)=1;
            end
        end
        if(l>0&&rem(i,n)~=0&&rem(t,n)>=1&&i+n<N)
            if(rshape(l,1)==1)
            adjmat(i,l)=1;
             %adjmat(l,i)=1;
            end
            if(rshape(r,1)==1)
            adjmat(i,r)=1;
           % adjmat(r,i)=1;
            end
            if(rshape(t,1)==1)
            adjmat(i,t)=1;
           % adjmat(t,i)=1;
            end
            if(rshape(b,1)==1)
            adjmat(i,b)=1;
          %  adjmat(b,i)=1;
            end
        end
    end
    
            
                  
end

