function [ img4 ] = retand(img,shape, background)
img1=threshold(img,shape);
img2=threshold(img,background);
img3=imfill(img2,'holes');
img4=img1&img3;

end

