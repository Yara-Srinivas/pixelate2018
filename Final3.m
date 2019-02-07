% PS FINAL DAY
% 1.............................................................................................................................................................................


Followpath(img,black,redcircles(1).Centroid,n);
pickup();



Followpath(img,black,blueshapes(1).Centroid,n);
drop();

%Followpath(img,black,redcircles(2).Centroid,n);
%pickup();

%[a,b]=retIndex(img,blueshapes(1).Centroid(1),blueshapes(1).Centroid(2),n);  % arena ke hisaab se change krna pad skta hai



    


%........................


glowLED('b');
 pause(2);

Followpath(img,black,blueshapes(2).Centroid,n);
Arduino('w',.3);
glowLED('g');


blackgate();

gatecentroid=gotogate()
Followpath(img,black,gatecentroid,n);




