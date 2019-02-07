function [ ] = glowLED(clr)
if clr=='g'
    Arduino('g',3);
end
if  clr=='b'
    Arduino('b',2);
end    
    

end

