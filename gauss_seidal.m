%3x1 - 0.1x2 - 0.2x3 = 7.85
%0.1x1 + 7x2 - 0.3x3 = -19.3
%0.3x1 - 0.2x2 + 10x3 = 71.4
a1=input('coefficient of x1 1st equation:');
b1=input('coefficient of x2 1st equation:');
c1=input('coefficient of x3 1st equation:');
d1=input('right hand side of 1st equation:');
a2=input('coefficient of x1 2nd equation:');
b2=input('coefficient of x2 2nd equation:');
c2=input('coefficient of x3 2nd equation:');
d2=input('right hand side of 2nd equation:');
a3=input('coefficient of x1 3rd equation:');
b3=input('coefficient of x2 3rd equation:');
c3=input('coefficient of x3 3rd equation:');
d3=input('right hand side of 3rd equation:');
x1=0;x2=0;x3=0;
for i=1:1:100
    x11=(d1-(b1*x2)-(c1*x3))/a1;
    x22=(d2-(c2*x3)-(a2*x1))/b2;
    x33=(d3-(a3*x1)-(b3*x2))/c3;
    er1=abs((x11-x1)/x11)*100;
    er2=abs((x22-x2)/x22)*100;
    er3=abs((x33-x3)/x33)*100;
    if(er1<=1&&er2<=1&&er3<=1)
        break;
    else
        x1=x11;
        x2=x22;
        x3=x33;
    end
    step=i;
end
x1=x11
x2=x22
x3=x33
step=i