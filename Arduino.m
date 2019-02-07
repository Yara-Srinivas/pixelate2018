function [ ] = Arduino(key,val)
%Interface with Arduino
global scr
c1=.005;%right   to be discoveredby running bot later
c2=.005;%left
fprintf('%c',key);

 if (key=='d')              %input is theta in radian
    if val>0
        fwrite(scr,'d');
        pause(c1*val);
    else
        val=-val;
        fwrite(scr,'a');
        pause(c2*val);
    end
 elseif (key=='w')
     fwrite(scr,'w');
      pause(1*val);   
 
 
 elseif (key=='s')
    fwrite(scr,'s');
    pause(val); 
 
 
 elseif (key=='1')        % to close the jaw of pickup mechanism
     fwrite(scr,'1');
     pause(val);          %time to close the jaw    (have to be decided later)
     fwrite(scr,'4');     %then set all grabbing mec. pin to low to stop the motor
 
 
 elseif (key=='2')        %to open jaw for dropping  
     fwrite(scr,'2');
       pause(val);        %time for opening the jaw   (have to be decided later)
     fwrite(scr,'4');     %then set all grabbimg mech. pin to low to stop the motor
 
 
 elseif (key=='3')         %key=3 is not needed in our programm
     fwrite(scr,'3');       
 elseif (key=='4')
    fwrite(scr,'4');
 elseif (key=='g')
    fwrite(scr,'g');
    elseif (key=='b')
    fwrite(scr,'b');
 end
 
 
fwrite(scr,'u');
pause(0.5);                 %pause value will have to be decided
end

