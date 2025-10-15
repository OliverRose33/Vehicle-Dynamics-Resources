TM = 600;
CoMX = 1535/2;
AM = 150;
NewX = zeros;
AccuX = 1:100;

for r =  AccuX

    NewX(r) = ((AM*(CoMX+r)) + (TM*CoMX))/(TM+AM);

end

FLD = (1  - (NewX/1532))*100;

plot(AccuX,NewX,"-")
plot(AccuX,FLD,"-")