xi = 3;   % initial guess

for i=1:1:100
    fxi = xi^2 - 4;
    fpxi = 2*xi;
    
    newx = xi - (fxi/fpxi);
    error = abs((newx - xi)/newx)*100;
    
    if (error <= 1.0)
        break;
    end
    
    xi = newx;
end

step = i
root = newx

