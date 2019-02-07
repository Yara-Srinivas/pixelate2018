function [ matrx ] = occupancy( img,partextract,n ) %function to divide the image into n
    img=rgb2lab(img);
    q=size(img);
    x=q(1);
    y=q(2);
    matrx=zeros(n,n);
   
    for i=1:n 
        r=((2*i-1)/(2*n))*x ;
        r=ceil(r);
        for j=1:n
            c=((2*j-1)/(2*n))*y ;
            c=ceil(c);
             if img(r,c,1)>=partextract(1,2)&&img(r,c,1)<=partextract(1,1)&&img(r,c,2)>=partextract(2,2)&&img(r,c,2)<=partextract(2,1)&&img(r,c,3)>=partextract(3,2)&&img(r,c,3)<=partextract(3,1)
                matrx(i,j)=1;
                
             end
        end
    end
end





