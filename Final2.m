% TASK ONE......

% EXTRACT RED CIRCLES  

 onlyred=retand(img,red,black);
 onlyred=bwlabel(onlyred);
 redcircles=regionprops(onlyred,'Centroid');         %array containing centroid of red circles
 
 
 % EXTRACT BLUE CIRCLES
  
 
 bluepart=bwlabel(bluepart);
 blueshapes=regionprops(bluepart,'Centroid'); 
 [m,~]=size(blueshapes);
 for i=1:m
     for j=i+1:m
         if(blueshapes(i).Centroid(2)<blueshapes(j).Centroid(2))
             temp=blueshapes(i);
             blueshapes(i)=blueshapes(j);
             blueshapes(j)=temp;
         end
     end
 end
 
                % return  array containing centroid of blue circles
                
                
  
  
  
  
  