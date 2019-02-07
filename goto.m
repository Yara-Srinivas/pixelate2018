function [  ] = goto(endpoint)

step=.5;  %value to passed in Arduino function (to be determined)  
errp=50;
erra=5;
while 1
    img=getimg();

%img=getimg();%function returns image from feed
[p,a]=getbot(img);%function returns position and angle of bot
d=Distance(p,endpoint);
if d<errp     %dista returns distance betwee to points
    break;
end
    
align(endpoint);                %$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
destvector=endpoint-p;          % this
phi=getangle(destvector,a);


%if(abs(phi)>erra)              $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
%turn(phi);                     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
%end                            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$4$$$
stepforward(step);



end

end

