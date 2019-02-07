function [  ] = blackgate()
global img black 
while 1
img=getimg();
blackpart=threshold(img,black);
blacklabel=bwlabel(blackpart);
blackprops=regionprops(blacklabel,'Area');
[m,~]=size(blackprops);
if(m>1)
    disp('GATE FOUND !!!!');
    glowLED('g');
    break;
else
    disp('SEARCHING GATE.......');
    pause(1);
end
end
end

