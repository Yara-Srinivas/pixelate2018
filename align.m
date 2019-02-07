function [  ] = align( endpoint )
%to be checked
err=1;
while 1
    
img=getimg();
[p,botvector]=getbot(img);
destvector=endpoint-p;          % this
phi=getangle(destvector,botvector);%this

if (abs(phi)<err)
    break;
end

turn(phi);

end
end

