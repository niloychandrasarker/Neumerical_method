%Secent_method

xl=0;
xu=1;

for i=1:1:100
    y1=exp(-xl)-xl;
    y2=exp(-xu)-xu;
    xr(i)=(((y2*xl)-(y1*xu))/(y2-y1));
    error=abs((xr(i)-xu)/xr(i))*100;
    xl=xu;
    xu=xr(i);
    if(error<=0.1)
        break;
    end
end
error
fprintf('The root is : %f ',xu);