function [ img] = getimg( )
global vid  rect
img=getsnapshot(vid);
img=imcrop(img,rect);
img=imrotate(img,90);

end

