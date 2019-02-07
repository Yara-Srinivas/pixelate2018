function [out] = threshold(img,val)
%returns thresholded image using val from extract() function 
var=10;
img=rgb2lab(img);
out=(img(:,:,1)<=val(1,1)+var&img(:,:,1)>=val(1,2)-var&img(:,:,2)<=val(2,1)+var&img(:,:,2)>=val(2,2)-var&img(:,:,3)<=val(3,1)+var&img(:,:,3)>=val(3,2)-var);

out=bwareaopen(out,35);
out=bwmorph(out,'dilate',4);
%out=bwmorph(out,'erode',4);
%out=bwmorph(out,'close',20);

end