function [ img4 ] = And( yellowpart,yellowpart2, greenpart)
img1=threshold(img,yellowpart);
img5=threshold(img,yellowpart2);
img2=threshold(img,greenpart);
img3=imfill(img2,'holes');
img4=img2&img3;

end

