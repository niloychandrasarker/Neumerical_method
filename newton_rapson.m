%Newton Rapson Method

xi=0;
for i=1:1:100
    fxi = exp(-xi)-xi;
    fpxi = -exp(-xi)-1;
    newx = xi-(fxi/fpxi);
    error = ((newx-xi)/newx)*100;
    
    if (error<=1.0)
        break;
    end
   xi = newx;
end
step = i
root = newx

fprintf('solution = %f',root)
